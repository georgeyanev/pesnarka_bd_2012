\version "2.20.0"

\paper {
  #(set-paper-size "a5")
}

"rightBraces063" = \markup {
  \column {
    % repeat braces
    \translate #'(0 . -0.7 )
    \right-brace #20

    \translate #'(0 . -3.9 )
    \right-brace #42

    \translate #'(0 . -5.6 )
    \right-brace #20

    \translate #'(0 . -5.2 )
    \right-brace #43
  }
  \column {
    % repeat numbers
    \translate #'(0 . -1.2 )
    2

    \translate #'(0 . -4.5 )
    2

    \translate #'(0 . -9.7 )
    2

    \translate #'(0 . -7.2 )
    2
  }
}

\bookpart {
  \paper {
    print-all-headers = ##t
    print-page-number = ##t
    print-first-page-number = ##t

    % put page numbers on the bottom
    oddHeaderMarkup = \markup ""
    evenHeaderMarkup = \markup ""
    oddFooterMarkup = \markup
    \fill-line {
      ""
      \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string
    }
    evenFooterMarkup = \markup
    \fill-line {
      \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string
      ""
    }

    left-margin = 1.5\cm
    right-margin = 1.5\cm
    top-margin = 1.6\cm
    bottom-margin = 1.2\cm
    ragged-bottom = ##t % do not spread the staves to fill the whole vertical space

    % change lyrics and titles font (affects notes also)
    fonts =
    #(make-pango-font-tree
      "Times New Roman"
      "DejaVu Sans"
      "DejaVu Sans Mono"
      (/ (* staff-height pt) 3.6))

    % change distance between staves
    system-system-spacing =
    #'((basic-distance . 12)
       (minimum-distance . 6)
       (padding . 1)
       (stretchability . 12))
  }

  \header {
    tagline = ##f
  }

  \score{
    \layout {
      indent = 0.0\cm % remove first line indentation
      %ragged-last = ##t % do not spread last line to fill the whole space
      \context {
        \Score
        \omit BarNumber %remove bar numbers
      } % context

      \context {
        % change staff size
        \Staff
        fontSize = #+0 % affects notes size only
        \override StaffSymbol #'staff-space = #(magstep -3)
        \override StaffSymbol #'thickness = #0.5
        \override BarLine #'hair-thickness = #1
        %\override StaffSymbol #'ledger-line-thickness = #'(0 . 0)
      }

      \context {
        % adjust space between staff and lyrics and between the two lyric lines
        \Lyrics
        \override VerticalAxisGroup.nonstaff-relatedstaff-spacing = #'((basic-distance . 4.5))
        \override VerticalAxisGroup.nonstaff-nonstaff-spacing = #'((minimum-distance . 2))
      }
    } % layout

    <<
      \new Voice = "mainVoice" \absolute  {
        \clef treble
        \key d \major
        \time 2/4
        \tempo \markup {
          % make tempo note smaller
          \concat {
            "Tempo di marcia " \normal-text { " (" }
            \teeny \general-align #Y #DOWN \note #"4" #0.8
            \normal-text { " = 100)" }
          }
        }
        %\tempo "Tempo di marcia" 4 = 100
        \autoBeamOff

        \repeat volta 1 {
          a'4 b'8. a'16 | fis'4 d' | \noBreak

          <<
            % now temporary add a second voice
            {
              \voiceTwo % this voice is in the same context as parent
              \stemUp a'8. a'16 b'8 b' | a'2 \stemNeutral
            }
            \new Voice = "tempVoice1" {
              % this is a new voice context
              \voiceOne \autoBeamOff
              \stemDown \tiny a'4 b'8. b'16 |
              \once \override NoteColumn.force-hshift = #1.2
              a'2 \stemNeutral
            }
          >>
          \oneVoice
          | \break

          b'4 a'8. g'16 | fis'4 d' | \noBreak

          <<
            % now temporary add a new voice
            {
              \voiceTwo % this voice is in the same context as parent
              \stemUp e'8. e'16 fis'8 e' | d'2 \stemNeutral
            }
            \new Voice = "tempVoice2" {
              % this is a new voice context
              \voiceOne \autoBeamOff
              \stemDown \tiny e'4 fis'8. e'16 |
              \once \override NoteColumn.force-hshift = #1.2
              d'2 \stemNeutral
            }
          >>
          \oneVoice
          | \break
        }
        \repeat volta 1 {
          a8 d' d' d' | a8 fis' fis' fis' | fis'8. e'16 fis'8 g' |  a'2 \break |
          b'8. b'16 b'8 b' | a'8 d'' a' g' |  fis'8 fis'8 e'8 e'8|  d'2 \break |
        }
      }

      \new Lyrics \lyricsto "mainVoice" {
        "1. Ди" -- шай дъл -- бо -- ко, с~ве -- се -- ло сър -- це
        и на жи -- во -- та рад -- вай се, де -- те.
        Въз -- ду -- хът е жи -- ва си -- ла ви -- на -- ги за нас.
        Ди -- шай, ди -- шай и пак ди -- шай, ди -- шай да си здрав!
      }
      \new Lyrics \lyricsto "mainVoice" {
        "1. Di" -- shay dal -- bo -- ko, s~ve -- se -- lo sar -- tse
        i na zhi -- vo -- ta rad -- vay se, de -- te.
        Vaz -- du -- hat e zhi -- va si -- la vi -- na -- gi za nas.
        Di -- shay, di -- shay i pak di -- shay, di -- shay da si zdrav!
      }

      \new Lyrics \lyricsto "tempVoice1" {
        "(2.,3.)...ди" -- шаш, де -- те,...
      }
      \new Lyrics \lyricsto "tempVoice1" {
        "(2.,3.)...di" -- shash, de -- te,...
      }

      \new Lyrics \lyricsto "tempVoice2" {
        "(2.)...доб" -- ро, сър -- це.
      }
      \new Lyrics \lyricsto "tempVoice2" {
        "(2.)...dob" -- ro, sar -- tse.
      }
    >>

    \header {
      title = \markup \column \normal-text \fontsize #2.5 {
        \center-align
        \line { Дишай дълбоко }
        \vspace #-0.6
        \center-align
        \line \fontsize #-3 { Dishay dalboko }
        \vspace #-0.8
        \center-align
        \line \fontsize #-3 { " " }
      }
    }

    \midi{}

  } % score



  \markup \fontsize #+2.5 {
    \hspace #1
    \override #'(baseline-skip . 2.4) % affects space between column lines
    \column {

      \line {   2.  Кога дълбоко дишаш, дете,}

      \line {   "   "ще имаш здраво, добро сърце.}

      \line {   "   "Здраво сърце, }

      \line {   "   "добро кръвообращение,}

      \line {   "   "силен стомах, здраво тяло}

      \line {   "   "ще имаш, дете.}

      \line {   "   "}

      \line {   3. Кога дълбоко дишаш, дете,}

      \line {   "   "тялото ти изправено да е.}

      \line {   "   "Права стойка, бодра крачка,}

      \line {   "   "с поглед все напред.}

      \line {   "   "Дишай, дишай и пак дишай, }

      \line {   "   "дишай ти навред. }
    }
    \"rightBraces063"
    \hspace #3
    \override #'(baseline-skip . 2.4)
    \column {

      \line {   2.  Koga dalboko dishash, dete,}

      \line {   "   "shte imash zdravo, dobro sartse.}

      \line {   "   "Zdravo sartse, }

      \line {   "   "dobro kravoobrashtenie,}

      \line {   "   "silen stomah, zdravo tyalo}

      \line {   "   "shte imash, dete.}

      \line {   "   "}

      \line {   3. Koga dalboko dishash, dete,}


      \line {   "   "tyaloto ti izpraveno da e.}

      \line {   "   "Prava stoyka, bodra krachka,}

      \line {   "   "s pogled vse napred.}

      \line {   "   "Dishay, dishay i pak dishay, }

      \line {   "   "dishay ti navred. }
    } %column
    \"rightBraces063"
  } % markup

  \pageBreak

  % include foreign translation(s) of the song
  \include "lyrics_de/063_dishay_dalboko_lyrics_de.ly"

} % bookpart
