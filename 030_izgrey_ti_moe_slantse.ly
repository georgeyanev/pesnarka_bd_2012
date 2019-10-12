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
    \key g \minor
    \time 3/4 \tempo "Moderato" 4 = 40
    \partial 4
 
      d'4 |  g'2 a'4 | bes'2 a'4 | g'2 fis'4 | a'2. | d'2. ~ | d'4 r d'' \break         
      d''2 es''4 | d''2 cis''4 | d''2 es''4 | d''2. ~ | d''4 r c'' | bes'2 bes'4 \break |
      bes'4 ( a' ) bes' | c''2 bes'4 | a'2. | a'2. ~ | a'4 r a' |  bes'2 bes'4 \break |
      c''2 c''4 | d''2 a'4 |  bes'2. ~ |  bes'4 r a' |  bes'2 a'4 |  bes'2 a'4 \break |
      g'2 fis'4 | g'2. ~ | g'4 r d'' | d''2 es''4 | d''2 cis''4 \break |
      d''2 es''4 | d''2. ~ | d''4 r g'' | f''2 es''4 | d''2 d''4 | c''2 bes'4 \break | 
      d''2.~ | d''4 r c'' | bes'2 a'4 | bes'2 a'4 | g'2 fis'4 | g'2.~ | g'4 r2 | \bar "|."\break 
  }
  
  \addlyrics {
    Из -- грей,
    из -- грей ти, мо -- е Слън -- це, за -- що --
    то ча -- кам все -- ки ден; за теб коп -- не --
    е мой -- то сър -- це и в~пъ -- тя си съм из
    -- мо -- рен; ти но -- сиш ми Жи -- вот бла --
    жен. Жи -- вот бла -- жен, Жи -- вот бла -- жен,
    бла -- жен, бла -- жен, Жи -- вот бла -- жен; ти
    но -- сиш ми Жи -- вот бла -- жен.
  }

  \addlyrics {
    Iz -- grey,
    iz -- grey ti, mo -- e Slan -- tse, za -- shto --
    to cha -- kam vse -- ki den; za teb kop -- ne --
    e moy -- to sar -- tse i v~pa -- tya si sam iz
    -- mo -- ren; ti no -- sish mi ZHi -- vot bla --
    zhen. ZHi -- vot bla -- zhen, ZHi -- vot bla -- zhen,
    bla -- zhen, bla -- zhen, ZHi -- vot bla -- zhen; ti
    no -- sish mi ZHi -- vot bla -- zhen.
  }


  \header {
    title = "Изгрей ти, мое Слънце / Izgrey ti, moe Slantse"
  }

} % score

\markup { \hspace #20 \vspace #10
   \fontsize #+5 {
     Missing text here ...
   }
}

} % bookpart
