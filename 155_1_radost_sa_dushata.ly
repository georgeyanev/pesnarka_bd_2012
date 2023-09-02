\version "2.24.1"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref155_1
  \tocItem \markup "Радост, радост за душата – Radost, radost za dušata"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute {
      \clef treble
      \key d \major
      \time 3/4
      \tempoFunc "Adagio" 4 "54"
      \autoBeamOff
      d''4.  cis''8  e''16  d''16
      cis''16  b'16 | % 2
      a'4 ( ~  a'8 [ \once \omit TupletBracket
      \times 2/3  {
        g'16  a'16  b'16 ) ]
      }
      a'8. ( [  g'16 ) ] \break | % 3

      \times 2/3  {
        fis'8 ( [  d'8 ) ] e'8
      }

      \times 2/3  {
        d'8   e'8  fis'8
      }
      e'4 ^\fermata \noBreak | % 4

      \times 2/3  {
        d'8 ([  fis'8 ]) a'8
      }
      b'16  a'16  d''16  cis''16
      e''16  d''16  cis''16  d''16
      \break | % 5
      \time 2/4
      b'4  a'8. [(  g'16 )]
      \times 2/3  {
        fis'8 ( [  e'8 ) ] fis'8
      }
      % 6
      g'8  fis'8  e'4  d'4 \time 3/4 \break \repeat
      volta 2 {
        | % 7
        d'4  d'4.  d'8 | % 8
        d'4  d'2 | % 9
        e'4  e'4.  g'8 |
        fis'4  fis'2 \break | % 11
        a'4  a'4.  a'8 | % 12
        b'4  b'2 | % 13
        cis''4  cis''4.  cis''8 | % 14
        d''4  d''2
      }

    }

    \addlyrics {
      Ра -- дост, "Ра-" -- дост за ду -- ша
      --  та __  но -- си
      Чис -- то -- та -- та. Ра -- дост,
      "Ра-" -- дост, "Ра-" -- дост, "Ра-" -- дост
      за ду -- ша -- та __  но -- си
      Чис -- то -- та -- та. Чис -- ти бъ --
      де -- те ка -- то пче -- ли -- те.
      Чис -- ти бъ -- де -- те ка -- то
      цве -- тя -- та.
    }

    \addlyrics {
      Ra -- dost, "Ra-" -- dost za du -- ša
      --  ta __  no -- si
      Čis -- to -- ta -- ta. Ra -- dost,
      "Ra-" -- dost, "Ra-" -- dost, "Ra-" -- dost
      za du -- ša -- ta __  no -- si
      Čis -- to -- ta -- ta. Čis -- ti bă --
      de -- te ka -- to pče -- li -- te.
      Čis -- ti bă -- de -- te ka -- to
      cve -- tja -- ta.
    }
    \header {
      title = \titleFunc "Радост, радост за душата" "Radost, radost za dušata"
    }

    \midi{}

  } % score



  % include foreign translation(s) of the song
  \include "lyrics_de/155_radost_sa_dushata_lyrics_de.ly"

} % bookpart
