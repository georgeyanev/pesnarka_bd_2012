\version "2.24.3"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref137
  \tocItem \markup "А бре, синко"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute {
      \clef treble
      \key d \minor
      \time 8/16
      \tempoFunc "Andante" 4 "132"
      g8 g16 a8 a8. ~ | % 2
      a8. ~ a8 ~ a8. | % 3
      d'8. f'8 f'8. ~ | % 4
      f'8. ~ f'8 r8. \break | % 5
      g'8 f'16 e'8 d'8. | % 6
      d'8. f'8 d'8. | % 7
      e'8. e'8 ~ e'8. ~ | % 8
      e'8. ~ e'8 r8. \break | % 9
      f'8 f'16 f'8 d'8 d'16 | \barNumberCheck #10
      g'8 f'16 f'8 f'8 d'16 | % 11
      e'8. e'8 ~ e'8. ~ | % 12
      e'8. ~ e'8 ~ e'8. \break | % 13
      \bar ".|:-|"
      a8. a16 ( bes16 ) cis'8. \fermata | % 14
      d'8. d'8 ( cis'8. ) | % 15
      a8 ( bes16 ) cis'8 ~ cis'8. \break | % 16
      e'8 ( f'16 ) d'8 ~ d'8. | % 17
      \time 11/16  d'8 d'8 e'8 ( f'16 ) d'8 d'8 | % 18
      \time 8/16  e'8. e'8 ~ e'8. ~ \break | % 19
      e'8. ~ e'8 ~ e'8.
      \bar ":|."
      |
      \key a \minor e'8 ( f'16 ) gis'8 ( a'8. ) | % 21
      d''8 c''16 b'8 a'8. | % 22
      a'8. b'8 ~ b'8. \fermata \break | % 23
      c''8. c''8 ~ c''8. \fermata | % 24
      c''8. a'8 ~ a'8. \fermata | % 25
      a'8. c''8 a'8. | % 26
      b'8. b'8 ~ b'8. \fermata \break | % 27
      \bar ".|:-|"
      a'8. a'8 a'8. | % 28
      a'8. f'8 ~ f'8. | % 29
      gis'8 f'16 e'8 d'8. | \barNumberCheck #30
      e'8. e'8 ~ e'8. \fermata
      \bar ":|."
    }

    \addlyrics {
      А  бре,
      син -- ко, __  зна -- еш ли __
      що съ -- се -- ди за теб го
      -- во -- рят? __ Че си ста --
      -- до -- то в~пла --  ни -- на --
      та о -- ста -- вял __  и ве --
      чер си се връ -- щал __ мо --
      ми __  по се -- ден -- ки  да
      сре -- щаш. __ Мо -- ми, __  що
      "се-" -- ден -- ки па -- лят, __
      па -- лят, __  па -- лят, __  но
      и раз -- ва -- лят. __   Мо --
      ма се, син -- ко, __ ве -- чер
      не  из -- би -- ра. __}

      \header {
        title = \titleFunc #'ref_desc_13 "А бре, синко " "A bre, sinko"
      }

      \midi{}

    } % score



  } % bookpart
