\version "2.22.1"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute {
      \clef treble
      \key bes \major
      \time 3/4
      \tempoFunc "Andante" 4 "66"
      \autoBeamOff
      \partial 4
      bes8  d'8 |
      \repeat volta 2 {
        f'4  % 2
        f'2 | % 3
        \time 2/4  % 3
        g'4.  f'8 | \time 3/4 es'8 ( [  f'8 ) ] % 4
        d'2 | % 5
        \time 3/4  | \break % 5
        bes'4.  a'8 bes'8  g'8
        | % 6
        \time 2/4  | % 6
        f'2 | % 7
        \time 3/4  | % 7
        c''4. bes'8  a'8  g'8 |  \break % 8
        a'2 f'8  f'8 |  \time 2/4 a'4.  g'8 |
      }
      \alternative {
        {
          \grace {  f'16 ( [  g'16 ] }  f'4. ) (
          es'8 ) | % 11
          \time 3/4 d'2  bes8 d'8
        }
        { \time 2/4 f'4 (es') | d'2 | }
      }
    }

    \addlyrics {
      Вя -- ра свет -- ла, вя -- ра сил
      -- на! Тя кре -- пи Ду -- ха, тя
      кре -- пи Ду -- ха, що Жи -- во --
      та раж -- да. Вя -- ра раж -- да.}
      \addlyrics {
        Vya -- ra svet -- la, vya -- ra sil
        -- na! Tya kre -- pi Du -- ha, tya
        kre -- pi Du -- ha, shto Zhi -- vo --
        ta razh -- da. Vya -- ra razh -- da.}

        \header {
          title = \titleFunc "Вяра светла" "Vyara svetla"
        }

        \midi{}

      } % score



      % include foreign translation(s) of the song
      \include "lyrics_de/170_1_vyara_svetla_lyrics_de.ly"

    } % bookpart

    % Più mosso
    %
