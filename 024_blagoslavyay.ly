\version "2.18.2"

\paper {
  #(set-paper-size "a5")
}

\bookpart {
\paper {
  print-all-headers = ##t
  print-page-number = ##t
  print-first-page-number = ##t

  % put page numbers on the bottom
  oddHeaderMarkup = \markup ""
  evenHeaderMarkup = \markup ""
  oddFooterMarkup = \markup
    \fill-line {
      ""
      \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string
    }
  evenFooterMarkup = \markup
    \fill-line {
      \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string
      ""
    }

  left-margin = 1.5\cm
  right-margin = 1.5\cm
  top-margin = 1.6\cm
  bottom-margin = 1.2\cm
  ragged-bottom = ##t % do not spread the staves to fill the whole vertical space

  % change lyrics and titles font (affects notes also)
  fonts =
    #(make-pango-font-tree
     "Times New Roman"
     "DejaVu Sans"
     "DejaVu Sans Mono"
     (/ (* staff-height pt) 3.6))

  % change distance between staves
  system-system-spacing =
    #'((basic-distance . 12)
       (minimum-distance . 6)
       (padding . 1)
       (stretchability . 12))
}

\header {
  tagline = ##f
}

\score{
  \layout { 
    indent = 0.0\cm % remove first line indentation
    ragged-last = ##f % do not spread last line to fill the whole space
    \context {
      \Score
      \omit BarNumber %remove bar numbers
    } % context

    \context { % change staff size
      \Staff
      fontSize = #+0 % affects notes size only
      \override StaffSymbol #'staff-space = #(magstep -3)
      \override StaffSymbol #'thickness = #0.5
      \override BarLine #'hair-thickness = #1
      %\override StaffSymbol #'ledger-line-thickness = #'(0 . 0)
    }

    \context { % adjust space between staff and lyrics and between the two lyric lines
      \Lyrics
      \override VerticalAxisGroup.nonstaff-relatedstaff-spacing = #'((basic-distance . 4.5))
      \override VerticalAxisGroup.nonstaff-nonstaff-spacing = #'((minimum-distance . 2))
    }
  } % layout

  \new Voice \absolute {
    \clef treble
    \key d \major
    \time 2/4 \tempo "Grave" 4 = 40
    \partial 4
    \autoBeamOff
 
    d'8 fis'8|  a'4 d''4 |  a'4 d'8 e'8 | fis'4 e'8 e'8 \break |
    \time 3/4  d'2 d''8 cis''8 | b'4 a'4 fis'8 g'8 | \time 2/4  a'4 b'8 a'8 | \time 3/4  a'2 e''8 d''8 \break |
    cis''4 b'4 a'8 b'8| \time 2/4 a'4 b'8 a'8 | \time 3/4 a'2 b'8 a'8 |\break
    g'4 g'4 fis'8 g'8 | \time 2/4  a'4 b'8 a'8 | \time 3/4  a'2  
    a'8 a'8^\markup { \center-align \concat {
           \dynamic mf
           \normal-text { \bold { \italic " (" } }
           \dynamic p 
           \normal-text { \bold { \italic "  " } }
           \dynamic pp
           \normal-text { \bold { \italic ")" } } } } \break
    \repeat volta 3 { 
      d''4 a'4 b'8 a'8 |  d''4 a'4 e''8 d''8 |  cis''4 b'4 a'8 b'8 \break |
      a'4 a'4 b'8 a'8 | g'4 g'4 fis'8 g'8 | a'4 a'4 d'8 e'8 \time 2/4 \break | 
      fis'4 fis'4 | a'4  e'4 | 
    } \alternative { 
      { e'2  | \time 3/4 d'2 a'8  a'8^\markup { \center-align \concat {
           \dynamic p
           \normal-text { \bold { \italic " (" } }
           \dynamic pp 
           \normal-text { \bold { \italic ")" } } } } |
      } 
      { \time 2/4 e'2 | d'2 | \bar "|." } 
    } 
  }    
  
  \addlyrics {
      Бла -- го --
      сла -- вяй, ду -- ше мо -- я, Гос -- по -- да!
      Не за -- бра -- вяй вси -- те Му ми -- ло --
      сти, не за -- бра -- вяй вси -- те Му бла -- го
      -- сти, не за -- бра -- вяй вси -- те Му до --
      бри -- ни! Не за -- бра -- вяй ми -- лост -- та
      Му, не за -- бра -- вяй бла -- гост -- та Му, не
      за -- бра -- вяй О -- бич -- та Му, не за -- бра
      -- вяй Лю -- бов -- та Му! Не за -- та Му!
  }
      
  \addlyrics {
      Bla -- go --
      sla -- vjaj, du -- sche mo -- ja, Gos -- po -- da!
      Ne sa -- bra -- vjaj vsi -- te Mu mi -- lo --
      sti, ne sa -- bra -- vjaj vsi -- te Mu bla -- go
      -- sti, ne sa -- bra -- vjaj vsi -- te Mu do --
      bri -- ni! Ne sa -- bra -- vjaj mi -- lost -- ta
      Mu, ne sa -- bra -- vjaj bla -- gost -- ta Mu, ne
      sa -- bra -- vjaj O -- bitsch -- ta Mu, ne za -- bra
      -- vjaj Lju -- bov -- ta Mu! Ne za -- ta Mu!
    
  }
  
  \header {
    title = \markup \column \normal-text \fontsize #2.5 {
              \center-align
              \line { Благославяй }
              \vspace #-0.6
              \center-align
              \line \fontsize #-3 { Blagoslavjaj}
              \vspace #-0.8
              \center-align
              \line \fontsize #-3 { " " }
            }
  }
  
  \midi{}

} % score



\pageBreak

% include foreign translation(s) of the song
\include "lyrics_de/024_blagoslavyay_lyrics_de.ly"

} % bookpart
