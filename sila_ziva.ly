


melody = \absolute  {
  \clef treble
  \key g \major
  \time 7/16 \tempo "Moderato" 4 = 176
  


\autoBeamOff


g8 ( b ) d'8. | d'8 ( g' ) d'8. | g8 ( b ) d'8. | d'8 ( g' ) d'8. | d'8 g' d'8. \break | % 6
  
 d'8 g' d'8. | d'8 c'' b'8. | a'8 b' g'8. | d'8 c'' b'8. | a'8 b' g'8. \break | 

\repeat volta 2 { g'8 b' b'8. | b'8 d'' d''8. | c''8 d''8 b'8. | a'8 b' g'8. } \break

\key g \minor \repeat volta 2 { d'8 d'' d''8. | d'8 c'' c''8. | d'8 bes' b'8. | a'8 g' g' g'16 | g'4 ~ g'8. } \break |

\repeat volta 2 { a'8 a' a' c''16 | b'4 ~ b'8. | a'8 g' g' g'16 |} \alternative { {  g'4 ( ~ g'8 f'16 )  | } { g'4 ~ g'8. | } }



}

text = \lyricmode {  Си -- ла жи
  -- ва, Си -- ла жи -- ва, ка -- жи ми, ка -- жи
  ми де во -- да из -- ви -- ра, де во -- да из
  -- ви -- ра. Из -- ви -- ра, из -- ви -- ра, де
  во -- да из -- ви -- ра. Ка -- жи ми, ка -- жи
  ми, ка -- жи ми слад -- ки ду -- ми две. Твой --
  те ду -- ми две,  __ слад -- ки ду -- ми две.
  две. Скръб -- та си ти ка -- жи, сър -- це си
  ти от -- во -- ри на слън -- че -- ви лъ -- чи,
  на слън -- че -- ви лъ -- чи, на слън -- че --
  ви лъ -- чи, на слън -- че -- ви лъ -- чи. Лъ --
  чи от Бо -- га бла -- гост ще ти до -- не --
  сат и в_ду -- ша ти Ра -- дост ще вне -- сат,
  и в_ду -- ша ти Ра -- дост ще вне -- сат, и
  в_ду -- ша ти Ра -- дост ще вне -- сат, и в_ду
  -- ша ти Ра -- дост ще вне -- сат, и в_ду -- ша
  ти Ра -- дост ще вне -- сат, Ра -- дост ще вне
  -- сат, Ра -- дост ще вне -- сат, Ра -- дост ще
  вне -- сат, Ра -- дост ще вне -- сат, Ра -- дост
  ще вне -- сат, Ра -- дост ще вне -- сат, Ра --
  дост ще вне -- сат, Ра -- дост ще вне -- сат, и
  в_ду -- ша ти Ра -- дост ще вне -- сат.

 
 
}

textL = \lyricmode { Si -- la zhi --
  va, Si -- la zhi -- va, ka -- zhi mi, ka -- zhi mi de vo -- da
  iz -- vi -- ra, de vo -- da iz -- vi -- ra. Iz -- vi -- ra, iz
  -- vi -- ra, de vo -- da iz -- vi -- ra. Ka -- zhi mi, ka --
  zhi mi, ka -- zhi mi slad -- ki du -- mi dve. Tvoy -- te du --
  mi dve, slad -- ki du -- mi dve. dve. Skrab -- ta si ti ka --
  zhi, sar -- tse si ti ot -- vo -- ri na slan -- che -- vi la --
  chi, na slan -- che -- vi la -- chi, na slan -- che -- vi la --
  chi, na slan -- che -- vi la -- chi. La -- chi ot Bo -- ga bla
  -- gost shte ti do -- ne -- sat i v_du -- sha ti Ra -- dost shte
  vne -- sat, i v_du -- sha ti Ra -- dost shte vne -- sat, i
  v_du -- sha ti Ra -- dost shte vne -- sat, i v_du -- sha ti Ra
  -- dost shte vne -- sat, i v_du -- sha ti Ra -- dost shte vne --
  sat, Ra -- dost shte vne -- sat, Ra -- dost shte vne -- sat,
  Ra -- dost shte vne -- sat, Ra -- dost shte vne -- sat, Ra --
  dost shte vne -- sat, Ra -- dost shte vne -- sat, Ra -- dost
  shte vne -- sat, Ra -- dost shte vne -- sat, i v_du -- sha ti
  Ra -- dost shte vne -- sat.
 
 
}

\score{
 \header {
  title = \markup { \fontsize #-3 "Сила жива / Sila zhiva" }
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