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
    \key d \major
    \time 3/4 \tempo "Moderato" 4 = 112
 
    a'2 a'4| fis''2 e''4| d''2 b'4 | a'2 fis'4 | e'2 e'4 | cis'2 a4 | \break
 
    d'2 fis'4 | a'2 r4| a'2 a'4| b'2 cis''4 | d''2 e''4| fis''2.| \break
            
    d''2. |  b'2 b'4| a'2 g'4 | fis'2 e'4 | d'2. | g'2 b'4 | d''2 b'4| \break
 
    a'2 a'4 | fis'2 d'4 | d''2 d''4 | cis''2 b'4 | a'2 cis''4 | d''2. | b'2 b'4 |  \break
 
    e''2 d''4 | cis''2 b'4 | a'2 fis'4 | a'2 g'4 | fis'2 e'4 | fis'2 cis'4| d'2. | \bar "|." \break
  }
  
  \addlyrics {
    Но -- ви хи -- мни на И -- су -- са да за -- пе -- ем
    в~то -- я час, Бо -- жи Син е Той пред -- ве -- 
    чен на Не -- бе -- то и във нас.  Наш У -- чи -- тел,
    наш во -- ди -- тел, ис -- тин -- ски -- ят наш Жи -- вот, Не -- го --
    во -- то креп -- ко И -- ме да се сла -- ви в~род и род.    
  }

  \addlyrics {
    No -- vi hi -- mni na I -- su -- sa da za -- pe -- em
    v~to -- ya chas, Bo -- zhi Sin e Toy pred -- ve -- 
    chen na Ne -- be -- to i vav nas.  Nash U -- chi -- tel,
    nash vo -- di -- tel, is -- tin -- ski -- yat nash Zhi -- vot, Ne -- go --
    vo -- to krep -- ko I -- me da se sla -- vi v~rod i rod.    
  }

  \header {
    title = "На Христа запейте / Na Hrista zapeyte"
  }

} % score

\markup { \hspace #20 \vspace #10
   \fontsize #+5 {
     Missing text here ...
   }
}

} % bookpart
