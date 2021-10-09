\version "2.20.0"

\paper {
  #(set-paper-size "a5")
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
     % ragged-last = ##t % do not spread last line to fill the whole space
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

    \new Voice \relative c' {
      \clef treble
      \key c \major
      \time 2/4
      \tempo \markup {
        % make tempo note smaller
        \concat {
          "Moderato " \normal-text { "(" }
          \teeny \general-align #Y #DOWN \note #"4" #0.8
          \normal-text { " = 84)" }
        }
      }
      \autoBeamOff
      c8. g16 c8 d8 |  e4 c4 |  a4. b8 |   c4 c4 | \break


      e8. c16 e8 f8 |  g4 e4 |  a4. b8 | c4 c4 \fermata \bar "||" \key f \major c,4 f8. g16 | \break


      a4 c,4 | g'4 bes,8. c16 | a4 ( c4 ) | c4 \autoBeamOn f8. ( g16 ) |  a4 f4 |  \break


      \autoBeamOff g4 e8. e16 | f2 \repeat volta 2  {
        f4 \tuplet 3/2  { e8 f8 g8 } | e4 d4 | d4 \autoBeamOn d8. ( e16 ) | \break


        c2 | g'4  \autoBeamOff \tuplet 3/2 { g8 g8 g8 } | c4 bes4 | a4 g8. ( a16 ) | f2  \break
      }

      }

      \addlyrics {Мо  --  га   да 
   по  --  стиг  --  на   що   же  --  ла  --  я.   Във   Жи  --  во 
  --  та   всич  --  ко   се   по  --  сти  --  га.   Ще   но  --  ся 
   Бо  --  жи  --  и  --  те   бла  --  га   във   всич  --  ки   чо 
  --  веш  --  ки   сър  --  ца.   Там,   де  --  то   се   раж  --
   да   Ра  --  дост  --  та,   там,   де  --  то   ца  --  ру  --
   ва   Лю  --  бов  --  та. 
}
      \addlyrics {Mo  --  ga   da 
   po  --  stig  --  na   shto   zhe  --  la  --  ya.   Vav   Zhi  --  vo 
  --  ta   vsich  --  ko   se   po  --  sti  --  ga.   Shte   no  --  sya 
   Bo  --  zhi  --  i  --  te   bla  --  ga   vav   vsich  --  ki   cho 
  --  vesh  --  ki   sar  --  tsa.   Tam,   de  --  to   se   razh  --
   da   Ra  --  dost  --  ta,   tam,   de  --  to   tsa  --  ru  --
   va   Lyu  --  bov  --  ta. }

      \header {
        title = \markup \column \normal-text \fontsize #2.5 {
          \center-align
          \line { Песен на светлия път}
          \vspace #-0.6
          \center-align
          \line \fontsize #-3 { Pesen na svetlia pat }
          \vspace #-0.8
          \center-align
          \line \fontsize #-3 { " " }
        }
      }

      \midi{}

    } % score

    % include foreign translation(s) of the song
    \include "lyrics_de/115_pesen_na_svetlia_pat_lyrics_de.ly"

  } % bookpart
