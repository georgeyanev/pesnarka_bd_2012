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
    \key a \minor
    \time 3/4 \tempo "Larghetto" 4 = 58
    \partial 4
    \autoBeamOff
 
     e'8 e' a'4 b' c''8 b' |  a'4 a' b'8 b' | c''4 c'' d''8 c'' \break | % 5

     b'4 a' e''8 e'' | e''4 d'' c''8 d'' | e''2 c''8 c'' | c''4 b' c''8 b' \break |

     a'2 e''8 d'' \repeat volta 2 {| c''4 c'' d''8 c'' |  b'4 b' c''8 b' \break | 
                              
     a'4 gis' a'8 b' | }  \alternative { { c''4 b' a'8 b' | c''4 d'' e''8 f'' | e''2 e''8 d''  \break |  }                            
  
    { c''4 b' c''8 b'8 | a'4 gis'4 a'8 b'8 | a'2.| \bar "|." } }
  }
  
  \addlyrics {
    Рос -- на кап -- ко, свят ла -- зу -- рен, чист, кра -- сив и тих, без -- 
    бу -- рен, мир на рай -- ски -- я Жи -- вот, мир на рай -- ски -- я Жи -- 
    вот! В~те -- бе, кап -- ко, ви -- кам всич -- ки бра -- тя 
    ми -- ли и се -- стрич -- ки, да ти ста -- не -- ме на -- род. В~те -- бе,
    стрич -- ки, да ти ста -- не -- ме на -- род.  
  }

\addlyrics {
    Ros -- na kap -- ko, svyat la -- zu -- ren, chist, kra -- siv i tih, bez -- 
    bu -- ren, mir na ray -- ski -- ya ZHi -- vot, mir na ray -- ski -- ya ZHi -- 
    vot! V~te -- be, kap -- ko, vi -- kam vsich -- ki bra -- tya 
    mi -- li i se -- strich -- ki, da ti sta -- ne -- me na -- rod. V~te -- be,
    strich -- ki, da ti sta -- ne -- me na -- rod.  
  }
  
  \header {
    title = "Росна капка / Rosna kapka"
  }

} % score

\markup { \hspace #20 \vspace #10
   \fontsize #+5 {
     Missing text here ...
   }
}

} % bookpart
