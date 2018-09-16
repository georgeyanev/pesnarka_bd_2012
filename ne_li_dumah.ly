\version "2.18.2"


melody = \absolute  {
  \clef treble
  \key f \major
  \time 2/4 \tempo "Moderato" 4 = 88
  
  \autoBeamOff
 
 a''8 a''8 a''8 a''8 | % 2
  g''8 f''8 f''8 \autoBeamOn f''16 ( g''16 ) | % 3
  a''4 a''8. ( g''16 ) | % 4
  g''2 | % 5
  c''2 \break | % 6
  
 
  
  g''4 g''8. ( f''16 ) | % 7
   \autoBeamOff
  a''8 f''8 f''8 e''8 | % 8
  e''8 c''8 c''16 d''16 e''16 e''16 \break | % 9
  \time 3/4  g''8 f''8 f''8 e''8 e''8 c''8 | \barNumberCheck #10
  \time 2/4  d''4. e''8 | % 11
  f''4 g''4 | % 12
  a''8 f''8 f''8 e''8 \break | % 13
  e''8 c''8 c''16 d''16 e''16 e''16 | % 14
  \time 3/4  g''8 f''8 f''8 e''8 e''8 c''8 | % 15
  \time 2/4  d''4 d''4 \bar "||"
  \break | % 16
  \autoBeamOn c'4 d'8 ( e'8 ) | % 17
  g'8 f'8 f'8\prall e'8 | % 18
  e'8 c'8 c'16 d'16 e'16 e'16 \break | % 19
  \time 3/4  g'8 f'8 f'8 e'8 e'8 c'8 | \barNumberCheck #20
  \time 2/4  d'4. e'8 | % 21
  f'4 g'4 | % 22
  a'8 f'8 f'8\prall e'8 \break | % 23
  e'8 c'8 c'16 d'16 e'16 e'16 | % 24
  \time 3/4  g'8 f'8 f'8 e'8 e'8 c'8 | % 25
  \time 2/4  d'4 d'4 \bar "|."
}





text = \lyricmode {Не ли ду
  -- мах, ми -- ла ма -- мо, не ли каз -- вах да
  не се -- ди на -- ша Дон -- ка край ог -- ни --
  ще, в_къ -- щи са -- мо да се гу -- ши, а да
  и -- де, ма -- мо, ве -- че на шко -- ло -- то,
  да за -- поч -- не да се у -- чи. На -- ша Дон
  -- ка, ми -- ла ма -- мо, е ро -- де -- на мо --
  ма ум -- на, да -- ро -- ви -- та, та е вре --
  ме от шко -- ло -- то за Жи -- во -- та не --
  що до -- бро да на -- у -- чи.

 
 
}

textL = \lyricmode {Ne li du -- mach mi -- la ma -- mo ne li ka -- zvah da ne se -- di na -- sha
 
 
}

\score{
 \header {
  title = \markup { \fontsize #0 "Не ли думах / Ne li dumah" }
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