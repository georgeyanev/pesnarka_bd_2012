\version "2.20.0"

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

  
  \new Voice \absolute  {
    \clef treble
    \key e \minor
    \time 3/4 
     \tempo \markup { % make tempo note smaller
    \concat { "Tempo di valzer" \normal-text { " (" }
      \teeny \general-align #Y #DOWN \note #"2." #0.8
      \normal-text { " = 54)" }
    }
  }
    \partial 4 b4 | e'2 g'4 | c''2 b'4 | b'2. | b'2 b4 | e'2 g'4 | \break
    c''2 b'4 | b'2. ( | b'2 ) b'4 |
    \repeat volta 2 { a'2 c''4 | b'2 a'4 | g'2. \break 
      e'2 g'4 | b2 b4 | g'2 fis'4 } 
    \alternative { 
      { e'2. ( | e'2 ) b'4 | } 
      { e'2. ( | e'2 ) s4 \bar "|." } 
    }
  }
  
  \addlyrics {
    "1. Към" Ри -- ла с~мощ -- на ми -- съл ле -- тим ний
    все -- ки ден. В~гър -- ди -- те с~туй же -- ла -- 
    ние жи -- ве -- ем в~свят не -- тлен. В~гър -- тлен.    
  }

  \addlyrics {
    Kam Ri -- la s~mosht -- na mi -- sal le -- tim niy
    vse -- ki den. V~gar -- di -- te s~tuy zhe -- la -- 
    nie zhi -- ve -- em v~svyat ne -- tlen. V~gar -- tlen.    
  }

  
  \header {
    title = \markup \column \normal-text \fontsize #2.5 {
              \center-align
              \line { Към Рила }
              \vspace #-0.6
              \center-align
              \line \fontsize #-3 { Kam Rila  }
              \vspace #-0.8
              \center-align
              \line \fontsize #-3 { "  " }
            }
  }
  
  \midi{}

} % score



\markup \fontsize #+2.5 {
    \hspace #1
    \override #'(baseline-skip . 2.4) % affects space between column lines
    \column {
       \line { 1. Към Рила с мощна мисъл }
      \line {   "   " летим ний всеки ден }  
      \line {   "   " В гърдите с туй желание }
      \line {   "   " живеем в свят нетлен. } 
      
      \line { " " }
      \line { 2. Отново ще се срещнем  }
      \line {   "   " при рилските очи. }  
      \line {   "   " Тук чудната цигулка }
      \line {   "   " с нов тон ще зазвучи. } 
      
        \line { " " }
       \line { 3. Душите ни  – цигулки }
      \line {   "   " ще леят красота, }  
      \line {   "   " защото с тях ще свири  }
      \line {   "   " Доброто, Любовта. } 
      
      \line { " " }
      \line { 4. Ще идем ний на Рила, }
      \line {   "   " ще видим Мусала, }  
      \line {   "   " безкрайната Природа  }
      \line {   "   " и своя мил Баща. } 
    }

    \hspace #9
    \override #'(baseline-skip . 2.4)
    \column {
      \line { 1. Kam Rila s moshtna misal }
      \line {   "   " letim niy vseki den }  
      \line {   "   " V gardite s tuy zhelanie }
      \line {   "   " zhiveem v svyat netlen. } 
      
      \line { " " }
      \line { 2. Otnovo shte se sreshtnem  }
      \line {   "   " pri rilskite ochi. }  
      \line {   "   " Tuk chudnata tsigulka }
      \line {   "   " s nov ton shte zazvuchi. } 
      
        \line { " " }
       \line { 3. Dushite ni  – tsigulki }
      \line {   "   " shte leyat krasota, }  
      \line {   "   " zashtoto s tyah shte sviri  }
      \line {   "   " Dobroto, Lyubovta. } 
      
      \line { " " }
      \line { 4. Shte idem niy na Rila, }
      \line {   "   " shte vidim Musala, }  
      \line {   "   " bezkraynata Priroda  }
      \line {   "   " i svoya mil Bashta. } 
    } %column
} % markup

\pageBreak

% include foreign translation(s) of the song
\include "lyrics_de/056_2_kam_rila_lyrics_de.ly"

} % bookpart
