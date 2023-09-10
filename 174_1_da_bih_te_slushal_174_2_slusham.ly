\version "2.24.2"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref174_1
  \tocItem \markup "Да бих Тe слушал – Da bih Te slušal"
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
        slu -- šal, da bih Te slu -- šal! A -- ko bih
        Te slu -- šal, Do -- bro -- to šte -- še v~men da
        se pro -- ja -- vi. iz -- ja -- vi.}

        \header {
          title = \titleFunc "Да бих Тe слушал " "Da bih Te slušal"
        }

        \midi{}

      } % score




      % include foreign translation(s) of the song
      \include "lyrics_de/174_1_da_bih_te_slushal_lyrics_de.ly"
      \markup \empty-one


      \label #'ref174_2
      \tocItem \markup "Слушам – Slušam"
      \include "include/bookpart-paper.ily"
      \score {
        \include "include/score-layout.ily"
        \new Voice \absolute {
          \clef treble
          \key e \minor
          \time 5/4
          \tempoFunc "Moderato" 4 "80"
          \autoBeamOff
          \partial 4
          e''16 ( [  d''16  c''16  b'16 ] | % 2
          a'4 ) a'4 a'4 a'4  d''16 (
          [  c''16  b'16  a'16 ] | % 3
          g'4 ) g'4 g'4 g'4 c''16 ( [
          b'16 a'16 g'16 ] \break | % 4
          fis'4 ) fis'4 fis'4 fis'4 e'8
          ( [ fis'8 ] | % 5
          g'8 [ fis'8 ] e'8 [ dis'8 ] \stemUp
          e'8 [ fis'8 ])  e'4 ^\fermata  \bar "|."
        }

        \addlyrics {
          Слу --    шам -- шам --
          шам, слу --    шам --
          шам -- шам, слу --
          шам -- шам -- шам, слу --
          шам.}
          \addlyrics {
            Slu --    šam -- šam --
            šam, slu --    šam --
            šam -- šam, slu --
            šam -- šam -- šam, slu --
            šam.}


            \header {
              title = \titleFunc "Слушам" "Slušam"
            }

            \midi{}

          } % score

          \markup \dc-one "D.C."

          % include foreign translation(s) of the song
          \include "lyrics_de/174_2_sluscham_lyrics_de.ly"

        } % bookpart


