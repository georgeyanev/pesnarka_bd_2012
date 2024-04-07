\version "2.24.3"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref024
  \tocItem \markup "Благославяй"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute {
      \clef treble
      \key d \major
      \time 2/4
      \tempoFunc "Andante" 4 "68"
      \autoBeamOff
      \partial 4

      d'8 fis'8 | a'4 d''4 | a'4 d'8 e'8 | fis'4 e'8 e'8 \break |
      \time 3/4  d'2 d''8 cis''8 | b'4 a'4 fis'8 g'8 | \time 2/4  a'4 b'8 a'8 | \time 3/4  a'2 e''8 d''8 \break |
      cis''4 b'4 a'8 b'8| \time 2/4 a'4 b'8 a'8 | \time 3/4 a'2 b'8 a'8 |\break
      g'4 g'4 fis'8 g'8 | \time 2/4  a'4 b'8 a'8 | \time 3/4  a'2
      a'8^\mf a'8  \break
      \repeat volta 3 {
        d''4 a'4 b'8 a'8 |  d''4 a'4 e''8 d''8 |  cis''4 b'4 a'8 b'8 \break |
        a'4 a'4 b'8 a'8 | g'4 g'4 fis'8 g'8 | a'4 a'4 d'8 e'8 \time 2/4 \break |
        fis'4 fis'4 | a'4  e'4 |
      } \alternative {
        {
          e'2  | \time 3/4 d'2 a'8  a'8^\markup {
            \center-align \concat {
              \dynamic p
              \normal-text { \bold { \italic " (" } }
              \dynamic pp
              \normal-text { \bold { \italic ")" } }
            }
          } |
        }
        { \time 2/4 e'2 | \time 3/4  d'2 \bar "|." }
      }
    }

    \addlyrics {
      Бла -- гос --
      ла -- вяй, ду -- ше мо -- я, Гос -- по -- да!
      Не заб -- ра -- вяй вси -- те Му ми -- ло --
      сти, не заб -- ра -- вяй вси -- те Му бла -- го
      -- сти, не заб -- ра -- вяй вси -- те Му доб --
      ри -- ни! Не заб -- ра -- вяй ми -- лост -- та
      Му, не заб -- ра -- вяй бла -- гост -- та Му, не
      заб -- ра -- вяй о -- бич -- та Му, не заб -- ра
      -- вяй Лю -- бов -- та Му! Не "заб -" та Му!
    }

    \header {
      title = \titleFunc #'ref_desc_1 "Благославяй" "Blagoslavjaj"
    }

    \midi{}

  } % score

} % bookpart
