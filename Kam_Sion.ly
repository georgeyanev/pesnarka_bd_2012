


melody = \absolute  {
  \clef treble
  \key g \minor
  \time 2/4 \tempo "Tempo di marcia" 4 = 112
  
  \autoBeamOff

\partial 8

f'8 |  bes'4 f'8 bes'16 c'' | d''4 bes'8 d'' | f''8 es'' d'' es'' \break |

c''4. f'8 | c''4 f'8 c''16 d'' | es''4 c''8 d'' | f''8 es'' c'' d'' \break | 

b'4. b'8 \repeat volta 2 { | g''4 f''8 bes'16 c'' d''4 d''8 d'' \break |
                           
 es''8. d''16 c''8 bes' | a'4. g'8 | g''4 f''8 bes'16 c'' \break | 
 
 d''4 d''8 d'' | f''8 es'' c'' d'' | bes'4. bes'8 | }     bes'4.   \break |      

}

text = \lyricmode { С~кри -- ла
  -- та на о -- ре -- ла, Си -- о -- не наш лю --
  бим, стре -- ми -- тел -- но към те -- бе ний
  друж -- но днес ле -- тим. Смърт -- та ни веч не
  пла -- ши, в~нас Дух жи -- ве -- е свят; ед --
  на -- кво нас ни рад -- ва и тоз, и он -- зи
  свят. Смърт -- свят.

 
 
}

textL = \lyricmode { S~kri -- la
  -- ta na o -- re -- la, Si -- o -- ne nasch lju --
  bim, stre -- mi -- tel -- no kym te -- be nij
  drush -- no dnes le -- tim. Smyrt -- ta ni vetsch ne
  pla -- schi, v~nas Duch shi -- ve -- e svjat; ed --
  na -- kvo nas ni rad -- va i tos, i on -- si
  svjat. Smyrt -- svjat.
 
 
}

\score{
 \header {
  title = \markup { \fontsize #-3 "Небето се отваря / Nebeto se otvaria" }
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