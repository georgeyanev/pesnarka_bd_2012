\version "2.18.2"

\paper {
  print-all-headers = ##t
  left-margin = 2\cm
  right-margin = 2\cm
}

\header {
  tagline = ##f
}

\bookpart {
melody = \absolute  {
  \clef treble
  \key d \major
  \time 2/4 \tempo "Grave" 4 = 40
 \partial 4
 
 \autoBeamOff
 
 d'8 fis'8|  a'4 d''4 |  a'4 d'8 e'8 | fis'4 e'8 e'8 \break |
 
 \time 3/4  d'2 d''8 cis''8 | b'4 a'4 fis'8 g'8 | \time 2/4  a'4 b'8 a'8 | \time 3/4  a'2 e''8 d''8 \break |
 
 cis''4 b'4 a'8 b'8| \time 2/4 a'4 b'8 a'8 | \time 3/4 a'2 b'8 a'8 |\break
 
 g'4 g'4 fis'8 g'8 | \time 2/4  a'4 b'8 a'8 | \time 3/4  a'2  a'8 a'8 \break
 
 \repeat volta 3 { d''4 a'4 b'8 a'8 |  d''4 a'4 e''8 d''8 |  cis''4 b'4 a'8 b'8 \break |
                   
 a'4 a'4 b'8 a'8 | g'4 g'4 fis'8 g'8 | a'4 a'4 d'8 e'8 \break | 
 
 fis'4 fis'4 | a'4  e'4 | } \alternative { { e'2  | \time 3/4 d'2 a'8 a'8  | } { \time 2/4 e'2 | d'2 | \break } } 
 





}

text = \lyricmode {   Бла -- го --
  сла -- вяй, ду -- ше мо -- я, Гос -- по -- да!
  Не за -- бра -- вяй вси -- те Му ми -- ло --
  сти, не за -- бра -- вяй вси -- те Му бла -- го
  -- сти, не за -- бра -- вяй вси -- те Му до --
  бри -- ни! Не за -- бра -- вяй ми -- лост -- та
  Му, не за -- бра -- вяй бла -- гост -- та Му, не
  за -- бра -- вяй О -- бич -- та Му, не за -- бра
  -- вяй Лю -- бов -- та Му! Не за -- та Му!

 
 
}

textL = \lyricmode {Bla -- go --
  sla -- vjaj, du -- sche mo -- ja, Gos -- po -- da!
  Ne sa -- bra -- vjaj vsi -- te Mu mi -- lo --
  sti, ne sa -- bra -- vjaj vsi -- te Mu bla -- go
  -- sti, ne sa -- bra -- vjaj vsi -- te Mu do --
  bri -- ni! Ne sa -- bra -- vjaj mi -- lost -- ta
  Mu, ne sa -- bra -- vjaj bla -- gost -- ta Mu, ne
  sa -- bra -- vjaj O -- bitsch -- ta Mu, ne za -- bra
  -- vjaj Lju -- bov -- ta Mu! Ne za -- ta Mu!
 
 
}

\score{
 \header {
  title = \markup { \fontsize #-3 "Благославяй / Blagoslavjai" }
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
} % bookpart
