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
    \key d \major
    \time 2/4 
    \tempo \markup { % make tempo note smaller
      \concat { "Allegretto " \normal-text { "(" }
          \teeny \general-align #Y #DOWN \note #"4" #0.8
          \normal-text { " = 100)" }
      }
    }  

\autoBeamOff
 
 d'4 d'4 | a'8 g'8 fis'8 g'8| a'4 ( b' ) | a'2 |b'8. b'16 b'8 b'8 | \break
 
\time 3/4 d''4 b'4 a'8. b'16 | \time 2/4 a'2 | \time 3/4 b'8 a'8 g'8 fis'8 a'8 g'8 | \time 2/4 fis'4 d'4 | \break

e'8 e'8 fis' fis' | \time 3/4 g'8 g' a' a' a'4| \time 2/4 b'8 a' g' fis' \break

a'8 g' fis' e' | d'4 e'8 e' | \repeat volta 2 { e'4 fis'8 fis' | fis'4 g'8 g' |\break
                                                
g'4 a'8 a' | b' a' g' fis' | a'4 fis'8 fis' |  a'8 g' fis' e' | \break

d'4 e'8 e' | e' e' e' fis' | g'4 e'8 fis' | \break

g'4 b'8 b'8 | b'8 a'8 g'8 fis'8 | a'4 fis'8 fis' | \break

a'8 g' fis' e' | } \alternative { { d'4 e'8 e'8 } { d'2 } } 

}
  
 \addlyrics {Све -- тъл лъч от го -- ре сли  --  за,

мал -- ки -- те цве -- тя да о -- за -- ри;

бли -- зо из -- вор -- че из -- ви -- ра,

ле -- ко бли -- ка, шуш  -- не, шу -- мо -- ли

и цве -- тя -- та веч -- но ве -- се -- ли.

Ве -- се -- ли, ве -- се -- ли, ве -- се -- ли,

бли -- ка, шуш -- не, ве -- се -- ли,

бли -- ка, шуш -- не, ве -- се -- ли,

бли -- ка, шуш -- не, ве -- се -- ли,

ле -- ко бли  -- ка, шу --  мо -- ли

и цве -- тя -- та ве -- се -- ли.


  
  }

  \addlyrics {
Sve -- tal lach ot go -- re sli  --  za,

mal -- ki -- te tsve -- tya da o -- za -- ri;

bli -- zo iz -- vor -- che iz -- vi -- ra,

le -- ko bli -- ka, shush  -- ne, shu -- mo -- li

i tsve -- tya -- ta vech -- no ve -- se -- li.

Ve -- se -- li, ve -- se -- li, ve -- se -- li,

bli -- ka, shush -- ne, ve -- se -- li,

bli -- ka, shush -- ne, ve -- se -- li,

bli -- ka, shush -- ne, ve -- se -- li,

le -- ko bli  -- ka, shu --  mo -- li

i tsve -- tya -- ta ve -- se -- li.

    
  }
  
  \header {
    title = \markup \column \normal-text \fontsize #2.5 {
              \center-align
              \line {Малкият извор }
              \vspace #-0.6
              \center-align
              \line \fontsize #-3 {Malkiat izvor }
              \vspace #-0.8
              \center-align
              \line \fontsize #-3 { " " }
            }
  }
  
  
  
  \midi{}

} % score





\pageBreak

% include foreign translation(s) of the song
\include "lyrics_de/099_malkijat_izvor_lyrics_de.ly"

} % bookpart