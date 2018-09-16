


melody = \absolute  {
  \clef treble
  \key a \minor
  \time 5/4 \tempo "Moderato" 4 = 88
 
 
 a4 c' e'2 c'4 | \time 4/4  e'4 d' c' ( d' ) | e'2. r4 \break |

g'4 e' a' f' | g'4 d' e'2 \fermata | a'4 a' c''4. b'8 | b'2 a' \break |

 g'4 g' f' f' |  f'2 e' | a'4. a'8 c''4 b' | b'4 a' a' a' \break |
 
 g'4 f' e' d' | d'2 c' |  \time 6/4  b4. c'8 d'4 ( e' f' ) e' \break | 
 
 \time 4/4  g'4 e' a' g' | f'4 e' d' c' | c'2 ( b ) | a2. r4 \break | 

}

text = \lyricmode { До -- бър
  ден е свет -- ли -- я ден. Ху -- бав и кра --
  сив е той! Всич -- ко о -- за -- ря -- ва, всич
  -- ко о -- жи -- вя -- ва и в_Жи -- во -- та Бо
  -- жи -- е -- то бла -- го той раз -- да -- ва,
  и в_Жи -- во -- та Бо -- жи -- е -- то бла -- го
  той раз -- да -- ва.

 
 
}

textL = \lyricmode {Do -- bar den e
  svet -- li -- yat den. Hu -- bav i kra -- siv e toy! Vsich -- ko
  o -- za -- rya -- va, vsich -- ko o -- zhi -- vya -- va i v_zhi
  -- vo -- ta Bo -- zhi -- e -- to bla -- go toy raz -- da -- va, i
  v_zhi -- vo -- ta Bo -- zhi -- e -- to bla -- go toy raz -- da --
  va.
 
 
}

\score{
 \header {
  title = \markup { \fontsize #-3 "Добър ден / Dobur den" }
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