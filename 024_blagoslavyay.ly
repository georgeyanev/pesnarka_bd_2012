\version "2.24.1"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref024
  \tocItem \markup "Благославяй – Blagoslavjaj"
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
      \autoBeamOff

      d'8 fis'8 | a'4 d''4 | a'4 d'8 e'8 | fis'4 e'8 e'8 \break |
      \time 3/4  d'2 d''8 cis''8 | b'4 a'4 fis'8 g'8 | \time 2/4  a'4 b'8 a'8 | \time 3/4  a'2 e''8 d''8 \break |
      cis''4 b'4 a'8 b'8| \time 2/4 a'4 b'8 a'8 | \time 3/4 a'2 b'8 a'8 |\break
      g'4 g'4 fis'8 g'8 | \time 2/4  a'4 b'8 a'8 | \time 3/4  a'2
      a'8 a'8^\markup {
        \center-align \concat {
          \dynamic mf
          \normal-text { \bold { \italic " (" } }
          \dynamic p
          \normal-text { \bold { \italic "  " } }
          \dynamic pp
          \normal-text { \bold { \italic ")" } }
        }
      } \break
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
      Бла -- го --
      сла -- вяй, ду -- ше мо -- я, Гос -- по -- да!
      Не за -- бра -- вяй вси -- те Му ми -- ло --
      сти, не за -- бра -- вяй вси -- те Му бла -- го
      -- сти, не за -- бра -- вяй вси -- те Му до --
      бри -- ни! Не за -- бра -- вяй ми -- лост -- та
      Му, не за -- бра -- вяй бла -- гост -- та Му, не
      за -- бра -- вяй О -- бич -- та Му, не за -- бра
      -- вяй Лю -- бов -- та Му! Не за -- та Му!
    }

    \addlyrics {
      Bla -- go --
      sla -- vjaj, du -- še mo -- ja, Gos -- po -- da!
      Ne za -- bra -- vjaj vsi -- te Mu mi -- lo --
      sti, ne za -- bra -- vjaj vsi -- te Mu bla -- go
      -- sti, ne za -- bra -- vjaj vsi -- te Mu do --
      bri -- ni! Ne za -- bra -- vjaj mi -- lost -- ta
      Mu, ne za -- bra -- vjaj bla -- gost -- ta Mu, ne
      za -- bra -- vjaj O -- bič -- ta Mu, ne za -- bra
      -- vjaj Lju -- bov -- ta Mu! Ne za -- ta Mu!
    }


    \header {
      title = \titleFunc "Благославяй" "Blagoslavjaj"
    }

    \midi{}

  } % score

  \pageBreak


  % include foreign translation(s) of the song
  \include "lyrics_de/024_blagoslavyay_lyrics_de.ly"

} % bookpart
