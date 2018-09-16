


melody = \absolute  {
  \clef treble
  \key c \major
  \time 5/4 \tempo "Andante" 4 = 63
 \partial 4
 
c '4 | c'2 ( b4 c' ) d' |\time 4/4  e'4 c' \times 2/3 { b4 ( c'4 d' ) }

\time 3/4  c'2 g'4 |g'2 ( fis'4 ) \break| 

g'4 a' g' | \time 4/4  g'8 ( fis' g' a' ) g'2 g'4 c''2 b'4 | c''4 a' g'2 | \break

\time 5/4  f'4. ( g'8 ) e'2 d'4 |\time 4/4  c'4 b c'2 | \time 5/4  f'2 g'4 a' g' \break |

g'4 fis' g' a' a' | \time 4/4  g'4 fis' g'2 | \time 5/4  g'4 c''2 d''4 e'' \break |

d''4 c'' b' c'' a' | \time 4/4  g'4 g' g'8 ( fis' g' a' | \time 3/4  g'2 ) r4 | \time 4/4  e'2 d'4 c' \break |

d'4 f' e' d' | c'4 ( b ) c'2 | f'2 g'4 a' | g'4 g' c'' a' \break | 

\time 3/4  a'4 g'2 | \time 5/4  g'4 c''2 b'4 a' | \time 6/4  g'4 fis' g' a' g'2 \break | 

  \time 5/4  d''2 c''4 b' a' | \time 6/4  g'4 fis' g' a' g'2 |e'2 c'4 ( e' ) d'2 \break | 
  
  g'2 a'4 ( g' ) g'2 | \time 5/4  c''2 b'4 a' g' | f'8 ( g' ) e'4 d' c'8 ( b c' d' ) |  \time 3/4  c'2. \break

}

text = \lyricmode {В_зо -- ри --
  те на Жи -- во -- та, в_зо -- ри -- те на Жи --
  во -- та Слън -- це из -- гря -- ва -- ше, Слън --
  це из -- гря -- ва -- ше, на При -- ро -- да гра
  -- ни -- ци о -- чер -- та -- ва -- ше, на При --
  ро -- да гра -- ни -- ци о -- чер -- та -- ва --
  ше.  __ В_ду -- ша ми мо -- щен Дух про -- бу --
  ди,  в_ду -- ша ми мо -- щен Дух про -- бу --
  ди, и в_сър -- це ми Лю -- бов съ -- бу -- ди,
  и в_сър -- це ми Лю -- бов съ -- бу -- ди. Съ --
  бу -- ди, съ -- бу -- ди, и в_сър -- це ми Лю --
  бов съ -- бу -- ди.

 
 
}

textL = \lyricmode { V_zo -- ri -- te
  na Zhi -- vo -- ta, v_zo -- ri -- te na Zhi -- vo -- ta Slan --
  tse iz -- grya -- va -- she, Slan -- tse iz -- grya -- va --
  she. Na Pri -- ro -- da gra -- ni -- tsi o -- cher -- ta -- va --
  she, na Pri -- ro -- da gra -- ni -- tsi o -- cher -- ta -- va --
  she. V_du -- sha mi mo -- shten Duh pro -- bu -- di, v_du --
  sha mi mo -- shten Duh pro -- bu -- di. I v_sar -- tse mi Lyu --
  bov sa -- bu -- di, i v_sar -- tse mi Lyu -- bov sa -- bu --
  di, sa -- bu -- di, sa -- bu -- di, i v_sar -- tse mi Lyu --
  bov sa -- bu -- di.
 
 
}

\score{
 \header {
  title = \markup { \fontsize #-3 "Небето се отваря / Nebeto se otvaria" }
  %subtitle = \markup \center-column { " " \vspace #1 } 
  
  tagline = " " %supress footer Music engraving by LilyPond 2.18.0—www.lilypond.org
 % arranger = \markup { \fontsize #+1 "Контекстуализация: Йордан Камджалов / Contextualization: Yordan Kamdzhalov" }
  %composer = \markup \center-column { "Бейнса Дуно / Beinsa Duno" \vspace #1 } 

}
  <<
    \new Voice = "one" {
      
      \melody
    }
    \new Lyrics \lyricsto "one" \text
    \new Lyrics \lyricsto "one" \textL
  >>
 
}