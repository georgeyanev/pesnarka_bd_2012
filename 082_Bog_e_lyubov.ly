\version "2.22.0"

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
    %ragged-last = ##t % do not spread last line to fill the whole space
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

 \new Voice \relative c' {
    \clef treble
    \key g \major
    \time 4/4
    \tempo \markup {
      % make tempo note smaller
      \concat {
        "Largo " \normal-text { "(" }
        \teeny \general-align #Y #DOWN \note {4} #0.8
        \normal-text { " = 46)" }
      }
    }
    \autoBeamOff
  
    b8. [(c16)] a8. b16 c2 | 
    e4 d8. c16 b2 | 
    g'4 fis8. g16 e4. fis8 | \break 
  
    \time 3/4 g8 a8 b2 |
    \time 4/4 c8. [(d32 c32] b8 [c8]) a2 |
    d8. [c16] b8 [(a8)] b2 | \break

    a4. (b8) g2 | 
    fis8. [g16] e4. fis8 [g8 a8] |
    \time 5/4 b4 d8 c8 b8 a8 b2 | \break
    
    d4 e4 c8. b16 c2 |
    d4 b4 b8. a16 b2 |
    \time 4/4 c4 b4 a8 a8 g8 g8 | \break
    
    fis4 e8 e8 fis4 a8. a16 |
    g4. a8 b4 a8. a16 |
    \time 3/4 g2 \tempo "Più mosso"  d8. d16 |
    \repeat volta 3 { 
      g4 fis4 fis8. e16 | \break
      
      e4 e4 d8. b16 | 
      \time 4/4 d4 c4 c4 e8. d16 |
      d4 b4 b4 d8. a16 |
      a4 b2 d4 | \break
      
      b'4 a8. g16 g4 fis4 | 
      \time 6/4 fis4 e4 e4 d8. d16 g2 |
      d4 b4 d4 c8. b16 c2 | \break
      
      e4 d4 b4 b8. c16 d2 |
      \time 4/4 e4 d4 a4 b8. a16 |	
    } % repeat
    \alternative {
      { \time 3/4 g2 d'8. d16 }
      { \time 3/4 g,2.  \bar "|." }
    }
  }
  
  \addlyrics {    Бог е "Лю-" -- бов, | Бог е "Лю-" -- бов, | Бог е "Лю-" -- бов, Лю -- |
    бов, Лю -- бов  | веч -- на, | "без - гра" -- нич -- на, |
    пъл -- на | със_Жи -- "-вот," "Жи-вот на" | бла -- ги -- я Бо -- жи  Дух. 
    Дух на бла -- гост -- "-та," | Дух на све -- тост -- "-та," | Дух на пъ -- лен Мир и |
    Ра -- дост за вся -- ка ду | ша, за вся -- ка ду -- | ша. Ний щe | хо -- дим в~то -- я |
    път  на Свет -- ли -- | на -- та, на Свет -- ли -- | на -- та, на Свет -- ли | на -- та, в~ко -- |
    я -- то ца -- ру -- ва | Бо -- жи -- я -- та "Лю-" -- бов, | Бо -- жи -- я -- та "Лю-" -- бов, |
    Бо -- жи -- я -- та "Лю-" -- бов, | Бо -- жи -- я -- та Лю -- | бов. Ний ще | бов.}
  \addlyrics {Bog e Lyu -- bov, | Bog e Lyu -- bov, | Bog e Lyu -- bov, Lyu -- |
    bov, Lyu -- bov  | vech -- na, | "bez - gra" -- nich -- na, |
    pal -- na | sas_Zhi -- vot, "Zhi-vot na" | bla -- gi -- ya Bo -- zhi  Duh. |
    Duh na bla -- gost -- ta, | Duh na sve -- tost -- ta, | Duh na pa -- len Mir i |
    Ra -- dost za vsya -- ka du | sha za vsya -- ka du -- | sha. Niy shte | ho -- dim v~to -- ya |
    pat  na Svet -- li -- | na -- ta, na Svet -- li -- | na -- ta, na Svet -- li | na -- ta, v~ko -- |
    ya -- to tsa -- ru -- va | Bo -- zhi -- ya -- ta Lyu -- bov, | Bo -- zhi -- ya -- ta Lyu -- bov, |
    Bo -- zhi -- ya -- ta Lyu -- bov, | Bo -- zhi -- ya -- ta Lyu -- | bov. Niy shte | bov.}
  
  \header {
    title = \markup \column \normal-text \fontsize #2.5 {
              \center-align
              \line {   Бог е Любов}
              \vspace #-0.6
              \center-align
              \line \fontsize #-3 { Bog e Lyubov}
              \vspace #-0.8
              \center-align
              \line \fontsize #-3 { " " }
            }
  }
  
  \midi{}

} % score

\pageBreak



% include foreign translation(s) of the song
\include "lyrics_de/082_bog_e_ljubov_lyrics_de.ly"

} % bookpart
