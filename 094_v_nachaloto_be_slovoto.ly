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
    ragged-last = ##f % do spread last line to fill the whole space
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
    \key d \minor
    \time 2/4 
    %\tempo "Moderato" 8 = 160
    \tempo \markup { % make tempo note smaller
      \concat { "Andante" \normal-text { " (" }
          \teeny \general-align #Y #DOWN \note #"8" #0.8
          \normal-text { " = 60)" }
      }
    }
    \partial 4
    \autoBeamOff  
	
	 a4 | d'4 e' f' | \time 5/4  a4 a d'2 e'4 | \time 4/4  g'4 f' e' d' | \time 5/4  a4 a d'2 e'4 \break |

\time 6/4  g'4 f' e' d' d'2 |  f'4 e' d' a b b |  \break | 

\time 4/4  b2 a \fermata \time 7/4  \repeat volta 2 { a'4 gis'8 a' bes'4 a'8. gis'16 a'2 g'8 f' \break | 
                                                      
 e'4 g' f' f' e' d'2 | \time 4/4  e'4 g'8 f' e'4 d' | f'4 e' d'2 } \break

\autoBeamOff \time 2/4  \repeat volta 2 { d''8. cis''16 d''8 a' | bes'4 a' g'8 f' e' f' | g'4 a'8 a' | \break 

d'8 e' f'4 | e'8 d' e' f' }  \alternative { { d'2 | } {  \time 3/4  d'2 a4 } } \break |

\time 4/4  \repeat volta 2 { a'2 gis'4 a' | bes'2 a' | \time 6/4  g'4 ( a' ) f'2 e'4 f' | g'4 ( a' ) e'2. e'4 \break |

f'4 g' a' e' g'2 | \time 4/4  f'2 e'} \alternative { { | d'2. a4 | } { d'2. s4 } }
  }
  
  \addlyrics { 
   В_на -- ча --
  ло бе Сло -- во -- то и Сло -- во -- то бе у
  Бо -- га, и Сло -- во -- то бе Бог. То в_на --
  ча -- ло бе у Бо -- га. Всич -- ко чрез Не --
  го ста -- на и ко -- е -- то е ста -- на --
  ло, ни -- що без Не -- го не ста -- на. В_не --
  го бе жи -- во -- тът и жи -- во -- тът бе ви
  -- де -- ли -- на на че -- ло -- ве -- ци -- те.
  те. И ви -- де -- ли -- на -- та све -- ти в_тъм
  -- ни -- на -- та, и тъм -- ни -- на -- та я не
  об -- зе. И зе.
   
  }

  \addlyrics {
  V_na -- cha --
  lo be Slo -- vo -- to i Slo -- vo -- to be u
  Bo -- ga, i Slo -- vo -- to be Bog. To v_na --
  cha -- lo be u Bo -- ga. Vsich -- ko chrez Ne --
  go sta -- na i ko -- e -- to e sta -- na --
  lo, ni -- shto bez Ne -- go ne sta -- na. V_ne --
  go be zhi -- vo -- tat i zhi -- vo -- tat be vi
  -- de -- li -- na na che -- lo -- ve -- tsi -- te.
  te. I vi -- de -- li -- na -- ta sve -- ti v_tam
  -- ni -- na -- ta, i tam -- ni -- na -- ta ya ne
  ob -- ze. I ze.
  
   
    
  }

  \header {
    title = \markup \column \normal-text \fontsize #2.5 { 
              \center-align
              \line { В начало бе Словото}
              \vspace #-0.6
              \center-align
              \line \fontsize #-3 {   V nachalo be Slovoto }
              \vspace #-0.8
              \center-align
              \line \fontsize #-3 { " " }
            }
  }
  
  \midi{}
} % score



\pageBreak

% include foreign translation(s) of the song
\include "lyrics_de/094_v_nachaloto_be_slovoto_lyrics_de.ly"

} % bookpart
