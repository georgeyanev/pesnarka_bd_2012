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
    \key d \minor
    \time 3/4 \tempo "Andante" 4 = 60
    \autoBeamOff
    \partial 4
    d'8 d' | g'8 ([ a' ]) a'2 | \time 2/4 bes'8 ([ a' ])  bes' ([ c'' ])  | \time 4/4 bes'4 a'2 a'8 a' | \break
    d''4. d''8 c'' ([ d'' ]) d'' ([ c'' ]) \time 3/4  bes'4 a'2 | \time 4/4  a'8 ([ bes' ]) c'' ([ d'' ]) c'' bes' a' g' \break |
    \time 3/4  f'8 ([ g' ]) a'2 | \time 6/4  bes'4. a'8 bes' ([ a' ]) bes' ([ c'' ]) d'' ([ c'' ]) bes' ([ a' ]) \break |
    \time 3/4  |a'8 ([ g'8 ]) a'2 | \time 6/4  d'4. e'8 f'4\staccato e'4\staccato d'\staccato cis'\staccato | \time 4/4  e'2 d' | \bar "|." \break
  }
  
  \addlyrics {
    Страд -- на
    ду -- шо, ти коп -- не -- еш, за как -- во го --
    риш и тле -- еш? Сло -- во -- то Ти, Бо -- же,
    ча -- кам и о -- бил -- на -- та Ти ми -- лост,
    за тях стра -- дам и коп -- не -- я.
  }

  \addlyrics {
    Strad -- na
    du -- sho, ti kop -- ne -- esh, za kak -- vo go --
    rish i tle -- esh? Slo -- vo -- to Ti, Bo -- zhe,
    cha -- kam i o -- bil -- na -- ta Ti mi -- lost,
    za tyah stra -- dam i kop -- ne -- ya.
  }


  \header {
    title = "Страдна душо / Stradna dusho"
  }

} % score

\markup { \hspace #20 \vspace #10
   \fontsize #+5 {
     Missing text here ...
   }
}

} % bookpart
