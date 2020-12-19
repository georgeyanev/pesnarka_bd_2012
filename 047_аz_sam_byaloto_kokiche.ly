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
    ragged-last = ##t % do not spread last line to fill the whole space
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
    \key f \major
    \time 3/8 \tempo "Allegretto" 8 = 112
    \autoBeamOff

    f''16. e''32 d''8 bes' | a'16. g'32 a'8 f' | d'16. e'32 f'8 g' | a'4 a'8 \break |
    f''16. e''32 d''8 bes' | a'16. g'32 a'8 f' | e'16. bes'32 a'8 cis' | d'8 d' r | \bar ":|." \break
    \repeat volta 2 { 
      \bar ":|.|:"
      a'4 d''8 | cis''4 e''8 | d''4 bes'8 | a'4 g'8 | a'4 d''8 | cis''4 e''8 | d''4. |  d''4. \break | % 17
      a'4 bes'8 | a'4 d''8 | cis''4 bes'8 |  a'4 g'8 | f'4 a'8 | e'4 a'8 |  d'4. | d'4. } \break |
  }
  
  \addlyrics { Аз съм бя -- ло -- то ко -- ки -- че
Всред тре -- ви -- те гор -- ски,
сра -- меж -- ли -- во кат' мо -- ми -- че
от по -- гле -- ди хор -- ски. Зла ме ма -- ще -- ха съ -- бу -- ди
със сне -- га, вет -- ро -- ве -- те.  
Всич -- ко жи -- во да се чу -- ди,
че съм ран -- но цве -- те.}
  \addlyrics {}
  
  \header {
    title = \markup \column \normal-text \fontsize #2.5 {
              \center-align
              \line { Аз съм бялото кокиче }
              \vspace #-0.6
              \center-align
              \line \fontsize #-3 { Az sam bialoto kokiche }
              \vspace #-0.8
              \center-align
              \line \fontsize #-3 { " " }
            }
  }
  
  \midi{}

} % score

\pageBreak

\markup \fontsize #+2.5 {
    \hspace #1
    \override #'(baseline-skip . 2.4) % affects space between column lines
    \column {
      \line { Радост нова ви показвам }
      \line {   "   " с чашка ранобудна }  
      \line {   "   " и за пролетта разказвам }
      \line {   "   " приказчица чудна. } 
      
      \line { " " }
      \line { Че след мене теменужка  }
      \line {   "   " у вас ще гостува, }  
      \line {   "   " че със тая мила дружка }
      \line {   "   " славей ще се чува. } 
      
      \line { " " }
      \line { Че агънца ще заблеят  }
      \line {   "   " в ливади зелени, }  
      \line {   "   " че орачи ще засеят }
      \line {   "   " ниви наторени. } 
      
      \line { " " }
      \line { Златни класове ще зреят  }
      \line {   "   " в тези чудни ниви, }  
      \line {   "   " ангели ще славят Бога }
      \line {   "   " с песни най-красиви. } 
    }

    \hspace #5
    \override #'(baseline-skip . 2.4)
    \column {
      \line { 2. Radost nova vi pokazvam }
      \line {   "   " s kaschka ranobudna, }  
      \line {   "   " i sa proletta razkazvam }
      \line {   "   " prikazchiza chudna} 
      
      \line { " " }
      \line { 3. Che sled mene temenuzka, }
      \line {   "   " u vas ste gostuva}  
      \line {   "   " che sas taka mila druzka }
      \line {   "   " slavei ste se chuva. } 
      
       \line { " " }
      \line { 4. Che aganza ste sablejat }
      \line {   "   " v livadi zeleni}  
      \line {   "   " che orachi ste sasejat }
      \line {   "   " nivi natoreni.} 
      
      \line { " " }
      \line { 5. Zlatni klasove ste zrejat }
      \line {   "   " v tez chudni nivi}  
      \line {   "   " angeli ste slavjat Boga }
      \line {   "   " s pesni naj-krasivi.} 
    } %column
} % markup

\pageBreak

% include foreign translation(s) of the song
%\include "lyrics_de/lyrics_de_file_name.ly"

} % bookpart
