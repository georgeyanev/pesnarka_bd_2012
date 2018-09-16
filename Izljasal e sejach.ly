


melody = \absolute  {
  \clef treble
  \key c \major
  \time 3/4 \tempo "Moderato" 4 = 144
 \partial 4
 
 g'4| e''2 d''4| c''2 b'4|d''2 c''4| b'2. (|a'2.) g'2. (| \break
 
 g'4 ) r4 g'4 | a'2 a'4 | b'2 b'4 | c''2 d''4 | e''2 \fermata e''4 | \break
 
 \repeat volta 2 { g''2 f''4 | e''2 d''4 | d''2 c''4 | e''2.| d''2. ( |d''4) r4 g'4| a'2 g'4| \break
 
 c''2 b'4 | }  \alternative {  {  c''2 d''4| e''2. (| e''4 ) r4  e''4| }  { e''2 d''4 | c''2. (| c''4 )  r4 g'4  }  }  \break
 
 \tempo "Piu mosso" 8 = 184
 
 \repeat volta 2 {  c''2 c''4 | c''4 ( b'4 ) c''4 | d''2 c''4 | b'2. (| b'4 ) r4 b'4 | a'2 a'4 | \break
 
 a'4 ( g'4 ) a'4 | b'2 a'4 | g'2. ( | g'4 ) r4 a'4 | a'2 a'4 | c''4 ( b'4) a'4 | a'2 e'4 |  \break
 
 }  \alternative {  {  f'2. (|  f'4 )  r4 f'4 | f'2 f'4 | f'4 ( e'4 ) f'4 | g'2 f'4 |e'2. (| e'4 ) r4 g'4   \break }
 
{  f'2. (|  f'4 ) r4 g'4 | g'2 g'4 | a'2 a'4 | b'2 b'4 | c''2. ( | c''2 s4) |  \break  } }
 
 
 
 

}

text = \lyricmode {Из -- ля -- зъл е се -- яч да се -- е
                   
пре -- крас -- но бла -- го нов Жи -- вот. И 

се -- е той и ти -- хо пе -- е пред все -- ки

дом и все -- ки род. И все -- ки род. Без --

це -- нен дар е Лю -- бов -- та кра --  си -- во

чув -- ство О -- бич -- та и бла -- го де -- ло Ми -- лост -- 

та о -- би -- лен из -- вор Мъ -- дрост -- та. Без --

та о -- би -- лен из -- вор Мъ -- дрост -- та.

 
 
}

textL = \lyricmode {Iz -- lja -- zăl e se -- jač da se -- e
                   
pre -- kras -- no bla -- go nov Ži -- vot. I 

se -- e toj i ti -- cho pe -- e pred vse -- ki

dom i vse -- ki rod. I vse -- ki rod. Bez --

ce -- nen dar e Lju -- bov -- ta kra --  si -- vo

čuv -- stvo O -- bič -- ta i bla -- go de -- lo Mi -- lost -- 

ta o -- bi -- len iz -- vor Mă -- drost -- ta. Bez --

ta o -- bi -- len iz -- vor Mă -- drost -- ta.
 
 
}

\score{
 \header {
  title = \markup { \fontsize #0 "Излязъл е сеяч / Izljasal e sejach" }
  %subtitle = \markup \center-column { " " \vspace #1 } 
  
  tagline = " " %supress footer Music engraving by LilyPond 2.18.0—www.lilypond.org


}
  <<
    \new Voice = "one" {
      
      \melody
    }
    \new Lyrics \lyricsto "one" \text
    \new Lyrics \lyricsto "one" \textL
  >>
 
}