\version "2.18.2"

\paper {
  print-all-headers = ##t
  print-page-number = ##f 
  left-margin = 2\cm
  right-margin = 2\cm
  ragged-bottom = ##t % do not spread the staves to fill the whole vertical space
}

\header {
  tagline = ##f
}

\bookpart {
\score{
  \layout { 
    indent = 0.0\cm % remove first line indentation
    ragged-last = ##f % do spread last line to fill the whole space
    \context {
      \Score
      \omit BarNumber %remove bar numbers
    } % context
  } % layout

  \new Voice \absolute  {
    \clef treble
    \key c \major
    \time 2/4 \tempo "Vivo" 4 = 104
    \autoBeamOff
    \partial 8 e'8 | a'8  b'8 c''8 d''8 | e''4 c''4 | a'4. a'8 | d''4 e''4 | f''4 d''4 | e''8 ([ d''8 e''8 f''8 ]) | \break 
    e''4. d''8 \repeat volta 2 {| d''4 d''4 |  c''4 b'4 |  c''4 d''4 |  e''4. c''8 |  b'4 d''4 | c''4 b'4 | \break
    a'4 ( gis'8 [b'8]) |} \alternative { { a'4 r8 d''8 } {  a'4 r4 } } 
    \repeat volta 2 { | g'4 g'4 | c''4 d''4 | e''4 f''4 | g''2\break
    | g''4 a''4 |  g''4 f''4 |  e''4 d''4 |  c''2 | a'4 a'4 | a'4 b'4 | c''4 ( d''4 ) | \break   
    e''2 | b'4 d''4| c''4 b'4 |} \alternative { { a'2 | g'2  }  {   a'4 (gis'8[b'8])  | a'4. \bar "|." \break } }
  }
  
  \addlyrics {
    На -- го -- ре о -- ще да вър -- вим, към вър -- хо -- ве -- те бе -- 
    ли, е -- фи -- ра бял да поз -- дра -- вим и снеж -- ни -- те кри -- 
    ста -- ли. е -- ли. Ху -- бост -- та на Бо -- жи свят, 
    бе -- ли -- на -- та, наш е цвят-  веч -- на си -- ла и -- 
    ма, мрак я не об -- зи -- ма. зи -- ма.
  }

  \addlyrics {
    Na -- go -- re o -- shte da var -- vim, kam var -- ho -- ve -- te be -- 
    li, e -- fi -- ra byal da poz -- dra -- vim i snezh -- ni -- te kri -- 
    sta -- li. e -- li. Hu -- bost -- ta na Bo -- zhi svyat, 
    be -- li -- na -- ta, nash e tsvyat-  vech -- na si -- la i -- 
    ma, mrak ya ne ob -- zi -- ma. zi -- ma.
  }

  \header {
    title = "На белия цвят / Na beliya tsvyat"
  }

} % score

\markup { \hspace #20 \vspace #10
   \fontsize #+5 {
     Missing text here ...
   }
}

} % bookpart
