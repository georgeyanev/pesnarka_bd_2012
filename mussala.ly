


melody = \absolute  {
  \clef treble
  \key c \major
  \time 3/4 \tempo "Andantino" 4 = 69

c'4 e'4 g'4 | c''2 ( d''16 c'' b' c'' ) |  d''4 c''4 a'4 | g'2 g'4 | d''2 c''4 \break |

b'4 ( a'4 ) g'4 | a'2 g'4 | c''2.| \time 6/4 e'2 d'4. c'8 g'2 | \time 4/4 c'4 e'4  g'2  | \break

e'4 g'4 c''2 |\time 6/4 b'4 ( d''4 ) c''4 ( a'4 ) g'2 | e'2 d'4. c'8 c'2 | \break 

\time 3/4 \partial 4  g'4 | g'8 ( fis'8 g'8 a'8 ) g'4 | c''2 d''4 | \time 2/4 c''4 a'4 |\time 3/4 g'2 g'4 | d''2 e''4 |  \break 

\time 4/4 d''4 c'' c'' b' | \time 6/4 c''4 a' g' fis' g'2 \fermata | \time 4/4 c'4 e'4 g'2 | \break

e'4 g'4 c''2 | \time 4/4 b'4 ( d''4 ) c''4 ( a'4 ) | \time 3/4 g'2 e'4 | g'4 ( f'4 ) e'4 | \break

c'2 e'4 | \repeat volta 2 { g'2 g'4 | a'2 e'4 | g'2 f'4 f'2 d''4 |\break

d''2 c''4 | b'2 a'4 | a'2 g'4 | g'2 e'4 | g'2 e'4 | e'2. \break

c'2 e'4 | g'2. | e'2 g'4 | c''2. | \time 4/4 b'4 ( b'4 ) c''4 ( a'4 ) \break

\time 3/4 g'2 e'4 | g'4 ( f'4 ) e'4 } \alternative { { c'2 e'4 } {c'2. } }


}

text = \lyricmode { Е -- дин си ти мой Му -- са -- ла све -- ще -- но
                    
                    мя -- сто, Бо -- жи връх.  Мой Му -- са -- ла, Му -- са -- ла,
                    
                    Му -- са -- ла, Му -- са -- ла, мой Му -- са -- ла. 
                    
                    През я -- сен ден на про -- лет -- та ви -- де -- ли -- 
                    
                    ли сте из -- гре -- ва от Му -- са -- ла?!    Му -- са -- ла, 
                    
                    Му -- са -- ла,  Му -- са -- ла,  от Му -- са -- ла! При пър -- ви
                    
                    лъч на слън -- це -- то вдъх -- на -- ли ли сте ле -- ки дъх на Му -- са -- ла
                    
                    Му -- са -- ла, Му -- са -- ла, Му -- са -- ла, на Му -- са -- ла! При ла!

 
 
}

textL = \lyricmode {
 
 
}

\score{
 \header {
  title = \markup { \fontsize #-3 "Мусала / Mussala" }
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