\version "2.24.2"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \relative c' {
      \clef treble
      \key c \major
      \time 3/4
      \tempoFunc "Moderato" 4 "69"
      \autoBeamOff
      c8 e8 g4. e8 | d8 e8 g2|  d8  e f4. d8 | e2. |c8 e8 g4 c |  \break

      b8 a8 g2 | d8 e8 f4. d8 | c2. | \bar ".|:-|" c'8 g8 c4. d8  | e8 d8 a2 |  \break

      b8 d8 c4. a8 | g2. |  c,8 e8 g4. e8 |  \break

      a8 g8 d2 | f8 g,8 e'4. d8 | c2. \bar ":|."
    }

    \addlyrics {Зна -- е -- те ли то -- зи край, где -- то съм ро -- ден? Зна -- е -- те ли то -- зи кът, 

    Из -- гре -- ва без -- цен? Тоз Бо -- жест -- вен о -- а -- зис с~рай -- ски пло -- до -- ве, из -- во -- ра

    ду -- хо -- вен чист с~бла -- гост, що зо -- ве.
    
    
    }

    \header {
      title = \titleFunc "Изгревът свещен" "Zaglavie"
    }

    \midi{}

  } % score

  \markup \fontsize #bgCoupletFontSize {
    \hspace #1
    \override #`(baseline-skip . ,bgCoupletBaselineSkip)
    \column {
      \line { 2. Текст на кирилица }
      \line {   "   " Текст на кирилица }
    }

  } % markup

  % include foreign translation(s) of the song


} % bookpart

% Più mosso
%
