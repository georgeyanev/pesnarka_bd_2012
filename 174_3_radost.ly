\version "2.22.1"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute {
      \clef treble
      \key g \major
      \time 2/4
      \tempoFunc "Andante" 4 "60"
      \autoBeamOff
      b'4 e'4 | % 2
      b'4 e'4 | % 3
      a'4. ( b'8 ) | % 4
      g'4  e'8. fis'16 | % 5
      g'8 ( [fis'8] ) e'8 ( [dis'8] ) | % 6
      e'2 | % 7
      c''4  b'8. ais'16 \break | % 8
      b'4. e'8 | % 9
      a'4  g'8. [( fis'16 )] |
      e'2 | % 11
      c''4  b'8. ais'16 | % 12
      b'4. e'8 | % 13
      fis'8 ([ a'8 ]) g'8 ( [fis'8] ) | % 14
      e'2 \bar "|."
    }

    \addlyrics {
      Ра -- дост,
      Ра -- дост, Ра -- дост на Жи -- во -- та ми, ти
      ве -- се -- лиш сър -- це -- то ми, ти ве -- се
      -- лиш сър -- це -- то ми.}
      \addlyrics {
        Ra -- dost,
        Ra -- dost, Ra -- dost na Zhi -- vo -- ta mi, ti
        ve -- se -- lish sar -- tse -- to mi, ti ve -- se
        -- lish sar -- tse -- to mi.}

        \header {
          title = \titleFunc "Радост" "Radost"
        }

        \midi{}

      } % score


      
      % include foreign translation(s) of the song
      \include "lyrics_de/174_radost_lyrics_de.ly"

    } % bookpart

    % Più mosso
    %

