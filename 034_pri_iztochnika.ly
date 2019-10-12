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
  \key a \minor
  \time 3/4 \tempo "Moderato" 4 = 88
  \partial 4
    e'4 |  a'2 b'4 | c''2 b'4 | a'2 e''4 | e''2 \fermata d''4 | e''2 d''4 | c''2 b'4 \break |
    a'2 gis'4 | b'2. | b'2 \fermata e'4 |  a'2 b'4 | c''2 b'4 | a'2 g'4 | f'2 \fermata f'4 \break |
    e'2 d'4 | c'2 d'4 | e'2 gis'4 | b'2. | a'2 \fermata a'4 | f'2. | a'2 g'4 \break |
    f'2. | e'2 d'4 e'2 d'4 | c'2 b4 | e'2 gis'4 | b'2. | a'2.\fermata  | \bar "||" \break
  }
  
  \addlyrics {
    Ви -- сок
    пла -- нин -- ски връх блес -- ти, об -- лян с~лъ
    -- чи от не -- бе -- са -- та. Там чис -- то из
    -- вор -- че шур -- ти и в~химн из -- ли -- ва
    си ду -- ша -- та, ду -- ша -- та, ду -- ша --
    та. И в~химн из -- ли -- ва си ду -- ша -- та.
  }

  \addlyrics {
    Vi -- sok
    pla -- nin -- ski vrah bles -- ti, ob -- lyan s~la
    -- chi ot ne -- be -- sa -- ta. Tam chis -- to iz
    -- vor -- che shur -- ti i v~himn iz -- li -- va
    si du -- sha -- ta, du -- sha -- ta, du -- sha --
    ta. I v~himn iz -- li -- va si du -- sha -- ta.
  }

  \header {
    title = "При източника / Pri iztochnika"
  }

} % score

\markup { \hspace #20 \vspace #10
   \fontsize #+5 {
     Missing text here ...
   }
}

} % bookpart
