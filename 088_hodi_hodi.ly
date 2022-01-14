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
  \key d \major
  \time 7/16
  \tempo \markup { % make tempo note smaller
    \concat { "Allegretto " \normal-text { "(" }
      \teeny \general-align #Y #DOWN \note {8} #0.8
      \normal-text { " = 160)" }
    }
  }  
  
 
a8 a8 a8 a16 | a4 a8. | d'8 d'8 e'8 e'16 | e'4 e'8. | \break

fis'8 fis'8 fis'8 g'16 | a'4 a'8. | b'8 a'8 g'8 fis'16 | a'4 a'8. | b'8 a'8 g'8 fis'16 | \break

fis'4 fis'8. | \bar ".|:" b'8 b'8 b'8 b'16| d''4 b'8. | a'8 a'8 a'8 g'16 | fis'4 fis'8. | \break

a'8 g'8 g'8 fis'16 | g'4 e'8. | e'8 e'8 fis'8 e'16 | d'4 d'8. | \bar ":|."
 
  
  }
\addlyrics {
    "1. Хо" -- ди хо -- ди хо -- ди за во -- да -- та хо -- ди
                   
                   су -- трин -- на -- та ро -- "са –"  през ре -- чи -- ца бис -- тра, по пъ -- те -- ка
                   
                   чис -- та. За -- до -- ма  си но -- си  таз во -- ди -- ца бис -- тра,
                   
                   за цве -- тен -- ца ми -- "ли –"  ней -- ни -- те де -- чи -- ца. 
  }
  \addlyrics { 
    "1. Ho" -- di ho -- di ho -- di za vo -- da -- ta ho -- di
                   
                   su -- trin -- na -- ta ro -- "sa –" prez re -- chi -- tsa bis -- tra, po pa -- te -- ka
                   
                   chis -- ta. Za -- do -- ma  si no -- si  taz vo -- di -- tsa bis -- tra,
                   
                   za tsve -- ten -- tsa mi -- "li –" ney -- ni -- te de -- chi -- tsa.    }
  
  \header {
    title = \markup \column \normal-text \fontsize #2.5 {
              \center-align
              \line { Ходи, ходи}
              \vspace #-0.6
              \center-align
              \line \fontsize #-3 { Hodi, hodi }
              \vspace #-0.8
              \center-align
              \line \fontsize #-3 { " " }
            }
  }
  
  \midi{}

} % score

\markup \halign #-4.83 \raise #2.8 \override #'(baseline-skip . 2) { 
    \column  { 
      \line  { 
        \italic \right-align { "attacca „Тъги, скърби/Tagi, skarbi“" }
      }
      \line  {" "}
    }
} 


\markup \fontsize #+2.5 {
    \hspace #8
    \override #'(baseline-skip . 2.4) % affects space between column lines
    \column {
       
	   
	   \line { 1. Ходи, ходи, ходи,}
	  \line { "   " за водата ходи}
 \line { "   "сутринната роса – }
\line { "   " през речица бистра, }
 \line { "   "по пътека чиста. }
 \line { "   "За дома си носи }
\line { "   " таз водица бистра,   }    
 \line { "   "за цветенца мили –}
\line { "   " нейните дечица.}
  \line { " " }
 \line { 2. Капките дъждовни}
 \line { "   "също тъй поднасят}
\line { "   "изобилна влага – }
\line { "   "струя на живота. }
\line { "   "Никнат семенцата, }
\line { "   "пъпки се разтварят,}
\line { "   "плодове узряват.}    
\line { "   "Всичко се събужда – }
\line { "   "мощна е водата. }
      
    }

    \hspace #5
    \override #'(baseline-skip . 2.4)
    \column {
            	   \line { 1. Hodi, hodi, hodi,}
	  \line { "   " za vodata hodi}
 \line { "   "sutrinnata rosa – }
\line { "   " prez rechitsa bistra, }
 \line { "   "po pateka chista. }
 \line { "   "Za doma si nosi }
\line { "   " taz voditsa bistra,   }    
 \line { "   "za tsvetentsa mili –}
\line { "   " neynite dechitsa.}
  \line { " " }
 \line { 2. Kapkite dazhdovni}
 \line { "   "sashto tay podnasyat}
\line { "   "izobilna vlaga – }
\line { "   "struya na zhivota. }
\line { "   "Niknat sementsata, }
\line { "   "papki se raztvaryat,}
\line { "   "plodove uzryavat.}    
\line { "   "Vsichko se sabuzhda – }
\line { "   "moshtna e vodata. }
    
    } %column
} % markup

\pageBreak

% include foreign translation(s) of the song
\include "lyrics_de/088_hodi_hodi_lyrics_de.ly"

} % bookpart
