\version "2.24.2"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref188
  \tocItem \markup "Мелодия – Когато се денят... – Melodija – Kogato se denjat..."
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \relative c' {
      \clef treble
      \key d \major
      \time 4/4
      \tempoFunc "Andante" 4 "66"
      \autoBeamOff
      \partial 4
      a4 | d4. cis8 d8 e8 fis8 g8 | a2 fis4 d4 | \break

      b'4. a8 g fis a gis |g2. g4 | fis4. e8 dis e fis g | \break

      b2 a4 a |d4. e,8 fis8 g8 e8. d16 | d2 r8 a8 b8 cis8 | \break

      d4. cis8 d e fis g | a2 fis4 d4 | \break

      b4. e8 g b e8. d16 | cis2.\fermata a4 | fis'4. d8 a fis b a \break |

      g2 e4 a,4 | b4. a8 gis a e'8 fis | d2 . \bar "|." \break
    }


    \addlyrics {
      Ко -- га -- то се де -- нят про -- буж -- да,
      за -- пя -- ват слън -- че -- ви лъ -- чи.
      От из -- во -- ри -- те на жи -- во -- та
      о -- бил -- но ра -- дост -- та стру -- и.
      И в~то -- я час, тър -- жест -- вен час на ут -- ро -- то,
      ця -- ла -- та При -- ро -- да пей.
      Към вър -- хо -- ве -- те о -- за -- ре -- ни
      по -- ли -- тат на -- ши -- те ду -- ши.}

        \header {
          title = \titleFunc "Мелодия – Когато се денят пробужда " "Melodija – Kogato se denjat probužda"
        }

        \midi{}

      } % score

      \markup \fontsize #bgCoupletFontSize {
        \hspace #2
        \override #`(baseline-skip . ,bgCoupletBaselineSkip)
        \column {
          \line {   2. Когато се денят пробужда,}
          \line {   "   " долавяме небесен зов – }
          \line {   "   " вълнува ни и вдъхновява}
          \line {   "   " за светъл и красив живот.}
          \line {   "       " Ще дойде той след бурите, }
          \line {   "       " борбите.}
          \line {   "       " Земята ще залее мир.}
          \line {   "       " Могъща сила е Доброто,}
          \line {   "       " ний вярваме – ще победи.}
        }

      } % markup

      % include foreign translation(s) of the song
      

    } % bookpart

    % Più mosso
    %
