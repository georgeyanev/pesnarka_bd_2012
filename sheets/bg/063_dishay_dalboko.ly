\version "2.24.2"

\include "include/globals.ily"

"rightBraces063" = \markup {
  \column {
    % repeat braces
    \translate #'(0 . -0.7 )
    \right-brace #20

    \translate #'(0 . -3.9 )
    \right-brace #42

    \translate #'(0 . -5.4 )
    \right-brace #20

    \translate #'(0 . -5.0 )
    \right-brace #43
  }
  \column {
    % repeat numbers
    \translate #'(0 . -1.2 )
    2

    \translate #'(0 . -4.5 )
    2

    \translate #'(0 . -9.5 )
    2

    \translate #'(0 . -7.0 )
    2
  }
}

\bookpart {
  \label #'ref063
  \tocItem \markup "Дишай дълбоко"
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
      \new Lyrics \lyricsto "tempVoice1" {
        "(2.,3.)...ди" -- шаш, де -- те,...
      }

      \new Lyrics \lyricsto "tempVoice2" {
        "(2.)...доб" -- ро, сър -- це.
      }
    >>

    \header {
      title = \titleFunc "Дишай дълбоко" "Dišaj dălboko"
    }

    \midi{}

  } % score



  \markup \fontsize #bgCoupletFontSize {
    \hspace #15
    \override #`(baseline-skip . ,bgCoupletBaselineSkip)
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
  } % markup
  

} % bookpart
