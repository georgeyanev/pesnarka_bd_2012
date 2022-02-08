\version "2.20.0"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"


    \new Voice \relative c' {

      \clef treble
      \key c \minor
      \time 4/4
      \tempoFunc "Andante" "4" "63"
      \autoBeamOff

      \partial 4

      c8.  c16 | % 2
      es4 (  d4 )  c4 (  b4 ) | % 3
      \time 3/4  | % 3
      c2  c8.  c16 | % 4
      d4  g,2 \break | % 5
      \time 4/4  | % 5
      g'8  f8  es8  d8  c8.
      c16  b8.  b16 | % 6
      \time 3/4  | % 6
      c2  g'8.  g16 | % 7
      \time 4/4  | % 7
      c4.  c8  bes4  c8 ( [
      bes8 ) ] \break | % 8
      as4  g8.  g16  g2 | % 9
      g4.  g8  es4.  d8 |
      c4  b4  c4 ^\fermata  es8
      f8 \break | % 11
      g4.  g8  c4  d4 | % 12
      es2  d2 | % 13
      \time 2/4  | % 13
      a4  b4 | % 14
      c2 ~ | % 15
      c4 \bar "|."
    }

    \addlyrics {
      Във пу -- сти -- ня -- та на
      жи -- во -- та, где на -- си -- ли --
      е -- то се ши -- ри, там стра --
      да -- ни -- е и мъ -- ка ца --
      ри. Вся -- кой, с‿кой -- то -- те
      дру -- жат, мъ -- че -- ник, ге --
      рой, све -- ти -- я го зо -- ват.}
      \addlyrics {
        Vav pu -- sti -- nya -- ta na
        zhi -- vo -- ta, gde na -- si -- li --
        e -- to se shi -- ri, tam stra --
        da -- ni -- e i ma -- ka tsa --
        ri. Vsya -- koy, s‿koy -- to -- te
        dru -- zhat, ma -- che -- nik, ge --
        roy, sve -- ti -- ya go zo -- vat.}

        \header {
          title = \titleFunc "В пустинята на живота" "V pustinyata na zhivota"
        }

        \midi{}

      } % score

      %\markup \dc-one "D.C. al Fine"
      \markup \empty-two

      % include foreign translation(s) of the song

      %\pageBreak
      \include "lyrics_de/110_2_v_pustinyata_zhivota_lyrics_de.ly"

    } % bookpart
