\version "2.26.0"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref168
  \tocItem \markup "Кажи ми Ти Истината II"
\paper {
  print-all-headers = ##t
  print-page-number = ##t
  print-first-page-number = ##t


  % put page numbers on the top and change the font style.
  oddHeaderMarkup = \markup
  \fill-line {
    ""
    \unless \on-first-page-of-part \fromproperty #'header:instrument
    \if \should-print-page-number \abs-fontsize #7 { \number \fromproperty #'page:page-number-string }
  }
  %% evenHeaderMarkup would inherit the value of
  %% oddHeaderMarkup if it were not defined here
  evenHeaderMarkup = \markup
  \fill-line {
    \if \should-print-page-number \abs-fontsize #7 { \number \fromproperty #'page:page-number-string }
    \unless \on-first-page-of-part \fromproperty #'header:instrument
    ""
  }

  oddFooterMarkup = \markup ""

  evenFooterMarkup = ""
  left-margin = 1.5\cm
  right-margin = 1.5\cm
  top-margin = 1\cm
  bottom-margin = 1.2\cm
  ragged-bottom = ##t % do not spread the staves to fill the whole vertical space
  top-markup-spacing.basic-distance = 0\mm % margin between page number and system for the first page
  top-system-spacing.basic-distance = 10\mm % margin between page number and system for the other pages

  % change distance between staves
  system-system-spacing =
  #'((basic-distance . 14)
     (minimum-distance . 6)
     (padding . 1)
     (stretchability . 12))
}
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute {
      \clef treble
      \key g \major

      \tempoFunc "Lento" 4 "50"
      \omit Score.TimeSignature
      \cadenzaOn % allows custom bar lines
      \autoBeamOff


      d'4 b'4. a'8 g'4 fis'8. e'16 e'4 d'2 \bar"!" \break
      d'8 e'8 fis'8 g'8 a'8 b'8 d''8 ^\fermata c''4.
      b'8 a'8 g'8 b'4. a'8 g'2 ~ g'4 \bar"!" \break d'8 b'4. a'8 g'4 fis'8.  e'16  e'4 d'2 \bar"!" \break
      d'8 e'8  fis'8  g'8  a'8
      b'8  d''8 ~ ^\fermata d''4.  c''8  b'2  (a'4)
      g'2 \bar"!" \break
      b'4  a'4
      g'4  fis'4  
      a'4. (  g'8 )
      fis'4  e'4  
      e'4. (  fis'8 )  
      d'2 \bar"!" \break 
      c'4  c'4  
      e'4  d'4 
      c'4.  d'8 b2 
      d'4  g'4  
      b'4  a'4  
      g'4 (  fis'4 )
      g'2 \bar"!" \break
      g'4  a'8  b'8  
      d''4 (  c''4 )  
      b'4  e''4  
      d''4  a'4  
      g'4  fis'4
      g'2 \bar"!" \break d'4  
      b'4. ( a'8 )  g'4  
      fis'8. e'16 e'4 (  
      d'2 ) \bar"!" \break d'8
      e'8  fis'8  g'8 a'8
      b'4  
      d''4 (  c''4 )  
      b'2  a'4 \bar"!" \break 
      g'4  fis'4  g'4  
      b'2  a'4 
      g'2 s4 \bar "|."
    }

    \addlyrics {
      Ка -- жи ми Ти Ис -- ти -- на -- та,
      ко -- я -- то но -- си сво -- бо --
      да за мо -- я -- та ду -- ша. __
      Ка -- жи ми Ти Ис -- ти -- на -- та,
      ко -- я -- то от Лю -- бов -- та __
      из -- ли --  за и от Мъд --
      рост -- та __  про -- си -- я --
      ва. Са -- мо та -- зи Ис -- ти -- на
      но -- си ве -- чен жи -- вот и
      сво -- бо -- да __  за чо -- веш --
      ка -- та ду -- ша. Ще хо -- дя
      в~то -- я път __ на Ис -- ти --
      на -- та и жи -- во -- та, Гос --
      по -- ди, Бо -- же мой. Ка -- жи ми
      Ти Ис -- ти -- на -- та, ко -- я --
      то но -- си сво -- бо -- да за мо
      -- я -- та ду -- ша.}

      \header {
        title = \titleFunc #'ref_desc_11 "Кажи ми Ти Истината II" "Kaži mi Ti Istinata II"
      }

      \midi{}

    } % score


  }
