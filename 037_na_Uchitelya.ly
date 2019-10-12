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
    ragged-last = ##f % do spread last line to fill the whole space
    \context {
      \Score
      \omit BarNumber %remove bar numbers
    } % context
  } % layout

  \new Voice \absolute  {
    \clef treble
    \key e \minor
    \time 3/4 \tempo "Lento" 4 = 50
    \partial 4
    \autoBeamOff
    e'8 fis'8 | g'4 e'4 b'8 a'8 | g'4 fis'4 e'8 fis'8 | g'4 e'4 g'8 a'8 |  b'2 e''8  e''8 \break
    d''4 c''4 b'8 b'8 | a'4 g'4 fis'8 g'8 | b'4 a'4 g'8 a'8 | b'2 e''8 e''8 \break
    | d''4 c''4 b'8 b'8 | a'4 g'4 fis'8 g'8 | b'4 a'4 g'8 fis'8 | e'2 \bar "|."\break
  }
  
  \addlyrics {
    На У --  чи -- те -- ля по -- ко -- рен аз ще слу -- жа
    до кон -- ца. Той за мен е път от -- во --
    рен, що ме во -- ди към От -- ца. Той за мен
    е път от -- во -- рен, що ме во -- ди към От -- ца.
  }

  \addlyrics {
    Na U --  chi -- te -- lya po -- ko -- ren az shte slu -- zha
    do kon -- tsa. Toy za men e pat ot -- vo --
    ren, shto me vo -- di kam Ot -- tsa. Toy za men
    e pat ot -- vo -- ren, shto me vo -- di kam Ot -- tsa.
  }

  \header {
    title = "На Учителя / Na Uchitelya"
  }

} % score

\markup {
    \hspace #1
    \vspace #5
    \fontsize #+1 {
    \column {
      \line { 2.  Господи, Ти мой Учител, }
      \line {   "   " в стъпките си ме води, }  
      \line {   "   " и кат мощен покровител }
      \line {   "   " всякога към мен бъди. } 
      \line { " " }
      \line { 3. Дай ми Твойта Мъдрост свята }
      \line {   "   " и Божествена Любов – }  
      \line {   "   " за любов към всички братя }
      \line {   "   " винаги да съм готов. } 
      \line { " " }
      \line { 4. И във дни на изпитание }
      \line {   "   " Ти бъди ми канара; }  
      \line {   "   " тъй за Тебе ще живея }
      \line {   "   " и за Тебе ще умра. } 
      \line { " " }
      \line { 5. И когато стана жител }
      \line {   "   " на невидимия свят, }  
      \line {   "   " о, любезни мой Учител,  }
      \line {   "   " дай ми Твойта благодат! } 
    }
    }
}

} % bookpart
