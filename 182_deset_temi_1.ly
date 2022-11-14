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
      \tempoFunc "Moderato" 4 "88"
      \autoBeamOff
      \set Staff.instrumentName = \markup \bold \fontsize #+5 {"1  "}

      \repeat volta 2 {
        d''16 [  d''16  d''8 ]  d''16
        [  d''16  d''8 ] | % 2
        g''8 [  d''8 ]  g''8 [  d''8
        ] | % 3
        b'16 [  b'16  b'8 ]  b'16 [
        b'16  b'8 ] | % 4
        d''8 [  a'8 ]  a'8 [  b'8 ] | % 5
        g'2
      }
      \break \repeat volta 2 {
        | % 6
        d'16 [  d'16  d'8 ]  d'16 [
        d'16  d'8 ] | % 7
        g'8 [  d'8 ]  g'8 [  d'8 ] | % 8
        b16 [  b16  b8 ]  b16 [  b16
        b8 ] | % 9
        d'8 [  a8 ]  d'8 [  a8 ] |
        g2
      }
      \break | % 11

      \once \override Score.TimeSignature.break-visibility = ##(#f #f #t)      
      \once \override Score.KeyCancellation.break-visibility = ##(#f #f #f)      
      \once \set Staff.explicitKeySignatureVisibility = ##(#f #f #t)      
      \once \set Staff.shortInstrumentName = \markup \bold \fontsize #+5 {"2  "}
      \key c \minor
      \time 7/16
      
      \tempoFunc "Allegro" 8 "152"
      \autoBeamOff
      g'8 [  c''8 ]  c''8 [  c''16 ] | % 12
      c''8 [  c''8 ]  c''8 [  bes'16
      ] | % 13
      bes'8 [  c''8 ]  as'8 [  g'16 ] | % 14
      as'4 (  as'8. ) | % 15
      f'8 [  g'8 ]  as'8 [  as'16 ] | % 16
      as'8 [  as'8 ]  as'8 [  g'16 ] \break | % 17
      as'8 [  bes'8 ]  g'8 [  f'16 ] | % 18
      g'4 (  g'8. ) \repeat volta 2 {
        | % 19
        c'8 [  d'8 ]  es'8 [  es'16 ] |

        es'8 [  es'8 ]  es'8 [  d'16 ] | % 21
        d'8 [  d'8 ]  d'8 [  c'16 ] | % 22
        c'4 (  c'8. )
        \break | % 23
      }





    }

    \addlyrics {}
    \addlyrics {}

    \header {
      title = \titleFunc "Десет теми" "Deset temi"
    }

    \midi{}

  } % score



  % include foreign translation(s) of the song
  %\include "lyrics_de/000_empty_template_lyrics_de.ly"

} % bookpart

% Più mosso
%
