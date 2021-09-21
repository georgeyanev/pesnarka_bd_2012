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

   \new Voice \absolute  {
    \clef treble
    \key c \major
    \time 6/4 
    \tempo \markup { % make tempo note smaller
      \concat { "Andante " \normal-text { "(" }
          \teeny \general-align #Y #DOWN \note #"4" #0.8
          \normal-text { " = 63)" }
      }
    }  
  
	
	c''4 ( \acciaccatura { d''16 c'' b' c'' } d''4 ) c'' a'8. a'16 g'2 |\time 5/4 g'16 ( a'8. ) \autoBeamOff  g'4 f'8.e'16 f'2 | \break
	
	 \tuplet 3/2 {g'8 a' b'} d'' c''16. b'4 a'4 | g'8. g'16 \tuplet 3/2 {f'8 e'8 d'8 } d'4 c'4 \fermata | \break 
	 
	 \time 3/4 f'8. f'16 e'4 f' 16 ( a'2 ) | \time 5/4 g'4 f' e'8. f'16 g'2 | \break
	 
	 
	 c''4 ( \acciaccatura { d''16 c'' b' c'' } d''4 ) c'' a'8. a'16 g'2 |\time 5/4 g'16 ( a'8. ) \autoBeamOff  g'4 f'8.e'16 f'2 | \break
	 
	 
	  \tuplet 3/2 {g'8 a' b'} d'' c''16.
  }
  
 \addlyrics {Ве -- сел ти бъ -- ди, бо -- дър ти ста -- ни;

гри  -- жите на жи -- во -- та

са то -- вар без -- по -- ле -- зен.

Теб жи -- во -- та ми -- ло те зо -- ве:

Ве  -- сел ти бъ -- ди, бо -- дър ти ста -- ни

и всич -- ко жи -- во ти сЛю -- бов пов  -- диг -- ни.

Ве  -- сел ти бъ -- ди, бо -- дър ти ста -- ни!

Ве -- сел бъ -- ди, бо -- дър ста -- ни,

във жи -- вота ра -- дост но -- си,

във жи -- вота ра -- дост но -- си

във жи -- во -- та ти.

Ве -- сел ти бъ -- ди, бо -- дър ти ста -- ни!
  
  }

  \addlyrics {
   Ve -- sel ti ba -- di, bo -- dar ti sta -- ni;

gri  -- zhite na zhi -- vo -- ta

sa to -- var bez -- po -- le -- zen.

Teb zhi -- vo -- ta mi -- lo te zo -- ve:

Ve  -- sel ti ba -- di, bo -- dar ti sta -- ni

i vsich -- ko zhi -- vo ti sLyu -- bov pov  -- dig -- ni.

Ve  -- sel ti ba -- di, bo -- dar ti sta -- ni!

Ve -- sel ba -- di, bo -- dar sta -- ni,

vav zhi -- vota ra -- dost no -- si,

vav zhi -- vota ra -- dost no -- si

vav zhi -- vo -- ta ti.

Ve -- sel ti ba -- di, bo -- dar ti sta -- ni!
    
  }
  
  \header {
    title = \markup \column \normal-text \fontsize #2.5 {
              \center-align
              \line { Весел ти бъди }
              \vspace #-0.6
              \center-align
              \line \fontsize #-3 {Vesel ti badi }
              \vspace #-0.8
              \center-align
              \line \fontsize #-3 { " " }
            }
  }
  
  
  
  \midi{}

} % score





\pageBreak

% include foreign translation(s) of the song
%\include "lyrics_de/020_bratstvo_edinstvo_lyrics_de.ly"

} % bookpart
