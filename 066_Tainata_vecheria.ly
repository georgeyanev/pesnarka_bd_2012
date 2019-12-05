\version "2.18.2"

\paper {
  print-all-headers = ##t
  print-page-number = ##f
  left-margin = 2\cm
  right-margin = 2\cm
  ragged-bottom = ##t % do not spread the staves to fill the whole vertical space
}

\header {
  tagline = ##f
}

\bookpart {
  \score{
    \layout {
      indent = 0.0\cm % remove first line indentation
      ragged-last = ##t % do not spread last line to fill the whole space
      \context {
        \Score
        \omit BarNumber %remove bar numbers
      } % context
    } % layout

    \new Voice \absolute {
      \clef treble
      \key a \minor
      \time 2/4 \tempo "Andante" 4 = 60

      a8 ( e'8 ) d'8 c'8 \noBeam | d'4 e'4 | a8 ( e'8 )  d'8 c'8 \noBeam | d'8 e'8 \noBeam e'8 e' 8 \noBeam \break|

      \autoBeamOff c'8 g'8 g'8 g'8 |\autoBeamOn g'8 (a'8) \autoBeamOff g'8 f'8 | a'2 \repeat volta 2 {
        \autoBeamOn c'8 ( d'8 ) \autoBeamOff e'8 a'8 |\break

        b'4 a'4 | \autoBeamOn c'8 ( d'8 ) \autoBeamOff e'8 a'8 | \autoBeamOn a'8 ( c''8 ) \autoBeamOff b'8 g'8 | \autoBeamOn a'2 |
      } \alternative {
        {
          c'8 ( d' e' ) \noBeam a'  | \break

          b'8 ( d''8 ) c''8 b'8 | a'2 |
        } {  c'8 ( d'8 e'8 ) a8 |b8 ( d'8 ) c'8 b8 | a2| \break }
      }

    }

    \addlyrics {
      Зун ме -- ри ма -- ну зун ме -- ри -- ма -- ну -- да -- на,

      а -- са -- ви -- та ви -- та нан -- да. Зун ме -- ри ма -- ну, Зун ме -- ри ма -- нун -- да -- на

      а -- са -- ви -- та  нан -- да.  а -- са -- ви -- та  нан -- да.

    }

    \addlyrics {
      Zun me -- ri ma -- nu zun me -- ri -- ma -- nu -- da -- na,

      a -- sa -- vi -- ta vi -- ta nan -- da. Zun me -- ri ma -- nu, Zun me -- ri ma -- nun -- da -- na

      a -- sa -- vi -- ta  nan -- da.  a -- sa -- vi -- ta  nan -- da.

    }

    % lyrics here

    \header {
      title = "Тайната вечеря / Tainata vecherja"
    }

  } % score

  \markup \halign #-10 {
    \column  {
      \line  \halign #-5 {
        \bold  { "D. C." }
      }
      \line {
        \bold { con ripetizione }
      }
    }
  }
} % bookpart
