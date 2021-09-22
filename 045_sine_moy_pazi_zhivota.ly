\version "2.20.0"

\paper {
  #(set-paper-size "a5")
}

"rightBraces045" = \markup {
  \column { % repeat braces
    \translate #'(0 . -12.7 )
    \right-brace #44

    \translate #'(0 . -15.4 )
    \right-brace #44
  }
  \column { % repeat numbers
    \translate #'(0 . -13.3 )
    2
    
    \translate #'(0 . -19.8 )
    2
  }
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
      \override VerticalAxisGroup.nonstaff-relatedstaff-spacing = #'(
        (basic-distance . 4.5)
        (padding . 0.4)
      )
      \override VerticalAxisGroup.nonstaff-nonstaff-spacing = #'((minimum-distance . 2))
    }
  } % layout

 \new Voice \absolute  {
    \clef treble
    \key a \minor
    \time 2/4
     \tempo \markup { % make tempo note smaller
      \concat { "Andante " \normal-text { "(" }
          \teeny \general-align #Y #DOWN \note #"4" #0.8
          \normal-text { " = 72)" }
      }
    }
    \partial 4
    \autoBeamOff
 
    e'8 e'8 | a'4 b' | c''4 b' | a'4 gis' ~ | gis'4 e'8 e' | e''4 f'' \break | 

    e''4 d'' |  c''4 \fermata b'8 a' |  gis'4 f' | e'4 dis' |  f'4 e' ~ |  e'4 b'8 c'' \break |

    d''4 e'' |  c''4 b' | a'4 \fermata g'?8 g' \repeat volta 2 {   |  c''4 g' |  c''4 d'' | e''4 c'' ~ \break | 

    c''4 e''8 f'' | g''4 f'' | e''4 d'' | c''4 \fermata e'8 e' | a'4 b' | c''4 d'' \break |

    e''4 b' ~ | b'4 d''8 d'' c''4 b' | a'4 gis' |} \alternative { { a'4 \fermata g'?8 g'  } { a'4\fermata } } \bar "|."
  }
  
  \addlyrics {
    Си -- не мой, па -- зи Жи -- во -- та, скри -- ти -- я у
    те -- бе жар; той без -- це -- нен е по сми -- съл и ве -- 
    ли -- ко -- ле -- пен дар. Дух без -- смър -- тен, Дух не -- тле -- нен, __
    туй, ко -- е -- то веч -- но бди и ра -- бо -- ти без у --
    мо -- ра, не -- пре -- стан -- но в_теб гра -- ди! Дух без -- ди.  
  }

  \addlyrics {
    Si -- ne moy, pa -- zi Zhi -- vo -- ta, skri -- ti -- ya u
    te -- be zhar; toy bez -- tse -- nen e po smi -- sal i ve -- 
    li -- ko -- le -- pen dar. Duh bez -- smar -- ten, Duh ne -- tle -- nen, __
    tuy, ko -- e -- to vech -- no bdi i ra -- bo -- ti bez u --
    mo -- ra, ne -- pre -- stan -- no v_teb gra -- di! Duh bez -- di.  
  }

  
  \header {
    title = \markup \column \normal-text \fontsize #2.5 {
              \center-align
              \line { Сине мой, пази живота}
              \vspace #-0.6
              \center-align
              \line \fontsize #-3 { Sine moy, pazi zhivota }
              \vspace #-0.8
              \center-align
              \line \fontsize #-3 { " " }
            }
  }
  
  \midi{}

} % score

%\pageBreak

\markup \fontsize #+2.5 {
    \hspace #1
    \vspace #0.8
    \override #'(baseline-skip . 2.4) % affects space between column lines
    \column {
      \line { 2. Ти си тоз Живот реален, }

\line {   "   " синко, себе си познай! }

\line {   "   " Твойта сила е голяма, }

\line {   "   " дните твои нямат край. }

\line {   "   " Ти създаваш всеки подтик, }

\line {   "   " благородния стремеж,}

\line {   "   " идеалите високи}

\line {   "   " и красивия копнеж.}
\vspace #0.2

\line {   3. Тази плът ти е одежда,}

\line {   "   " а Земята — школен чин;}

\line {   "   " ти живееш и се учиш,}

\line {   "   " като малък Божи Син.}

\line {   "   " Дързост, мили мой Животе,}

\line {   "   " с теб е Божата Любов!}

\line {   "   " Тя зове те все нагоре —}

\line {   "   " в съвършенство и свят Нов.}

}
\"rightBraces045"

    \hspace #3
    \override #'(baseline-skip . 2.4)
    \column {
        \line { 2. Ti si toz Zhivot realen, }
     \line {   "   " sinko, sebe si poznay! }

\line {   "   " Tvoyta sila e golyama, }

\line {   "   " dnite tvoi nyamat kray. }

\line {   "   " Ti sazdavash vseki podtik, }

\line {   "   " blagorodniya stremezh,}

\line {   "   " idealite visoki}

\line {   "   " i krasiviya kopnezh.}

\vspace #0.2

\line {   3. Tazi plat ti e odezhda,}

\line {   "   " a Zemyata — shkolen chin;}

\line {   "   " ti zhiveesh i se uchish,}

\line {   "   " kato malak Bozhi Sin.}

\line {   "   " Darzost, mili moy Zhivote,}

\line {   "   " s teb e Bozhata Lyubov!}

\line {   "   " Tya zove te vse nagore —}

\line {   "   " v savarshenstvo i Svyat Nov.}

    } %column
\"rightBraces045"
} % markup

\pageBreak

% include foreign translation(s) of the song
\include "lyrics_de/045_sine_moy_pazi_zhivota_lyrics_de.ly"

} % bookpart
