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

  \new Voice \absolute {
      \clef treble
    \key c \major
    \time 3/4 
    %\tempo "Moderato" 8 = 160
    \tempo \markup { % make tempo note smaller
      \concat { "Andantino " \normal-text { "(" }
          \teeny \general-align #Y #DOWN \note #"8" #0.8
          \normal-text { " = 69)" }
      }
    }
    
    
	c'4 e'4 g'4 | c''2 ( d''16 c'' b' c'' ) |  d''4 c''4 a'4 | g'2 g'4 | d''2 c''4 \break |

b'4 ( a'4 ) g'4 | a'2 g'4 | c''2.| \time 6/4 e'2 d'4. c'8 g'2 | \time 4/4 c'4 e'4  g'2  | \break

e'4 g'4 c''2 |\time 6/4 b'4 ( d''4 ) c''4 ( a'4 ) g'2 | e'2 d'4. c'8 c'2 | \break 

\time 3/4 \partial 4  \tempo "Poco più mosso" 4 = 75 g'4 | g'8 ( fis'8 g'8 a'8 ) g'4 | c''2 d''4 | \time 2/4 c''4 a'4 |\time 3/4 g'2 g'4 | d''2 e''4 |  \break 

\time 4/4 d''4 c'' c'' b' | \time 6/4 c''4 a' g' fis' g'2 \fermata | \time 4/4 c'4 e'4 g'2 | \break

e'4 g'4 c''2 | \time 4/4 b'4 ( d''4 ) c''4 ( a'4 ) | \time 3/4 g'2 e'4 | g'4 ( f'4 ) e'4 | \break

c'2  \tempo "Più mosso" 2. = 58 e'4 | \repeat volta 2 { g'2 g'4 | a'2 e'4 | g'2 f'4 f'2 d''4 |\break

d''2 c''4 | b'2 a'4 | a'2 g'4 | g'2 e'4 | g'2 e'4 | e'2. \break

 \tempo "Moderato" 4 = 80 c'2 e'4 | g'2. | e'2 g'4 | c''2. | \time 4/4 \tempo "rit." b'4 ( b'4 ) c''4 ( a'4 ) \break

\time 3/4 g'2 e'4 | g'4 ( f'4 ) e'4 } \alternative { { c'2 e'4 } {c'2. } }

}


  
  \addlyrics {Е -- дин си ти мой Му -- са -- ла све -- ще -- но
                    
                    мя -- сто, Бо -- жи връх.  Мой Му -- са -- ла, Му -- са -- ла,
                    
                    Му -- са -- ла, Му -- са -- ла, мой Му -- са -- ла. 
                    
                    През я -- сен ден на про -- лет -- та ви -- де -- ли -- 
                    
                    ли сте из -- гре -- ва от Му -- са -- ла?!    Му -- са -- ла, 
                    
                    Му -- са -- ла,  Му -- са -- ла,  от Му -- са -- ла! При пър -- ви
                    
                    лъч на слън -- це -- то вдъх -- на -- ли ли сте ле -- ки дъх на Му -- са -- ла
                    
                    Му -- са -- ла, Му -- са -- ла, Му -- са -- ла, на Му -- са -- ла! При ла!}
  \addlyrics {E -- din si ti moy Mu -- sa -- la sve -- shte -- no
                    
                    mya -- sto, Bo -- zhi vrah.  Moy Mu -- sa -- la, Mu -- sa -- la,
                    
                    Mu -- sa -- la, Mu -- sa -- la, moy Mu -- sa -- la. 
                    
                    Prez ya -- sen den na pro -- let -- ta vi -- de -- li -- 
                    
                    li ste iz -- gre -- va ot Mu -- sa -- la?!    Mu -- sa -- la, 
                    
                    Mu -- sa -- la,  Mu -- sa -- la,  ot Mu -- sa -- la! Pri par -- vi
                    
                    lach na slan -- tse -- to vdah -- na -- li li ste le -- ki dah na Mu -- sa -- la
                    
                    Mu -- sa -- la, Mu -- sa -- la, Mu -- sa -- la, na Mu -- sa -- la! Pri la!}
  
  \header {
    title = \markup \column \normal-text \fontsize #2.5 {
              \center-align
              \line { Мусала}
              \vspace #-0.6
              \center-align
              \line \fontsize #-3 { Mussala}
              \vspace #-0.8
              \center-align
              \line \fontsize #-3 { " " }
            }
  }
  
  \midi{}

} % score


% include foreign translation(s) of the song
\include "lyrics_de/087_mussala_lyrics_de.ly"

} % bookpart
