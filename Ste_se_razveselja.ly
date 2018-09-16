\markup {  \vspace #1.9 }


melody = \absolute  {
  \clef treble
  \key d \major
  \time 2/4 \tempo "Moderato" 4 = 88
 

a'4 d''4 | a'4 d''8. e''16 | \time 3/4 d''2 a'4 | \time 2/4 bes'4. ( d''8 ) | a'2 | g'4. ( a'8 ) | \break

f'4 e'4 | d'4 cis'4 | d'2 | \repeat volta 2 { a'4 d''8. e''16 | f''2 | e''4 d''4  

cis''4 d''8. bes'16 | a'2 | g'4. ( a'8 ) | f'2 | e'4 cis'4 | } \alternative { {d'2 } {\time 3/4 d'2 a'4} }

d''4 c''4 bes'8 a'8 | g'8 ( a'8 ) f'4-- e'4 | \time 2/4 d'8 ( e'8 ) f'4 | e'8 d'8 cis'8 e'8 | 

\time 3/4 d'2 d''8 ( e''8 ) | f''4 e''4 d''4 | \time 4/4 c''4 bes'4 a'8 g'8 a'8 ( bes'8 ) | \time 3/4 a'2 d''8 ( e''8 ) | 

f''4 e''4 d''4 | \time 4/4 c''4 bes'4 a'8 g'8 a'8 ( bes'8 ) | \time 2/4 a'2 | c''4 b'8 c'' |

d''4 f'4 | bes'4 a'4 | a'4 gis'4 | a'2 | d''4 cis''8 d''8 | e''4 a'4 | bes'4 a'4 |

a'4. ( d''8 ) | d''2 | d''4 e''4 | f''4^\rit e''4 | d''2 | d''2 | d''4^\tmp c''8 bes'8 | a'4 g'4 |

f'4 e'4 | d'4 a4 | d'4 e'4 | f'4 e'4 | d'2 | d'2 | d''4 c''8\noBeam bes'8 | 

a'4 g'4 | f'4 e'4 | d'4 a4 | d'4 e'4 | f'4 e'4 | d'2 | d'2 | 

}

text = \lyricmode { Ще се раз -- ве -- се -- ля пре -- мно -- го за --

ра -- ди Гос -- по -- да, ду -- ша -- та ми ще се 

за -- ра -- ду -- ва в_Бо -- га мо -- е -- го, го: За --

що -- то ме о -- бле -- че в_o -- деж -- ди на спа -- се -- ни --

е, за -- гър -- на ме в_ман -- ти -- я на прав -- да, за -- 

гър -- на ме в_ман -- ти -- я на прав -- да, ка -- то же --

них, у -- кра -- сен със ве -- нец, ка -- то не -- вес -- та, на -- ки -- 

те -- на със ут -- ва -- ри -- те си, ка -- то не -- вес -- та,

на -- ки -- те -- на със ут -- ва -- ри -- те си, ка -- то де --

ви -- ца, пре -- из -- бра -- на от дру -- гар -- ки -- те си.

 
 
}

textL = \lyricmode { Ste se raz -- ve -- se -- lya pre -- mno -- go za --

ra -- di Gos -- po -- da, du -- sha -- ta mi ste se 

za -- ra -- du -- va v_Bo -- ga mo -- e -- go, go: Za --

sto -- to me о -- ble -- che v_o -- deg -- di na spa -- se -- ni --

е, za -- gar -- nа mе v_man -- ti -- ya nа prav -- dа, zа -- 

gar -- nа mе v_man -- ti -- ya na prav -- da, ka -- tо gе --

nih, u -- krа -- sen sas vе -- nec, ka -- tо nе -- ves -- tа, nа -- ki -- 

tе -- nа sas ut -- va -- ri -- te si, ka -- to ne -- ves -- ta,

na -- ki -- te -- na sas ut -- vа -- ri -- te si, kа -- to de --

vi -- ca, pre -- iz -- brа -- nа оt dru -- gar -- ki -- te si.
 
 
}

\score{
 \header {
  title = \markup { \fontsize #-1 " Ще се развеселя / Ste se razveselja" }
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