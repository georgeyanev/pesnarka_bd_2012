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
    \key bes \minor
    \time 4/4 
    \tempo \markup { % make tempo note smaller
      \concat { "Andante " \normal-text { "(" }
          \teeny \general-align #Y #DOWN \note {4} #0.8
          \normal-text { " = 60)" }
      }
    }  


    \autoBeamOff
  
   \autoBeamOff
  
  bes4 f'8. f'16 f'2 | \time 5/4  ges'4 f'8. e'16 f'2 des''4 \break |
 
 c''4 bes'8. a'16 bes'4 ges' f'8. e'16 | \time 3/4  f'2 ees'!4 \break |
 
  des'8 des' c'4 bes8 a | \time 4/4  c'4 bes8. a16 bes2 \break |
  
   \repeat volta 2 { f'4 bes'8. bes'16 bes'4. bes'8 | \autoBeamOn c''8  ( bes')  a' ( bes' ) c''4 \autoBeamOff bes'8. a'16 \break | 

 \time 5/4  | bes'2 ( as'!4 )  ges' f'8. e'16 | \time 3/4  f'2 \times 2/3  {  f'8 [ ( ges' as'8 ) ] } \break |  
   
  \time 4/4  as'4 bes'2  \times 2/3  {  ges'8 ( [ f' es'8 ] ) } | \time 3/4  bes'4 ges'8 ges' f'8. e'16 
   
 f'2 \times 2/3 { c'8 [ ( des' ) ] es'8  } | \break
 
 f'4 ( es' ) des' | \times 2/3  { c'8 [ ( es' des'8 ) ] } c'4 bes8. a16  | \time 2/4  bes2  \break |

   }
  }
  
 \addlyrics {
    Бе ня -- ко  -- га, бе ня -- ко -- га,
    ко -- га -- то бе всич -- ко тъм -- ни -- на
    и в~не -- я се по -- я -- ви свет -- ли -- на.
    И свет -- ли -- на -- та о -- чер -- та кра -- со -- та -- та
    на Бо -- же -- стве -- ни -- я жи -- вот,
    кой -- то се все -- ли
    и по -- вдиг -- на мо -- я -- та ду -- ша.
  }

  \addlyrics {
    Be nya -- ko  -- ga, be nya -- ko -- ga,
    ko -- ga -- to be vsich -- ko tam -- ni -- na
    i v~ne -- ya se po -- ya -- vi svet -- li -- na.
    I svet -- li -- na -- ta o -- cher -- ta kra -- so -- ta -- ta
    na Bo -- zhe -- stve -- ni -- ya zhi -- vot,
    koy -- to se vse -- li
    i po -- vdig -- na mo -- ya -- ta du -- sha.
  }
  
  \header {
    title = \markup \column \normal-text \fontsize #2.5 {
              \center-align
              \line {Бершид ба }
              \vspace #-0.6
              \center-align
              \line \fontsize #-3 {Bershid ba }
              \vspace #-0.8
              \center-align
              \line \fontsize #-3 { " " }
            }
  }
  
  
  
  \midi{}

} % score





\pageBreak

% include foreign translation(s) of the song
\include "lyrics_de/098_bershid_ba_lyrics_de.ly"

} % bookpart