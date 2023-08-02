\version "2.24.1"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref175_2
  \tocItem \markup "Ме-хейн – Me-hejn "
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute {
      \clef treble
      \key g \minor
      \time 3/4
      \tempoFunc "Lento" 4 "50"
      \autoBeamOff


      \times 2/3  {
        g8  a8 bes8
      }
      a2 | % 2

      \times 2/3  {
        a8  bes8 c'8
      }
      bes2 | % 3

      \times 2/3  {
        bes8  c'8 d'8
      }
      es'2 \break | % 4

      \times 2/3  {
        d'8  e'8 fis'8
      }
      g'2 | % 5
      a'4
      \times 2/3  {
        bes'8  a'8 g'8
      }

      \times 2/3  {
        \slurDashed fis'8 ( [g'8])  a'8
      }
      | % 6
      g'4 ^\fermata a'2 \break | % 7

      \times 2/3  {
        bes'8  a'8 g'8
      }
      \slurSolid
      es'4

      ( fis'4 )| % 8
      g'4 -- g'4 -- g'4 -- | % 9
      g'2. \bar ":|."
    }

    \addlyrics {
      Без теб е мрак, без теб е скръб. Бо "же-" -- ствен лъч,
      о -- грей ме ти. В~сър це то ми ти вне си, в~сър -- це то ми вне -- си Ра дост, Мир.
    }

    \addlyrics {
      Bez teb e mrak, bez teb e skrăb. Bo že -- stven lăč,
      o -- grej me ti. V~săr ce to mi ti vne si, v~săr -- ce to mi vne -- si Ra dost, Mir.
    }

    \addlyrics {
      " " " " " " " " " " " " " " " "

      " " " " " " " " " " " " " " " "

      Аз ви -- на -- ги вяр-вам, че Ти над...}




      \header {
        title = \titleFunc "Ме-хейн" "Me-hejn"
      }

      \midi{}

    } % score

    \markup  \fontsize #bgCoupletFontSize {
      \hspace #2
      \override #'(baseline-skip . 1.8)
      \column {
        \line { 2. Пробуждам се от сън дълбок }
        \line {   "   " и те зова като дете.}
        \line {   "   " Аз винаги вярвам, че ти}
        \line {   "   " над мене с Любов бдиш майчина.}
      }

      \hspace #3
      \override #'(baseline-skip . 1.8)
      \column {

        \line { 2. Probuždam se ot săn dălbok }
        \line {   "   " i te zova kato dete.}
        \line {   "   " Az vinagi vjarvam, če ti}
        \line {   "   " nad mene s Ljubov bdiš majčina.}
      } %column
    } % markup



    \markup \empty-one

    % include foreign translation(s) of the song
    \include "lyrics_de/175_mehein_lyrics_de.ly"
    \markup \empty-two

    \markup \fill-line { \fontsize #deTitleFontSize "Ме-хейн II*" }

    \markup  \fontsize #bgCoupletFontSize {
      \hspace #2
      \override #'(baseline-skip . 1.8)
      \column {
        \line { 1. В'дни на борба, в'дни на печал, }
        \line {   "   "  далеч от теб мой роден край,}
        \line {   "   " аз винаги мисля за теб,}
        \line {   "   " аз винаги мисля  мисля за теб.}
      }

      \hspace #3
      \override #'(baseline-skip . 1.8)
      \column {
        \line { 1. V'dni na borba, v'dni na pečal, }
        \line {   "   "  daleč ot teb moj roden kraj,}
        \line {   "   "  az vinagi mislja za teb,}
        \line {   "   " az vinagi mislja  mislja za teb.}
      } %column
    } % markup
    \markup \empty-one
    \include "lyrics_de/175_2_mehein_II_lyrics.ly"

  } % bookpart

  % Più mosso
  %
