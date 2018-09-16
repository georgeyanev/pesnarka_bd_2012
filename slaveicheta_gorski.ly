


melody = \absolute  {
  \clef treble
  \key g \minor
  \time 2/4 \tempo "Tempo di marcia" 4 = 112
  
  \autoBeamOff
  
  bes'4. a'8 | c''8 bes' a' g' |  g'2 |  f'2 | a'4. g'8 \break | 
 
a'8 g' es' g' |  f'2 |  d'2 \repeat volta 2 { es'4. es'8 | g'8 g' f' es' \break | 

f'2 | bes'2 d''4. bes'8 | f'8 f' d'' d'' | c''2  bes'2 |\break

}

}

text = \lyricmode { Ний сме сла
  -- вей -- че -- та гор -- ски, с_пес -- ни сла --
  вим Не -- бе -- са -- та, чув -- ства роб -- ски,
  гри -- жи хор -- ски с_пес -- ни го -- ним от Зе
  -- мя -- та.

 
 
}

textL = \lyricmode {Nij sme sla
  -- vej -- tsche -- ta gor -- ski, s~pes -- ni sla --
  vim Ne -- be -- sa -- ta, tschuv -- stva rob -- ski,
  gri -- shi chor -- ski s_pes -- ni go -- nim ot Se
  -- mja -- ta.
 
 
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