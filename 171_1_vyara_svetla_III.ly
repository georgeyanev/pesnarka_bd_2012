\version "2.24.0"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute {
      \clef treble
      \key d \major
      \time 3/4
      \tempoFunc "Moderato" 4 "72"
      \autoBeamOff
      \partial 4
      d'8  fis'8 | \repeat volta 2 {
        a'4  % 2
        a'2 | % 3
        \time 2/4 b'4.  a'8 | \time 3/4 g'8 ( [  a'8 ])  % 4
        fis'2 | % 5
        \time 2/4 a'4 b'4  | % 6
        a'4  g'4 \break | % 7
        a'2 | % 8
        fis'4  e'4 | % 9
        a'4  g'4 |
        g'4 (  a'4 ) \bar "!" |
      }  % 11

      \alternative {
        {\time 3/4 fis'2 d'8 fis'8}
        { fis'2}
      }
      \bar "|."
    }

    \addlyrics {
      Вя -- ра свет --   ла,
      вя -- ра сил --   на! Тя кре -- пи Ду -- ха, що Жи -- вот -- та раж -- да. Вя -- ра да.}
      \addlyrics {
        Vya -- ra svet -- la, Vya -- ra sil -- na! Tja kre -- pi Du -- ha, sto, Zhi -- vo -- ta razh -- da. Vja -- ra da.}

        \header {
          title = \titleFunc "Вяра светла III" "Vyara svetla III"
        }

        \midi{}

      } % score

    

      % include foreign translation(s) of the song
      \include "lyrics_de/171_1_vyara_svetla_III.ly"

    } % bookpart

