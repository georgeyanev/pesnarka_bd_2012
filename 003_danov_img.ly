
\version "2.24.0"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \include "include/bookpart-paper.ily"

    \markup {    \vspace #3.8
      \general-align #Y #DOWN {
        \epsfile #X #67 #"./img/danov.eps"
      }
    }

    \markup \fontsize  #+5  { \bold {  \hspace #17  \vspace #1.5 Petar Danov  – Beinsa Duno} }
    \markup \fontsize  #+2.5 { \bold{  \hspace #27  \vspace #0.8 1986  –  1944 } }

    % include foreign translation(s) of the song
    %\include "lyrics_de/000_empty_template_lyrics_de.ly"

  } % bookpart

  % Più mosso
  %