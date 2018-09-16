


melody = \absolute  {
  \clef treble
  \key es \major
  \time 4/4 \tempo "Andante" 4 = 88

g'4  g' ( ~ g'8 \times 2/3  { fis'16 g'16 as' } g'8 fis' ) | g'1 | f'4 es' d'8 c' es' d' \break |

c'4  \times 2/3  { b8 ( c' d'8 )  } c'2 | g'8 g' c''4 ( es'' d'' ) | c''4 \times 2/3 { b'8 ( c'' ) d''8 } c''2 \break |
  
b'4 as' g'4. g'8 | c''4 b' as' as' | as'8 as' b' c'' g'2 \break |

as'4 bes' c''2 |  d''4 c'' bes' c'' | g'2. r4 |  \time 6/4  f'2 g'8 ( as' ) bes'4 c'' bes' \break | 

 as'4 g' f' es' d'2 | \time 4/4  d'4 ( es' ) f' g' | b'8 as' as' b' g'2 \break | 
  
  \time 6/4  g'4 c''8 d'' es''4 d'' c'' b' | as'4 as'8 as' b' c'' g'2 r4 \break |
  
   \time 4/4  b'2 as'4 g' | f'4 es' d' es' | f'4 g' as' ( b' ) | g'2. r4 \break | 
  
  c''2 b'4 as' | g'4 f' es' d' | \time 6/4  es'4 f' g' as' b' c'' | \break
  
  \time 6/4  g'2 g'4 es''2 d''4 | c''4  \times 2/3  { b'8 ( c'' d''8 ) } c''2.  es'8. f'16 \noBeam | \time 4/4  g'2 g'4 as' \break | 
  
   f'4 f' f' es'8. f'16 | g'2 g'4 as' | \time 5/4  f'4 f' es'8. f'16 g'2 \break | 
   
   \time 3/4  g'4 c'' b' | \time 4/4  as'8. b'16 g'2 g'4 | \time 5/4  es''8. es''16 d''4 c'' b' as'8 g' \break | 
   
  f'2 es'2. | \time 6/4  es'2 d'4 c' b c'8. c'16 | d'4 c'2 es'8. es'16 f'4 g' \break | 
  
   \time 4/4  as'4 g' fis' g'8. g'16 \noBeam | as'4 g'2 r4 | g'4 c''2 b'4 | as'4 g' f' es' \break |
   
  d'4 es' d' c' | \times 2/3  { b4 ( c'4 d' )} c'2 | es'4 es'2 c'4 | d'4 es' c'2 \break | 
  
   \time 3/4  f'4 as' g' | \time 5/4  fis'4 g' as' g'2 | g'4 c'' b' c'' d'' \break | 
   
  \time 3/4  es''4 c''2 | \time 6/4  g'4 b' as' g' f' es' | \time 6/4  d'4 ( es' ) c'1 |

}

text = \lyricmode { И -- ма --
  ше че -- ло -- век, про -- во -- ден от Бо --
  га, и -- ме -- то му И -- о -- ан. Той дой --
  де в_сви -- де -- тел -- ство да сви -- де -- тел
  -- ству -- ва за -- ра -- ди ви -- де -- ли -- на
  -- та, за да по -- вяр -- ват всич -- ки чрез не
  -- го. Не бе той ви -- де -- ли -- на -- та, но
  да сви -- де -- тел -- ству -- ва за ви -- де --
  ли -- на -- та. Той бе -- ше ис -- тин -- на --
  та ви -- де -- ли -- на, ко -- я -- то о -- све
  -- тя -- ва все -- ки -- го че -- ло -- ве -- ка,
  що и -- де на све -- та. В_све -- та бе и све
  -- тът чрез Не -- го ста -- на и све -- тът Го
  не по -- зна. В~сво -- и -- те си дой -- де, но
  Сво -- и -- те Му Го не при -- е -- ха. А ко
  -- и -- то Го при -- е -- ха, да -- де им власт
  да бъ -- дат ча -- да Бо -- жии, си -- реч, ко
  -- и -- то вяр -- ват в_Не -- го -- во -- то и --
  ме, ко -- и -- то не от кръв, ни -- то от по
  -- хот плът -- ска, ни -- то от по -- хот мъж --
  ка, но от Бо -- га се ро -- ди -- ха.

 
 
}

textL = \lyricmode {I -- ma --
  sche tsche -- lo -- vek, pro -- vo -- den ot Bo --
  ga, i -- me -- to mu I -- o -- an. Toi doi --
  de v_svi -- de -- tel -- stvo da svi -- de -- tel
  -- stvu -- va sa -- ra -- di vi -- de -- li -- na
  -- ta, sa da po -- vjar -- vat vsitsch -- ki tschres ne
  -- go. Ne be toi vi -- de -- li -- na -- ta, no
  da svi -- de -- tel -- stvu -- va sa vi -- de --
  li -- na -- ta. Toi be -- sche is -- tin -- na --
  ta vi -- de -- li -- na, ko -- ja -- to o -- sve
  -- tja -- va vse -- ki -- go tsche -- lo -- ve -- ka,
  sto i -- de na sve -- ta. V_sve -- ta be i sve
  -- tat tschres Ne -- go sta -- na i sve -- tat Go
  ne po -- sna. V~svo -- i -- te si doi -- de, no
  Svo -- i -- te Mu Go ne pri -- e -- cha. A ko
  -- i -- to Go pri -- e -- cha, da -- de im vlast
  da ba -- dat tscha -- da Bo -- shii, si -- retsch, ko
  -- i -- to vjar -- vat v_Ne -- go -- vo -- to i --
  me, ko -- i -- to ne ot krav, ni -- to ot po
  -- chot plat -- ska, ni -- to ot po -- chot mash --
  ka, no ot Bo -- ga se ro -- di -- cha.
 
 
}

\score{
 \header {
  title = \markup { \fontsize #-3 "Имаше человек / Imasche tschelovek" }
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