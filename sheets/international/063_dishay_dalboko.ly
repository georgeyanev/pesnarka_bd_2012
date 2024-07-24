\version "2.24.4"

\include "include/globals.ily"

"rightBraces063" = \markup {
  \column {
    % repeat braces
    \translate #'(0 . -0.7 )
    \right-brace #20

    \translate #'(0 . -6.5 )
    \right-brace #38

    \translate #'(0 . -6.0 )
    \right-brace #20

    \translate #'(0 . -6.5 )
    \right-brace #38
  }
  \column {
    % repeat numbers
    \translate #'(0 . -1.2 )
    2

    \translate #'(0 . -7.0 )
    2

    \translate #'(0 . -11.9 )
    2

    \translate #'(0 . -9.0 )
    2
  }
}

\bookpart {
  \label #'ref063
  \tocItem \markup "Дишай дълбоко – Dišaj dălboko"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    <<
      \new Voice = "mainVoice" \absolute  {
        \clef treble
        \key d \major
        \time 2/4
        \tempoFunc "Tempo di marcia" 4 "100"
        \autoBeamOff

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
        \bar ":|.|:" | \break
        a8 d' d' d' | a8 fis' fis' fis' | fis'8. e'16 fis'8 g' |  a'2 \break |
        b'8. b'16 b'8 b' | a'8 d'' a' g' |  fis'8 fis'8 e'8 e'8|  d'2 \bar ":|." \break |
      }

      \new Lyrics \lyricsto "mainVoice" {
        "1. Ди" -- шай дъл -- бо -- ко, с~ве -- се -- ло сър -- це
        и на жи -- во -- та рад -- вай се, де -- те.
        Въз -- ду -- хът е жи -- ва си -- ла ви -- на -- ги за нас.
        Ди -- шай, ди -- шай и пак ди -- шай, ди -- шай да си здрав!
      }
      \new Lyrics \lyricsto "mainVoice" {
        "1. Di" -- šaj dăl -- bo -- ko, s~ve -- se -- lo săr -- ce
        i na ži -- vo -- ta rad -- vaj se, de -- te.
        Văz -- du -- hăt e ži -- va si -- la vi -- na -- gi za nas.
        Di -- šaj, di -- šaj i pak di -- šaj, di -- šaj da si zdrav!
      }

      \new Lyrics \lyricsto "tempVoice1" {
        "(2.,3.)...ди" -- шаш, де -- те,...
      }
      \new Lyrics \lyricsto "tempVoice1" {
        "(2.,3.)...di" -- šaš, de -- te,...
      }

      \new Lyrics \lyricsto "tempVoice2" {
        "(2.)...доб" -- ро, сър -- це.
      }
      \new Lyrics \lyricsto "tempVoice2" {
        "(2.)...dob" -- ro, săr -- ce.
      }
    >>

    \header {
      title = \titleFunc "Дишай дълбоко" "Dišaj dălboko"
    }

    \midi{}

  } % score



  \markup \empty-two

  \markup \abs-fontsize #10 {
    \hspace #1
    \override #`(baseline-skip . ,bgCoupletBaselineSkip)
    \column {

      \line {   2.  Кога дълбоко дишаш, дете,}

      \line {   "   "ще имаш здраво, добро сърце.}

      \line {   "   "Здраво сърце, }

      \line {   "   "добро кръвообращение,}

      \line {   "   "силен стомах, здраво тяло}

      \line {   "   "ще имаш, дете.}

      \vspace #0.5

      \line {   3. Кога дълбоко дишаш, дете,}

      \line {   "   "тялото ти изправено да е.}

      \line {   "   "Права стойка, бодра крачка,}

      \line {   "   "с поглед все напред.}

      \line {   "   "Дишай, дишай и пак дишай, }

      \line {   "   "дишай ти навред. }
    }
    \"rightBraces063"
    \hspace #9
    \override #`(baseline-skip . ,bgCoupletBaselineSkip)
    \column {

      \line {   2.  Koga dălboko dišaš, dete,}

      \line {   "   "šte imaš zdravo, dobro sărce.}

      \line {   "   "Zdravo sărce, }

      \line {   "   "dobro krăvoobraštenie,}

      \line {   "   "silen stomah, zdravo tjalo}

      \line {   "   "šte imaš, dete.}

      \vspace #0.5

      \line {   3. Koga dălboko dišaš, dete,}

      \line {   "   "tjaloto ti izpraveno da e.}

      \line {   "   "Prava stojka, bodra kračka,}

      \line {   "   "s pogled vse napred.}

      \line {   "   "Dišaj, dišaj i pak dišaj, }

      \line {   "   "dišaj ti navred. }
    } %column
    \"rightBraces063"
  } % markup

  \pageBreak

  % include foreign translation(s) of the song
  \include "../../lyrics/de/063_dishay_dalboko_lyrics_de.ly"

} % bookpart
