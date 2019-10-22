\version "2.18.2"

\paper {
  print-all-headers = ##t
  print-page-number = ##f 
  left-margin = 2\cm
  right-margin = 2\cm
  ragged-bottom = ##f % do spread the staves to fill the whole vertical space
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
    \key f \major
    \time 2/4 \tempo "Tempo di marcia" 4 = 100
    \autoBeamOff
    \partial 4
 
    f'8 a'8 | c''4 c''8. d''16 |  c''4 f'8 g'8 | a'4 a'8. a'16 | a'4 g'8 a'8  \break

    bes'4 bes'8. bes'16 | bes'4 a'8 bes'8 | d''4 c''8. b'16 | c''2 (| c''4) a'8 bes'8 | \break 

    c''4 c''8. d''16 | c''4 f'8 g'8 | a'4 a'8. a'16 | g'4 c''8 c''8 | b'4 c''8 d''8| \break


    e''4 e''8 d''8 | c''8 b'8 c''4 (| c''4) a'8. bes'16 | \repeat volta 2 { c''2 (| c''8) c''8 d''8 bes'8  |\break

    g'2 (| g'4 ) g'8. a'16| bes'2 ( |  bes'8 ) bes'8 c''8 g'8|   a'2 ( | \break 

    a'4 ) a'8. bes'16| c''2 ( | c''8 ) c''8 f''8 e''8 | d''2 (|d''4 ) e''4 \break  

    f''8 c''8 d''8 bes'8 | a'4 g'4 |} \alternative { { f'2 ( | f'8 ) r8 a'8. bes'16 | } { f'2 (| f' 8 ) r8 \bar "|." \break } }
 
  } 
  
  \addlyrics {
    Вре -- ме е да вър -- вим, зло -- то да по -- бе -- дим, Мир -- ра 
    да въ -- дво -- рим, Хри -- ста да въз -- ца -- рим!  Прав -- да 
    ще въ -- ве -- дем, Сво -- бо -- да ще да -- дем и през всич -- ки -- те 
    дни вер -- ни ще сме ний. Да ца -- ру -- ва Лю -- бов -- та! 
    Да ца -- ру -- ва Бла -- гост -- та!
    Бог е ца -- рят на све -- та, Той в~пъ -- тя ни е Све -- ли -- на. Да ца -- на.   
  }

  \addlyrics {
    Vre -- me e da var -- vim, zlo -- to da po -- be -- dim, Mir -- ra 
    da va -- dvo -- rim, Hri -- sta da vaz -- tsa -- rim!  Prav -- da 
    shte va -- ve -- dem, Svo -- bo -- da shte da -- dem i prez vsich -- ki -- te 
    dni ver -- ni shte sme niy. Da tsa -- ru -- va Lyu -- bov -- ta! 
    Da tsa -- ru -- va Bla -- gost -- ta!
    Bog e tsa -- ryat na sve -- ta, Toy v~pa -- tya ni e Sve -- li -- na. Da tsa -- na.   
  }


  \header {
    title = "Време е да вървим / Vreme e da varvim"
  }

} % score

\markup { \hspace #20 \vspace #10
   \fontsize #+5 {
     Missing text here ...
   }
}

} % bookpart
