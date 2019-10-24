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
    \time 2/4 \tempo "Andante" 4 = 72
    \partial 4
    \autoBeamOff
 
    e'8 e'8 | a'4 b' | c''4 b' | a'4 gis' ~ | gis'4 e'8 e' | e''4 f'' \break | 

    e''4 d'' |  c''4 \fermata b'8 a' |  gis'4 f' | e'4 dis' |  f'4 e' ~ |  e'4 b'8 c'' \break |

    d''4 e'' |  c''4 b' | a'4 \fermata g'?8 g' \repeat volta 2 {   |  c''4 g' |  c''4 d'' | e''4 c'' ~ \break | 

    c''4 e''8 f'' | g''4 f'' | e''4 d'' | c''4 \fermata e'8 e' | a'4 b' | c''4 d'' \break |

    e''4 b' ~ | b'4 d''8 d'' c''4 b' | a'4 gis' |} \alternative { { a'4 \fermata g'?8 g'  } { a'4\fermata } } \bar "|."
  }
  
  \addlyrics {
    Си -- не мой, па -- зи Жи -- во -- та, скри -- ти -- я у
    те -- бе жар; той без -- це -- нен е по сми -- съл и ве -- 
    ли -- ко -- ле -- пен дар. Дух без -- смър -- тен, Дух не -- тле -- нен, __
    туй, ко -- е -- то веч -- но бди и ра -- бо -- ти без у --
    мо -- ра, не -- пре -- стан -- но в_теб гра -- ди! Дух без -- ди.  
  }

  \addlyrics {
    Si -- ne moy, pa -- zi Zhi -- vo -- ta, skri -- ti -- ya u
    te -- be zhar; toy bez -- tse -- nen e po smi -- sal i ve -- 
    li -- ko -- le -- pen dar. Duh bez -- smar -- ten, Duh ne -- tle -- nen, __
    tuy, ko -- e -- to vech -- no bdi i ra -- bo -- ti bez u --
    mo -- ra, ne -- pre -- stan -- no v_teb gra -- di! Duh bez -- di.  
  }


  \header {
    title = "Сине мой, пази Живота! / Sine moy, pazi Zhivota!"
  }

} % score

\markup { \hspace #20 \vspace #10
   \fontsize #+5 {
     Missing text here ...
   }
}

} % bookpart
