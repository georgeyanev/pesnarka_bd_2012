


melody = \absolute  {
  \clef treble
  \key f \major
  \time 3/4 \tempo "Moderato" 4 = 88
 \partial 4
 
 \autoBeamOff
 
 f'8 a' c''4 c'' f''8 a' | c''4 c'' f'8 a' | c''4 c'' f''8 e'' \break
 
 d''2 d''8 c'' \repeat volta 2 { | bes'4 d'' c''8 bes' | a'4 c'' f'8 g' \break |

a'4 c'' g'8 c'8 |} \alternative { { f'2 d''8 c''  | } { f'2. | \break } }

}

text = \lyricmode { О, У --
  чи -- те -- лю бла -- га -- ти, теб из -- пъл --
  ва До -- бри -- на. Твой -- те ду -- ми са кри
  -- ла -- ти, пъл -- ни с~Мъ -- дрост, Свет -- ли --
  на. Твой -- те на.

 
 
}

textL = \lyricmode {O, U --
  tschi -- te -- lju bla -- ga -- ti, teb is -- pyl --
  va Do -- bri -- na. Tvoj -- te du -- mi sa kri
  -- la -- ti, pyl -- ni s~My -- drost, Svet -- li --
  na. Tvoj -- te na.
 
 
}

\score{
 \header {
  title = \markup { \fontsize #-3 " О, Учителю благати / O, Uchitelju blagati" }
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