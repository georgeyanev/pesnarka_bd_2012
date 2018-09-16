


melody = \absolute  {
  \clef treble
  \key g \minor
  \time 3/4 \tempo "Andante" 4 = 66
 \partial 4
 
 \autoBeamOff
 
 f'8 f'8 | d'4. es'8 f' ( g' ) |  f'2 g'8 a' |  bes'4. g'8 g'4 |  f'2 f'8 f' \break |
 
 c''4. b'8 c'' ( d'' ) |c''2 a'8 a' | bes'4 e' g' | f'2 f'8 f' \break |

 d'4. es'8 f' ( g' ) | f'2 g'8 a' | bes'4. a'8 bes' ( c'' ) | d''2 es''8 es'' \break 

\repeat volta 2 {d''4 c'' c'' bes'2 bes'8 bes' | a'4. a'8 g' ( a' ) |} \alternative { { bes'2 es''8 es'' } {  bes'2 \break } }
 
 

}

text = \lyricmode {  Ми -- ло --
  сър -- ди -- е -- то е гра -- ди -- на рай --
  ска, чуд -- но пре -- ме -- не -- на, пъл -- на
  с_ху -- бост май -- ска; бил -- ки и дър -- ве --
  та, в_кра -- со -- та раз -- ви -- ти, с~и -- зо
  -- бил -- на рож -- ба вся -- ко -- га по -- кри
  -- ти, с~и -- зо -- ти.

 
 
}

textL = \lyricmode { Mi -- lo --
  syr -- di -- e -- to e gra -- di -- na raj --
  ska, chud -- no pre -- me -- ne -- na, pyl -- na
  s_hu -- bost maj -- ska; bil -- ki i dyr -- ve --
  ta, v_kra -- so -- ta raz -- vi -- ti, s~i -- zo
  -- bil -- na rosh -- ba vsja -- ko -- ga po -- kri
  -- ti, s~i -- zo -- ti.
 
 
}

\score{
 \header {
  title = \markup { \fontsize #-3 "Милосърдието / Milosurdieto" }
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