\version "2.24.0"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref174_1
  \tocItem \markup "Да бих Тe слушал – Da bih Te slushal"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute {
      \clef treble
      \key bes \minor
      \time 2/4
      \tempoFunc "Adagio" 4 "54"
      \autoBeamOff
      \repeat volta 2 {
        f'4 bes'8. as'16 | % 2
        ges'4 es'4 | % 3
        f'4 as'8. ges'16 | % 4
        f'4 c'4 \break | % 5
        es'8. es'16 f'8. es'16 | % 6
        des'4 bes4 | % 7
        c'4 es'8. des'16 | % 8
        c'4 bes4 \break | % 9
        des'4 c'8. c'16 |
      }
      \alternative {
        {
          bes4 a4 | % 11
          bes2
        }
        {
          bes4 a4 | % 11
          bes2 \bar "|."
        }
      }
    }

    \addlyrics {
      Да бих Те
      слу -- шал, да бих Те слу -- шал! А -- ко бих
      Те слу -- шал, До -- бро -- то ще -- ше в~мен да
      се про -- я -- ви. из -- я -- ви.}
      \addlyrics {
        Da bih Te
        slu -- shal, da bih Te slu -- shal! A -- ko bih
        Te slu -- shal, Do -- bro -- to shte -- she v~men da
        se pro -- ya -- vi. iz -- ya -- vi.}

        \header {
          title = \titleFunc "Да бих Тe слушал " "Da bih Te slushal"
        }

        \midi{}

      } % score

 
      

      % include foreign translation(s) of the song
      \include "lyrics_de/174_1_da_bih_te_slushal_lyrics_de.ly"

    } % bookpart

  
