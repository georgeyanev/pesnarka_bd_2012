


melody = \absolute  {
  \clef treble
  \key d \major
  \time 3/4 \tempo "Moderato" 4 = 72 

a2 d'4 | e'2 fis'8 (e'8) | d'2. | e'2 fis'4 | g'2. | \break

a'4 g'4 fis'4 | e'2. | e'2. | g'2. | b'4 a'4 b'4 | b'2. | a'2. | \break

fis'2. | a'4 (g'4) e'4 | e'2. | d'2 \fermata \tempo "Più mosso" 4 = 88  fis'4  | a'2 a'4 | b'2 fis'4 | \break

a'2. | a'2 a'4 | b'2 b'4 | b'2 ( cis''4 ) | a'2. ( | a'4 ) r4 a'4 | \break

d''2 b'4 | b'2 ( cis''4 ) | a'2. |\tempo "Meno mosso" fis'2 fis'4  | g'2 e'4 | e'2 fis'4 | \break

d'2.  \bar "||" \tempo "a tempo" 4=80 a2 a4 | d'2 ( e'4 ) | fis'2 ( g'4 ) | a'2 \fermata a'4 | b'2 a'4 | \break

a'2. | fis'2. |\tempo "Più mosso" 4 = 88 b'2 a'4 | fis'2 g'4 | a'2. | g'2 fis'4 | \break

a'2 b'4 | a'2. | a'2 a'4 | d''2 b'4 | a'2. | a'2 a'4 | \break

d''2 b'4 | b'2 ( cis''4 ) | a'2 g'4 |fis'2  fis'4 | g'2  e'4 | e'2 ( fis'4 ) | \break

d'2. | fis'2 fis'4 | fis'2. | e'4 ( fis'4 )  g'4 | fis'2 \fermata fis'4 |fis'2.   \break 

g'2 a4  \bar "||" \repeat unfold 5 { a2 d'4 | e'2. | e'4 (fis'4 ) g'4 | fis'2 \fermata fis'4 | fis'2 g'4 |

a'2. | b'2 g'4 | g'2 a'4 | fis'2 \fermata b'4 | b'2 b'4 | d''2. \break

cis''2  b'4 | b'2 ( cis''4 ) | a'2 g'4 | fis'2 ( e'4 ) \rit | d'2.^\fine |  \break



fis'2 g'4 | a'2 a'4 | a'4 ( b'4 ) a'4 | fis'2 g'4 | \break

a'2. | d''2. | cis''2. | b'2 ( cis''4 ) | b'2. | \break


a'2 fis'4 | a'2 g'4 | fis'2 e'4 | d'2 g4 \dcapo  \bar"|."  \break }

}

text = \lyricmode { Гре -- е Слън -- це -- то, свет -- ло е 
                    
                    на -- вся -- къ -- де,  об -- ви -- та е Зе -- мя -- та със то -- пла дре -- ха.

Съ -- буж -- да всич  --  ко жи -- во,

те -- че во -- да -- та, рас -- те тре -- ва -- та,

све -- жест лъ -- ха на -- всъ -- де.

Вси -- чко се дви -- жи, пъл -- зи и ла -- зи,

хвър -- кат пти -- ци -- те, бя -- гат сър -- ни -- те,

ве -- е вя -- тъ -- рът, а чо -- век -- ът сто -- и

и ми -- сли що да пра -- ви.

Чу -- ва се ра -- дост -- на -- та пе -- сен:

„Ве -- лик си Ти, Го -- спо -- ди,

ве -- ли -- ки са Тво -- и -- те де -- ла,

ве -- ли -- ко е И -- ме -- то Ти над вси -- чко!

Ти ца -- риш във Си -- ла и Жи -- вот,

във Зна -- ни -- е, Мъд -- рост,

Ис -- ти -- на, Лю -- бов.

"Ве --  

 
 
}

textL = \lyricmode {
 
 
}

\score{
 \header {
  title = \markup { \fontsize #1 "Химн на великата душа / Himn na velikata duscha" }
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