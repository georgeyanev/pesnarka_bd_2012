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
    \key f \major
    \time 2/4 \tempo "Tempo di marcia" 4 = 100
    \autoBeamOff
    c'4 f' | a'8 g' f' e' | g'8 d'4. | c'4 f' \break |
    g'8 a' bes' c'' | a'4. r8 \repeat volta 2 {  | c''4 c'' | d''8 c'' bes' a' | c''8 g'4. \break |
    c'4  f'4 | g'8 a' bes' c'' a'4 g'8 g' | f'4. r8 } \break
  }
  
  \addlyrics {
    Дър -- зост във Хри -- ста, дру -- га -- ри, с~Не -- го 
    да вър -- вим на -- пред, Той е ца -- рят на Жи -- во -- та, 
    цар -- ство -- то Му е на -- вред, е на -- вред.
  }

  \addlyrics {
    Dar -- zost vav Hri -- sta, dru -- ga -- ri, s~Ne -- go 
    da var -- vim na -- pred, Toy e tsa -- ryat na ZHi -- vo -- ta, 
    tsar -- stvo -- to Mu e na -- vred, e na -- vred.
  }

  \header {
    title = "Дързост в Христа / Darzost v Hrista"
  }

} % score

\markup { \hspace #20 \vspace #10
   \fontsize #+5 {
     Missing text here ...
   }
}

} % bookpart
