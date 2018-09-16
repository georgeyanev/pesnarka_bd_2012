

melody = \absolute  {
  \clef treble
  \key g \major
  \time 6/4 \tempo "Andante sostenuto" 4 = 76
 \partial 2
 
 d'4 d'4 | b'2 a'2 g'4 fis'4 | a'2. g'4 r4 g'4 | \time 4/4 \break
 
 fis'4 d'4 g'4 a'4 | \time 6/4  b'2 r4 r8 b'8 d''4 b'4 | \time 5/4  e''2 a'2 r4 | \break

g'2 e'8 fis'8 g'4 a'4 | \time 3/4  b'2 b'8 ( c''8 ) | \time 4/4  c''4 b'4^ \rit a'4 b'8 ( cis''8 ) | \break

d''2 r2 | \repeat volta 2 { 

    \key bes \major
    \time 6/4 \tempo "Lento" 4 = 60
  
d'2 ( bes'2 ) a'2 | g'2. fis'4 ^"," g'4 a'4 \break |

 \time 4/4 c''2 bes'2 | r4 bes'4 bes'4 c''4 | es''2. d''4 | \time 6/4 d''2 r4 \fermata c''4 bes'4 g'4 | \break

\time 4/4  c''2 bes'2 | r4 d'4 d'4 d'4 | bes'2. a'4 | g'1 | } \break

}

text = \lyricmode {
 Аз ще па --
  зя То -- пли -- на -- та на мо -- е -- то сър --
  це, ко -- я -- то вна -- ся Бо -- жи -- и -- те
  бла -- га във мо -- я -- та ду -- ша. От -- че
  наш, не ни въ -- веж -- дай във из -- ку -- ше
  -- ни -- е, не ни въ -- веж -- дай във из -- ку
  -- ше -- ни -- е.
 
 
}

textL = \lyricmode {
  Az schte pa -- zia
  To -- pli -- na -- ta na mo -- e -- to sâr -- tse, ko -- ia -- to
  vna -- sia Bo -- ji -- i -- te bla -- ga vâv mo -- ia -- ta du --
  scha. Ot -- sche nasch, ne ni vâ -- vej -- dai vâv iz -- ku -- sche
  -- ni -- e, ne ni vâ -- vej -- dai vâv iz -- ku -- sche -- ni --
  e.
 
}
 
\score{
 \header {
  title = \markup { \fontsize #-1 "Отче наш, не ни въвеждай в изкушение / Otce nach, ne ni vavejdai v izkuchenie" }
  
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