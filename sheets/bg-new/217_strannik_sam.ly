\version "2.24.4"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref217
  \tocItem \markup "Странник съм в този свят "
   \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"
    \new Voice \absolute {
      \clef treble
      \key g \minor
      \time 3/4
      \tempoFunc "Andante" 4 "76"
      \autoBeamOff
      bes2 ^\pp c'4 | % 2
      a2. | % 3
      c'2. | % 4
      bes2 a4 | % 5
      g2.  | % 6
      d'2. ^\p ^\< \break | % 7
      cis'2 d'4 | % 8
      es'2. _\! | % 9
      d'2 ( c'4 ) ^\> |
      bes2. | % 11
      a2. | % 12
      r4 ^\! d'2 ^\p \break | % 13
      es'2. ^\< | % 14
      g'2. | % 15
      a'2.  ^\! ^\mf | % 16
      bes'2. ^\p ^\< | % 17
      g'8^\markup{ \huge \italic {sosten.} } ( [ a'8 ) ]
      bes'4 c''4 | % 18
      es''2 ^\fermata d''4 \break | % 19
      d''2.  ^\! ^\> |
      \tempo" a tempo"d'2 ^\! ^\p g'4 | % 21
      bes'2. | % 22
      a'4 ^\< bes'4 c''4 | % 23
      g'2. ^\! ^\> | % 24
      g'2.  \bar "||"
      \break | % 25
      \tempoFunc "Moderato" 4 "84" | % 25
      d'2 ^\! d'4 | % 26
      f'2 c'4 ^\fermata  | % 27
      c'4 ^\< c'4 c'4 | % 28
      b2 ^\! c'4 | % 29
      es'2. ^\> \break |
      d'2 \override Hairpin.to-barline = ##f d'4 _\! ^\p ^\< | % 31
      es'2. ^\! | % 32
      c'2  ^\> d'4 ^\! ^\mf ^\< | % 33
      g'2 ^\> d'4  ^\! | % 34
      \numericTimeSignature\time 4/4  | % 34
      \slurDown a'4 ( ^\! ^\< es''4 d''4 ) ^\! ^\f
      c''4 ^\> | % 35
      \time 3/4  | % 35
      bes'2   a'4 _\! ^\< | \break % 36
      c''2 bes'4  ^\! | % 37
      \slurUp f''2 ( ^\mf es''4 ) | % 38
      c''2 ^\> bes'4 ^\! | % 39
      a'2 ^\> bes'4 |
      g'2 g'4 | % 41
      g'2.  ^\! | \break  % 42
      d'2 ^\p d'4 | % 43
      d'2.| % 44
      cis'2 d'4 | % 45
      \tempo"poco a poco rall." es'2. | % 46
      d'2. | % 47
      a2 bes4 | % 48
      \override Hairpin.Y-extent = #'(0 . 3)
      c'2. ^\>  % 49
      d'2. ^\fermata ^\ppp |
      \bar "|."
    }

    \addlyrics {
      Стран -- ник съм във то -- зи
      свят. Ни -- ко -- го не по --
      зна -- вам ос -- вен Те -- бе. Ти,
      Гос -- по -- ди, Бо -- же мой,
      Си съз -- дал всич -- ко за ме --
      не. Аз от -- пра -- вям сво -- я --
      та бла -- го -- дар -- ност към Те
      -- бе, на Те -- бе, Гос  --  по
      -- ди, въз -- ло -- жих сво -- е --
      то у -- по -- ва -- ни -- е. Да въз
      -- ле -- зе мол -- ба -- та ми към
      Те -- бе.}

      \header {
        title = \titleFunc #'ref_desc_21 "Странник съм в този свят" "Strannik săm v tozi svjat"
      }

      \midi{}

    } % score


  } % bookpart
