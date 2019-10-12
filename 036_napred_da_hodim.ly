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
    \key g \major
    \time 2/4 \tempo "Tempo di marcia" 4 = 100
    \partial 8
    \autoBeamOff

      b8 | e'8. fis'16 g'8 a' | b'4 b'8 b' | e''8 d'' c'' b' | c''4 c''8 c'' \break |
      d''8 c'' b' a' | b'4 b'8 b' | b'8 a' g' fis' | e'4 e'8 e' \break |
      \repeat volta 2 {
        fis'8. fis'16 fis'8 fis' | 
        fis'4 fis'8 fis' | 
        g'8. g'16 g'8 g' | 
        g'4 g'8 g' | \break 
        
        a'8.  a'16 a'8 a' | 
        b'4. a'8 | 
        b'8 a' g'  fis'8 |
      } \alternative { 
        {  e'4. e'8 |}  
        {e'4. \bar "|." \break } 
        {e'4. \bar "|." \break } 
      }
  }
  
  \addlyrics {
    На -- пред
    да хо -- дим сме -- ло в~чер -- то -- зи -- те
    без -- мъл -- вни на тай -- но -- то поз -- на --
    ние, с~Жи -- вот и Си -- ла пъл -- ни. Кат вих
    -- ри над го -- ри -- те с~дух пла -- мен във
    гър -- ди -- те на -- пред да по -- ле -- тим,
    све -- та да об -- но -- вим! Кат вим!
  }

  \addlyrics {
    Na -- pred
    da ho -- dim sme -- lo v~cher -- to -- zi -- te
    bez -- mal -- vni na tay -- no -- to poz -- na --
    nie, s~ZHi -- vot i Si -- la pal -- ni. Kat vih
    -- ri nad go -- ri -- te s~duh pla -- men vav
    gar -- di -- te na -- pred da po -- le -- tim,
    sve -- ta da ob -- no -- vim! Kat vim!
  }

  \header {
    title = "Напред да ходим / Napred da hodim"
  }
} % score

\markup { \hspace #20 \vspace #10
   \fontsize #+5 {
     Missing text here ...
   }
}

} % bookpart
