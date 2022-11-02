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
          g'4.^\markup \bold{"                       Fine"}\fermata
          \override Staff.BarLine.stencil = ##t
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
    \addlyrics {
      Ka -- zhi mi
      ti Is -- ti -- na -- ta, ko -- ya -- to no -- si
      Svo -- bo -- da za mo -- ya -- ta du -- sha. Ka --
      ta du -- sha.

    }

    \header {
      title = \titleFunc "Кажи ми ти истината" "Kazhi mi ti istinata"
    }

    \midi{}

  } % score
  
  \markup \italic \dc-one-nobold "attacca „Благата песен/Blagata pesen“"
  


  % include foreign translation(s) of the song
  \include "lyrics_de/086_1_kazhi_mi_ti_istinata_lyrics_de.ly"

} % bookpart
