\version "2.24.3"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref135
  \tocItem \markup "Аин фаси – Ain fasi"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \relative c' {
      \clef treble
      \key d \minor
      \override Staff.BarLine.gap = 0.5

      \time 5/4
      \tempoFunc "Andante" 4 "63"
      \autoBeamOff
      d8 ( [ e8 ) ]
      f4  d4  f2 | % 2
      d8 ( [  e8 ) ]  f4  d4  a'2
      | % 3
      \stemUp \slurDown a8 ( [ bes16 c16 ] \stemNeutral \slurNeutral bes4
      )  a4 d2 \break | % 4
      e4
      \times 2/3  {
        \once \omit TupletBracket
        \acciaccatura {  g8*3/2 ( } f8 ) ( [
        e8 d8 ) ]
      }

      \times 2/3  {
        cis8 ( [ d8 e8 ) ]
      }
      d2 | % 5
      \time 6/4  | % 5
      f8  f8  f4 e16 ( [
      d16 cis16 d16 ] e8.
      )  d16 d2 \break | % 6
      bes8  bes8  bes4  a16 ( [
      g16  f8 ) -. ]  e16 ( [  f16
      g8 ) ]  a2 | % 7
      \time 7/4  | % 7
      e8  e8   g4  f16 ( [  e16
      d8 ) ]  cis16 ( [  d16  e8 ) ]
      d2  bes8  bes8  \break | % 8
      \time 6/4  | % 8
      bes4 (  a4 )  d4 (  cis4 )
      bes4 (  a8 [  bes8 ) ] | % 9
      \time 3/4  | % 9
      a2  bes8   bes8  |
      \time 6/4  |
      bes4 (  a4 )  d4 (  cis4 )
      bes4 (  a8 [  bes8 ) ] \break | % 11
      \time 3/4  | % 11
      \tempo "            Fine" a2 ^\fermata \bar "!!"
      \tempoFunc "Più mosso" 4 "88" a'8. a16 | % 12
      \compoundMeter #'((4 3 4 ))  | % 12
      a4 bes4  a4  a8.   gis16 \bar "!"
      a2  g8  f8 | \break % 13
      e4  g4  f4  f8. e16 % 14
      \bar "!" d2  e8 f8 | % 15
      \time 6/4 % 15
      g4  a4 d4 d8.
      cis16
      d2 | \bar ".|:-|"
      \time 5/4  | % 16
      d4 f8 ( [ e8 ) ]
      d8 ( [ cis8 ) ] d8 [(bes8)] a8 g8 | % 17
      \time 3/4  | % 17
      a8 ( [  g8 ]  f8 [  e8 ]
      f8 [  g8 ) ] | % 18
      a2  a8 a8 \break | % 19

      \time 4/4  | % 19
      bes4 (  a8 [  gis8 ) ]  a2 |
      d,8 ( [  e8 ) ]  f8 ( [  e8 ) ]
      g?8 [( f8 )]  e8  d8 | % 21
      d8 ( [  cis8  d8  e8 ) ]
      d2
      \bar ":|."

    }


    \addlyrics {
      A -- ин фа -- си, ме -- кри за --
      си, фин --   зе -- мру А -- шан
      --    ме --  ру. Су
      -- а си син __      "ме-" --
      сул. Су -- ма си зен __    фе
      --  сул, Су -- а си син __
      ме --  сул. Су -- ма си __
      зен __  фе --  сул, "Су-" --
      ма си __  зен __  фе  --
      сул. Във не -- бес -- ни -- те ши --
      ри -- ни, във не -- бес -- ни -- те
      глъ -- би -- ни, във не -- бес -- ни
      -- те ви -- "си-" -- ни, де Свет --
      ли -- на __  о -- би -- та --
      ва и в~жи -- во
      --  та веч -- но __   се __
      про -- я -- вя --   ва.
    }

    \addlyrics {
      A -- in fa -- si, me -- kri za --
      si, fin --   ze -- mru A -- šan
      --    me --  ru. Su
      -- a si sin __      "me-" --
      sul. Su -- ma si zen __    fe
      --  sul, Su -- a si sin __
      me --  sul. Su -- ma si __
      zen __  fe --  sul, "Su-" --
      ma si __  zen __  fe  --
      sul. Văv ne -- bes -- ni -- te ši --
      ri -- ni, văv ne -- bes -- ni -- te
      glă -- bi -- ni, văv ne -- bes -- ni
      -- te vi -- si -- ni, de Svet --
      li -- na __  o -- bi -- ta --
      va i v~ži -- vo
      --  ta več -- no __   se __
      pro -- ja -- vja --   va.
    }

    \header {
      title = \titleFunc "Аин фаси" "Ain fasi"
    }

    \midi{}

  } % score

  \markup \empty-one

  \markup \dc-two "D.C. al Fine"""

  \pageBreak


  % include foreign translation(s) of the song
  \include "../../lyrics/de/135_ain_fasi_lyrics_de.ly"

} % bookpart
