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

        \header {
          title = \titleFunc "Да бих Тe слушал " "Da bih Te slušal"
        }

        \midi{}

      } % score




      % include foreign translation(s) of the song
      
      \markup \empty-two


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

            \header {
              title = \titleFunc "Слушам" "Slušam"
            }

            \midi{}

          } % score

          \markup \dc-one "D.C."
          \pageBreak

          % include foreign translation(s) of the song
          
          \markup \empty-two

          \label #'ref175
          \tocItem \markup "Писмото – Pismoto "
          \include "include/bookpart-paper.ily"
          \score {
            \include "include/score-layout.ily"

            \new Voice \absolute {
              \clef treble
              \key c \major
              \time 4/4
              \tempoFunc "Andante" 4 "60"
              \autoBeamOff
              \partial 8
              e'8 \repeat volta 2 {
                | % 2
                g'4.  f'8  e'8  d'8  e'8
                f'8 | % 3
                a'2  g'4  d'8  e'8 \break| % 4
                f'2  e'4 r8  e'8  | % 5
                \time 5/4  | % 5
                g'4.  f'8  e'8  d'8  e'4
                f'8  a'8 | % 6
                \time 4/4  \break| % 6
                c''4 (  b'8 [  a'8 ])   g'4
                ^\fermata  a'4  | % 7
                g'4  fis'4  a'4  c''8
                b'8 | % 8
                \time 3/4  | % 8
                a'8 ( [  b'8 ])  g'4.  e'8  \break| % 9
                \time 6/4  | % 9
                f'4  g'4  a'4.  b'8  c''4
                d''4 |
                \time 4/4  |
                e''2  d''4.  c''8 \break | % 11
                \time 3/4  | % 11
                b'8  a'8  b'8  e''4. |
              }

              \alternative {
                {
                  % 12
                  \time 4/4  % 12
                  d''2  c''4.  e'8 |
                }
                {
                  \time 4/4 d''2  c''4. \bar "|."
                }
              }
            }

            \addlyrics {
              Ко -- га -- то Лю -- бов -- та ца --
              ру -- ва, смут не ста -- ва. Ко --
              га -- то Мъ -- дрост -- та у -- прав
              -- ля -- ва, ре -- дът не се
              на -- ру -- ша -- ва. Ко -- га --
              то Ис -- ти -- на -- та гре -- е,
              пло -- дът цъф -- ти и зре -- е.
              Ко -- зре -- е.}

                \header {
                  title = \titleFunc "Писмото" "Pismoto"
                }

                \midi{}

              } % score
              \markup \empty-one


              % include foreign translation(s) of the song
              

            } % bookpart


