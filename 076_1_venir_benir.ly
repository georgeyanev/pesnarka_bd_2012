\version "2.18.2"

\paper {
  print-all-headers = ##t
  print-page-number = ##f 
  left-margin = 2\cm
  right-margin = 2\cm
  ragged-bottom = ##t % do not spread the staves to fill the whole vertical space
}

\header {
  tagline = ##f
}

\bookpart {
\score{
  \layout { 
    indent = 0.0\cm % remove first line indentation
    ragged-last = ##f % do not spread last line to fill the whole space
    \context {
      \Score
      \omit BarNumber %remove bar numbers
    } % context
  } % layout

  \new Voice \absolute {
  \clef treble
  \key d \minor
  \time 3/4 \tempo "Moderato" 4 = 88
 \partial 4
 
 \autoBeamOff
 
 d'4 | f'2 g'4 | a'2 a'4 | d''2 c''4 | bes'2 a'8. g'16 \break | % 6

a'2 g'8. a'16 | bes'2 a'8. e'16 | f'2 e'8. f'16 | g'4 ( a' ) e'8. f'16 |  d'2 f'8. e'16 \break | 

 \repeat volta 2 { d'2 e'8. f'16 | g'2 ~ g'8 e' | g'4. f'8 e' ( f' ) |} \alternative { { d'2 f'8. e'16  | } { d'2. \break |} }

}
  
  \addlyrics {Ве -- нир Бе
  -- нир, Би -- хар Бе -- нум Ил -- би -- ют, Ил
  бе -- зут Ом би -- ют. Ил бе -- зут Ом би --
  ют. Зун ме -- зун, зун ме -- зун, Би -- ном ту
  ме -- то. Зун ме -- то. }
  
  \addlyrics { Ve -- nir Be --
  nir, Bi -- har Be -- num Il bi -- yut, Il be -- zut. Om bi --
  yut. Il be -- zut Om bi -- yut. Zun me -- zun, zun me --
  zun, Bi -- nom tu me -- to. Zun me -- to.}
  
  \header {
    title = "Венир бенир / Venir benir"
  }
  
  \midi{}

} % score
} % bookpart
