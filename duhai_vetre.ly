


melody = \absolute  {
  \clef treble
  \key d \major
  \time 3/4 \tempo "Moderato" 4 = 84
 
 \repeat volta 2 { fis'8. fis'16 fis'4. fis'8 | \time 4/4  g'8 e'8 fis'8 d'8 e'2 | \time 3/4  e'8. e'16 e'4. e'8 \break |


\time 4/4  fis'8 d'8 e'8 cis'8 d'2 | \time 3/4  fis'8. fis'16 b'4. cis''8 | \time 4/4 } \alternative { { d''8 b'8 cis''8 ais'8 b'2 } } \break | }


d''8 -"за край" b'8 cis''8 ais'8 b'4. \tempo 4=70 b'8 -"," -\markup{ \italic {maestoso, ad libitum} } | d''2 cis''4 b'4 | 






text = \lyricmode {  Бо  --  жи  --
   е  --  то   Слън  --  це   гре  --  е   днес,   Бо  --  жи  --  е 
  --  то   Слън  --  це   гре  --  е   днес,   Бо  --  жи  --  е  --
   то   Слън  --  це   гре  --  е   днес.   Слън  --  це   гре  --  е 
   днес   за   теб,   бъл  --  га  --  ри  --  но!   Ду  --  хай, 
   ве  --  тре,   ти  --  хо   ду  --  хай,   ти  --  хо   ду  --
   хай,   ми  --  ло   гле  --  дай,   ти  --  хо   ду  --  хай, 
   лис  --  те   раз  --  вий.   Лист   раз  --  вя  --  вай,   цвят 
   раз  --  тва  --  ряй,   цвят   раз  --  тва  --  ряй,   плод 
   раз  --  да  --  вай,   цвят   раз  --  тва  --  ряй,   плод   раз 
  --  да  --  вай.   Хай   ди   ди   ди   ди,   да   си   и  --  ди, 
   хай   ди   ди   ди   ди,   да   се   у  --  чи,   да   се   у  --
   чи,   да   по  --  лу  --  чи,   да   по  --  лу  --  чи,   да 
   се   у  --  чи.   да   се   у  --  чи.   Хай   ди   ди   ди   ди, 
   да   си   и  --  ди,   да   си   и  --  ди,   До  --  бро   да 
   ви  --  ди. 

 
 
}

textL = \lyricmode {
 
 
}

\score{
 \header {
  title = \markup { \fontsize #0 "Духай ветре / Duchai vetre" }
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