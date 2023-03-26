\version "2.24.0"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref039
  \tocItem \markup " "
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
        fis'8 (  [g'8] ) a'8
      }
      | % 6
      g'4 ^\fermata a'2 \break | % 7

      \times 2/3  {
        bes'8  a'8 g'8
      }
      es'4 (

      fis'4 ) | % 8
      g'4 -- g'4 -- g'4 -- | % 9
      g'2. \bar "|."
    }
    \addlyrics {
      Без теб е мрак, без теб е
      скръб. Бо -- же -- ствен лъч, о --
      грей ме ти. В~сър -- це -- то ми
      ти  вне -- си, в~сър -- це -- то
      ми вне -- си Ра -- дост, Мир.}
      \addlyrics {
        Bez teb e mrak, bez teb e
        skrab. Bo -- zhe -- stven lach, o --
        grey me ti. V~sar -- tse -- to mi
        ti  vne -- si, v~sar -- tse -- to
        mi vne -- si Ra -- dost, Mir.}

        \header {
          title = \titleFunc "Ме-хейн" "Me-hein"
        }

        \midi{}

      } % score

      \markup \fontsize #bgCoupletFontSize {
        \hspace #2
        \override #`(baseline-skip . ,bgCoupletBaselineSkip)
        \column {
          \line {    2. Пробуждам се от сън дълбок }
          \line {   "   " и те зова като дете. }
          \line {   "   " Аз винаги вярвам, че ти }
          \line {   "   " над мене с Любов бдиш }
          \line {   "   " майчина. }
        }

        \hspace #7
        \override #`(baseline-skip . ,bgCoupletBaselineSkip)
        \column {
          \line {    2. Probuzhdam se ot san dalbok }
          \line {   "   " i te zova kato dete. }
          \line {   "   " Az vinagi vyarvam, che ti }
          \line {   "   " nad mene s Lyubov bdish }
          \line {   "   " maychina. }
        } %column
      } % markup

      
      % include foreign translation(s) of the song
      \include "lyrics_de/175_mehein_lyrics_de.ly"

    } % bookpart

    % Più mosso
    %
