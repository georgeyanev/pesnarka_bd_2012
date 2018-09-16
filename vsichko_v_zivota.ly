\version "2.18.2"



melody = \absolute  {
  \clef treble
  \key c \major
  \time 4/4 \tempo "Moderato" 4 = 88
 
c'4 e'8. f'16 g'4 e'4 | % 2
  a'4 g'8. e'16 g'4 g'4 \break | % 3
  g'4 f'8. e'16 f'4 a'4 | % 4
  \time 5/4  g'4 g'8. fis'16 g'2 c''4 | % 5
  \time 2/4  b'4 a'8 b'8 \break | % 6
  \time 4/4  c''4 c''2 c''4 \repeat volta 2 {
    | % 7
    g'4 e'8. f'16 g'4 g'4 | % 8
    a'4 g'8 ( e'8 ) f'4 d'4 | % 9
    d'4 d'8 e'8 f'4 a'4 \break | \barNumberCheck #10
    g'2 e'8 d'8 e'8 f'8 | % 11
    \time 2/4  g'2 | % 12
    \time 5/4  a'4 g'4 a'8 b'8 c''2 | % 13
    \time 4/4  d''8 ( c''8 ) b'8 ( a'8 ) g'2 \break | % 14
    d'8 ( e'8 ) f'8 ( e'8 ) g'8 ( f'8 ) e'8 d'8
  }
  \alternative {
    {
      | % 15
      c'2. c''4 | % 16
      c'2. r4
    }
  }
}





text = \lyricmode {  Всич -- ко
  в_Жи -- во -- та е по -- сти -- жи -- мо, ко --
  га -- то вре -- ме -- то е до -- бро и ний сме
  ра -- зум -- ни. За -- що -- то До -- бро -- то
  е ос -- но -- ва, а Ра -- зум -- ност -- та
  цел, с_ко -- и -- то Ду -- хът гра -- ди бъд --
  ни -- ни, бъд -- ни -- ни, ве -- ли -- ки бъд --
  ни -- ни. За -- ни.

 
 
}

textL = \lyricmode { Vsich -- ko
  v_zhi -- vo -- ta e pos -- ti -- zhi -- mo, ko -- ga -- to vre
  -- me -- to e dob -- ro, i niy sme ra -- zum -- ni. Za -- shto
  -- to dob -- ro -- to e os -- no -- va, a ra -- zum -- nost -- ta
  tsel, s_ko -- i -- to Du -- hat gra -- di bad -- ni -- ni,
  bad -- ni -- ni, ve -- li -- ki bad -- ni -- ni. Za -- ni.
 
 
}

\score{
 \header {
  title = \markup { \fontsize #0 "Песен на зората / Pesen na sorata" }
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