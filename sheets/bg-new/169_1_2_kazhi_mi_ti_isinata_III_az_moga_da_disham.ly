\version "2.24.4"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref169_1
  \tocItem \markup "Кажи ми Ти Истината III"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute {
      \clef treble
      \key g \major
      \time 3/4
      \tempoFunc "Lento" 4 "50"
      \autoBeamOff

      \partial 4
      d'4 | % 2
      b'4.  a'8  g'4 | % 3
      \time 2/4  | % 3
      fis'8.  e'16  e'4 | % 4
      \time 3/4  | % 4
      d'2 r8  d'8 | % 5
      e'8  fis'8  g'8  a'8
      b'8  d''8 ^\fermata \break | % 6
      c''4.  b'8  a'8  g'8 | % 7
      \time 2/4  | % 7
      b'4  a'4 | % 8
      g'2 ( | % 9
      g'4 ) r4 \bar ":|.|:"
      \repeat volta 2 {
        \time 4/4
        g''2  fis''4.  g''16 [
        fis''16 ] \break | % 11
        e''4 (  e''8 ) [  e''8
        fis''8  g''8 ]  fis''8 [  e''8 ] | % 12
        d''8. [  c''16 ]  b'4 (  b'8
        ) [  b'8  c''8  d''8 ] | % 13
        e''2  d''4.  c''16 [  b'16
        ] | % 14
        a'4 ~  a'8 -- [  d'8 --  e'8 --
        fis'8 -- ]  g'8 -- [  a'8 -- ] \break |
      }

      \alternative {
        {
          b'8 ->  b'4.  a'4.\prall g'8 --
        }
        {
          b'8  b'4.  a'4.  g'8
          g'2 r4  d'4 \bar "||"
        }
      }
      \time 3/4   b'4.  a'8  g'4 | \time 2/4
      fis'8.  e'16  e'4 \break \time 3/4  d'2 r8
      d'8  e'8  fis'8  g'8  a'8
      b'8  d''8 ^\fermata  c''4.  b'8
      a'8  g'8 | \time 2/4 b'4  a'4 | \time 3/4
      g'2 s4 \bar "|."
    }
    \addlyrics {
      Ка -- жи ми Ти Ис -- ти -- на -- та,
      ко -- я -- то но -- си сво -- бо --
      да за мо -- я -- та ду -- ша. __ ""

      \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1
      \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1
      \skip1 \skip1 \skip1


      Ка -- жи ми Ти Ис -- ти --
      на -- та, ко -- я -- то но -- си сво
      -- бо -- да за мо -- я -- та ду --
      ша.}

      \header {
        title = \titleFunc #'ref_desc_11 "Кажи ми Ти Истината III" "Kaži mi Ti Istinata III"
      }

      \midi{}

    } % score

    \markup \vspace #4
    \label #'ref171_2
    \tocItem \markup "Аз мога да дишам"

    \include "include/bookpart-paper.ily"
    \score {
      \include "include/score-layout.ily"

      \new Voice \absolute {
        \clef treble
        \key c \major
        \time 2/4
        \tempoFunc "Moderato" 4 "88"
        \autoBeamOff
        \partial 4
        g4 \repeat volta 2 {
          |
          c'4 c'8. d'16 | % 3
          e'4 c'4 | % 4
          g'4 e'8. f'16 | % 5
          \time 3/4  g'2 a'4 |  \break
          \time 2/4  g'4 e'8. f'16 | % 7
          e'4 c'4 | % 8
          d'4 e'8. d'16 | % 9
          \time 3/4
        }
        \alternative {
          {
            c'2 g4 |
          }
          {c'2 \bar "|."  }
        }
      }

      \addlyrics {
        Аз мо -- га
        да ди -- шам ве -- че доб -- ре, аз мо -- га
        да ди -- шам ве -- че доб -- ре. Аз  бре.}

        \header {
          title = \titleFunc #'ref_desc_1 "Аз мога да дишам " "Az moga da dišam"
        }

        \midi{}

      } % score



    } % bookpart

    % Più mosso
    %
