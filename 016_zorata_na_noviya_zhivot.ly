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
    \key c \major
    \time 3/8 
    %\tempo "Moderato" 8 = 160
    \tempo \markup { % make tempo note smaller
      \concat { "Moderato " \normal-text { "(" }
          \teeny \general-align #Y #DOWN \note #"8" #0.8
          \normal-text { " = 160)" }
      }
    }
    \partial 8
    \autoBeamOff  
    c'8 |e'4 g'8|c''4 g'8 |a'4 g'8 |c''4.| g'4. ~ |  g'4    g'8 |\break
    c''4 c''8| \once \autoBeamOn c''8 ([  b'8  ])  \noBeam  c''8 |d''4 b'8  |c''4. ( | c''4 ) a'8| a'4 a'8| \break
    d''4  c''8| b'4 a'8| a'4. | g'4. ( |g'4 ) g'8 | a'4 g'8 | g'4 f'8 | \break
    e'4 d'8| c'4. ( | c'4. ) | \bar "||"
    %\tempo "Più mosso" 8 = 176
    \tempo \markup { % make tempo note smaller
      \concat { "Più mosso " \normal-text { "(" }
          \teeny \general-align #Y #DOWN \note #"8" #0.8
          \normal-text { " = 176)" }
      }
    }
    g'8  fis'8 g'8 | a'4 g'8 | g'4 g'8 | c''4. (| \break 
    c''4. ) | c''8 b'8 c''8| d''4 c''8 | b'4  b'8 | b'4.  (| b'4 )  a'8| b'4 a'8 | \break
    g'4 fis'8 | g'4. (| g'4. ) | a'8 g'8 f'8 | f'4 f'8 | e'4 f'8 | g'4. (| \break
    g'4 ) g'8 | a'4 g'8 | g'4 fis'8 | g'4. (| g'4. )| d'8 e'8 f'!8| f'4 f'8 | \break
    e'4 f'8 | g'4. (|g'4 ) e'8 | g'4 f'8 | e'4 d'8 | c'4. ( | c' 4 ) s8 | \bar "|." 
  }
  
  \addlyrics { 
    "1. Зо" -- ра се чуд -- на за -- зо -- ря -- ва, зо -- 
    ра на све -- тъл нов жи -- вот; с~ве -- ли -- ко -- 
    ле -- пи -- е о -- гря -- ва по -- спре -- ли -- я се 
    наш ки -- вот. В~но -- ви -- я све -- тъл тоз жи -- вот, __  
    в~но -- ви -- я све -- тъл тоз жи -- вот, жи -- вот на 
    Лю -- бов -- та.  в~но -- ви -- я све -- тъл тоз жи -- вот, __ 
    жи -- вот на Бла -- гост -- та, в~но -- ви -- я све -- тъл 
    тоз жи -- вот, жи -- вот на Ра -- дост -- та.
  }

  \addlyrics {
    "1. Zo" -- ra se chud -- na za -- zo -- rya -- va, zo -- 
    ra na sve -- tal nov zhi -- vot; s~ve -- li -- ko -- 
    le -- pi -- e o -- grya -- va po -- spre -- li -- ya se 
    nash ki -- vot. V~no -- vi -- ya sve -- tal toz zhi -- vot, __  
    v~no -- vi -- ya sve -- tal toz zhi -- vot, zhi -- vot na 
    Lyu -- bov -- ta.  v~no -- vi -- ya sve -- tal toz zhi -- vot, __ 
    zhi -- vot na Bla -- gost -- ta, v~no -- vi -- ya sve -- tal 
    toz zhi -- vot, zhi -- vot na Ra -- dost -- ta.
  }

  \header {
    title = \markup \column \normal-text \fontsize #2.5 { 
              \center-align
              \line { Зората на Новия живот }
              \vspace #-0.6
              \center-align
              \line \fontsize #-3 { Zorata na Noviya zhivot }
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
      \line { 2. И птички въздуха изпълнят }
      \line {   "   " с възторг и сладки песни в хор, }  
      \line {   "   " Хармонията да допълнят }
      \line {   "   " В големия небесен двор.} 

      \line { " " }
      \line { "   " \italic {Припев: } }
      \line {  "   " В новия светъл тоз живот, }
      \line { "   " В новия светъл тоз живот, }
      \line { "   " Живот на любовта, }
      \line {  "   " В новия светъл тоз живот,}
      \line { "   " Живот на благостта, }
      \line { "   "  В новия светъл тоз живот,}
      \line {  "   " Живот на радостта.}
      \line { " " }
     
      \line { 3. Трепти зората лекокрила  }
      \line {   "   " при рилските очи. }  
      \line {   "   " Тук чудната цигулка }
      \line {   "   " с нов тон ще зазвучи. } 
      
      \line { " " }
      \line { "   " \italic {Припев ...} }
      \line { " " }

      \line { 4. Лъчи от любовта ни вливат }
      \line {   "   " В гърдите жива топлина, }  
      \line {   "   " Със сладка вяра ни повдигат }
      \line {   "   " Във крепост и виделина. } 
      
      \line { " " }
      \line { "   " \italic {Припев ...} }
      \line { " " }
      
      \line { 5.  О тези лъчи от Бога идат, }
      \line {   "   " Те пълнят нашите сърца, }  
      \line {   "   " И шепнат сладко, как Той вика: }
      \line {   "   " Елате, моите деца! } 
    }

    \hspace #5
    \override #'(baseline-skip . 2.4)
    \column {
      \line { 2. I ptichki vazduha izpalnyat }
      \line {   "   " s vaztorg i sladki pesni v hor, }  
      \line {   "   " Harmoniyata da dopalnyat }
      \line {   "   " V golemiya nebesen dvor.} 

      \line { " " }
      \line { "   " \italic {Refrain: } }
      \line {  "   " V noviya svetal toz zhivot, }
      \line { "   " V noviya svetal toz zhivot, }
      \line { "   " Zhivot na lyubovta, }
      \line {  "   " V noviya svetal toz zhivot,}
      \line { "   " Zhivot na blagostta, }
      \line { "   "  V noviya svetal toz zhivot,}
      \line {  "   " Zhivot na radostta.}
      \line { " " }
     
      \line { 3. Trepti zorata lekokrila  }
      \line {   "   " pri rilskite ochi. }  
      \line {   "   " Tuk chudnata tsigulka }
      \line {   "   " s nov ton shte zazvuchi. } 
      
      \line { " " }
      \line { "   " \italic {Refrain ...} }
      \line { " " }

      \line { 4. Lachi ot lyubovta ni vlivat }
      \line {   "   " V gardite zhiva toplina, }  
      \line {   "   " Sas sladka vyara ni povdigat }
      \line {   "   " Vav krepost i videlina. } 
      
      \line { " " }
      \line { "   " \italic {Refrain ...} }
      \line { " " }
      
      \line { 5.  O tezi lachi ot Boga idat, }
      \line {   "   " Te palnyat nashite sartsa, }  
      \line {   "   " I shepnat sladko, kak Toy vika: }
      \line {   "   " Elate, moite detsa! } 
    } %column
} % markup

\pageBreak

% include foreign translation(s) of the song
\include "lyrics_de/016_zorata_na_noviya_zhivot_lyrics_de.ly"

} % bookpart
