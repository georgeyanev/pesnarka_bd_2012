
melody = \absolute  {
  \clef treble
  \key d \minor
  \time 3/4 \tempo "Andante" 4 = 72
 \partial 4
 \break


a4^\mp^\< | d'2 e'8.  \noBeam e'16 | f'4^\> ( d'4 cis'8 d'8 |  e'4 ) a4 \! r4 | \break

\time 4/4  | a'2^ \p c''4 bes'4 | a'4 ( g'4 ) a'2 ( | a'4 ) r4 r4 a4^\mf \< | f'2 e'4 d'8 \! ( e'32^\sosten d'32 cis'32 d'32 ) | \break

bes'2^\atempo^\> a'2 ( | a'4 \! ) r4 r4 \times 2/3  { e'8^\< ( f'8 g'8 ) } | a'4 \! \fermata g'4^\> f'4 e'4 |   d'2 \! r2 | \break

a4^\mf d'8 e'8 f'8 ( d'8 ) cis'8 ( d'8 ) | e'8 a8 bes4 ( a8 g8 ) a4 ( | a4 ) r4 r2 | \break

a'4^\mf g'8 f'8 e'8 d'8 d'8 cis'8 | d'4 ( e'4 ) d'2 | \time 3/4  | c''4^\mp bes'4 a'4 | \break

a'2 a'4 | \time 4/4  d''4 c''4 bes'4 ( g'4 ) | a'2. r4 | \time 3/4 | a'2^\mf f'8 d'8 | \break

bes'2 a'4 ( | a'4 ) a4 a4 | e'2 d'4 ( | d'4 ) r4 a4 | d'2^\p^\< e'8. e'16 \! | \break

f'4^\> ( d'4 cis'8 d'8 | \time 4/4  e'4 ) a4 \! a'2^"," ^\> | c''4^\rall bes'4 a'4^\ppp ( g'4 ) | a1 |

}

text = \lyricmode { Кра -- сив е жи -- во -- тът на Aн -- ге -- ли -- те.

Кра -- сив е жи -- во -- тът на на -- ша -- та ду -- ша.

Ти ще спо -- лу -- чиш във жи -- во -- та,

ти ще спо -- лу -- чиш във жи -- во -- та.

Слу -- шай гла -- са на анге -- ли -- те

и ще спо -- лу -- чиш във жи -- во -- та.

Кра -- сив е жи -- во -- тът на ан -- ге -- ли -- те.




 
 
}

textL = \lyricmode { Kra -- siw e shi -- wo -- tаt na An -- ge -- li -- te.

Kra -- siw e shi -- wo -- tаt na na -- scha -- ta du -- scha.

Ti schtsche spo -- lu -- tschisch wаw shi -- wo -- ta,

ti schtsche spo -- lu -- tschisch wаw shi -- wota.

Slu -- schaj gla -- sa na ange -- li -- te

i schtsche spo -- lu -- tschisch wаw shi -- wo -- ta.

Kra -- siw e shi -- wo -- tаt na an -- ge -- li -- te.
 
 
}

\score{
 \header {
  title = \markup { \fontsize #-1 "Ти ще сполучиш в Живота / Ti schte spolutschisch v'jivota" }
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