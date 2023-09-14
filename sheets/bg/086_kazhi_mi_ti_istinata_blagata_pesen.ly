\version "2.24.2"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref086_1
  \tocItem \markup "Кажи ми ти истината"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute {
      \clef treble
      \key g \major
      \time 3/4
      \tempoFunc "Andante" 4 "60"

      \partial 8
      \autoBeamOff

      d'8 | \repeat volta 2 {
        b'4. a'8 g'4 | \time 4/4  fis'8. e'16 e'4 d'4. d'8 | \break

        e'8 fis' g' a' b' d'' ( d''4 ) | \time 3/4  c''4. b'8 a' g' | \break
      }

      \alternative {
        { \time 4/4  b'4\tempo "rit.                                  a tempo"  a' g'4. d'8 }
        {
          b'4\tempo "rit." a'4
          \override Staff.BarLine.stencil = ##f %hide bar line
          g'4.^\markup \bold{"                   Fine" } \fermata
          \revert Staff.BarLine.stencil
          \bar "|."
        }
      }
    }

    \addlyrics {
      Ка -- жи ми
      ти Ис -- ти -- на -- та, ко -- я -- то но -- си
      Сво -- бо -- да за мо -- я -- та ду -- ша. Ка --
      та ду -- ша.
    }

    \header {
      title = \titleFunc "Кажи ми ти истината" "Kaži mi ti istinata"
    }

    \midi{}

  } % score

  \markup \italic \dc-one-nobold "attacca „Благата песен“"

  \label #'ref086_2
  \tocItem \markup "Благата песен"

  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute {
      \clef treble
      \key g \major
      \time 3/4
      \tempoFunc "Moderato" 4 "72"

      \partial 4
      \autoBeamOff
      b8. c'16 | d'4 g' fis'8. e'16 | \time 2/4  e'4. e'8 | \time 3/4  e'4 c' e'8. e'16 \break |

      d'2 b'8. b'16 | c''4 b' b'8. a'16 | a'4 g'2 \break |

      \time 4/4  b'8. b'16 c''8. c''16 b'2 | d''4 c'' b' a' | a'2 g' \break |

      \bar ".|:-|"  \time 6/4  fis'4 fis' fis'2 e' | e'4 e' e'2 d' |  \time 4/4  b'4 b' c'' a' | a'2 g' \bar ":|."
    }

    \addlyrics {
      Ти съ -- зна -- вай, ти лю -- би,
      без -- спир -- но сей, гра -- ди и в~Жи -- во --
      та всич -- ко да -- вай. Та -- зи Ис -- ти --
      на, Бо -- га, ти по -- зна -- вай. Ти по -- зна
      -- вай, ти по -- зна -- вай, Бо -- га ти по --
      зна -- вай.
    }

    \header {
      title = \titleFunc "Благата песен" "Blagata pesen"
    }

    \midi{}

  } % score

  \markup \dc-two "D.C. al Fine „Кажи ми ти Истината“" "senza ripetizione"



} % bookpart
