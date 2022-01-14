\version "2.22.0"

\paper {
  #(set-paper-size "a5")
}

"rightBraces052_1" = \markup {
  \column {
    % repeat braces
    \translate #'(0 . -9.2 )
    \right-brace #30

    \translate #'(0 . -13.6 )
    \right-brace #30

    \translate #'(0 . -13.9 )
    \right-brace #30

  }
  \column {
    % repeat numbers
    \translate #'(0 . -9.7 )
    2

    \translate #'(0 . -16.6 )
    2

    \translate #'(0 . -16.9 )
    2

  }
}

"rightBraces052_2" = \markup {
  \column {
    % repeat braces
    \translate #'(0 . -9.1 )
    \right-brace #30

    \translate #'(0 . -13.9 )
    \right-brace #30

    \translate #'(0 . -13.7 )
    \right-brace #30

    \translate #'(0 . -14 )
    \right-brace #30

    \translate #'(0 . -13.9 )
    \right-brace #30
  }
  \column {
    % repeat numbers
    \translate #'(0 . -9.7 )
    2

    \translate #'(0 . -16.8 )
    2

    \translate #'(0 . -16.8 )
    2

    \translate #'(0 . -16.9 )
    2

    \translate #'(0 . -16.9 )
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
      \override VerticalAxisGroup.nonstaff-relatedstaff-spacing = #'((basic-distance . 4.5))
      \override VerticalAxisGroup.nonstaff-nonstaff-spacing = #'((minimum-distance . 2))
    }
  } % layout

 \new Voice \absolute  {
    \clef treble
    \key f \major
    \time 2/4 
    \tempo \markup { % make tempo note smaller
      \concat { "Tempo di marcia" \normal-text { " (" }
          \teeny \general-align #Y #DOWN \note {4} #0.8
          \normal-text { " = 100)" }
      }
    }
    \autoBeamOff
    c'4 f' | a'8 g' f' e' | g'8 d'4. | c'4 f' \break |
    g'8 a' bes' c'' | a'4. r8 \repeat volta 2 {  | c''4 c'' | d''8 c'' bes' a' | c''8 g'4. \break |
    c'4  f'4 | g'8 a' bes' c'' a'4 g'8 g' | f'4. r8 } \break
  }
  
  \addlyrics {
    "1. Дър" -- зост във Хри -- ста, дру -- га -- ри, с~Не -- го 
    да вър -- вим на -- пред, Той е ца -- рят на Жи -- во -- та, 
    цар -- ство -- то Му е на -- вред, е на -- вред.
  }

  \addlyrics {
    "1. Dar" -- zost vav Hri -- sta, dru -- ga -- ri, s~Ne -- go 
    da var -- vim na -- pred, Toy e tsa -- ryat na Zhi -- vo -- ta, 
    tsar -- stvo -- to Mu e na -- vred, e na -- vred.
  }
  
  \header {
    title = \markup \column \normal-text \fontsize #2.5 {
              \center-align
              \line {  Дързост в Христа }
              \vspace #-0.6
              \center-align
              \line \fontsize #-3 { Darzost v Hrista }
              \vspace #-0.8
              \center-align
              \line \fontsize #-3 { " " }
            }
  }
  
  \midi{}

} % score


\markup \fontsize #+2.5 {
    \hspace #1
    \override #'(baseline-skip . 2.4) % affects space between column lines
    \column {

\line {   "   "}
\line {   1.  Дързост във Христа, другари,}

\line {   "   " с Него да вървим напред,}

\line {   "   " Той е царят на Живота,}

\line {   "   " царството Му е навред,}

\line {   "                " е навред.}

\line {   "   "}
\line {   "   "}

\line {   2.  Дързост във Христа, другари,}

\line {   "   " да вървиме все напред!}

\line {   "   " Бог-Христос ни в пътя води,}

\line {   "   " Той е мощен цар навред,}

\line {   "               " цар навред.}
\line {   "   "}
\line {   "   "}
   
\line {   3.  И тук долу, и там горе, } 

\line {   "   " в мировете без конец, } 

\line {   "   " всъде само Той царува, } 

\line {   "   " Той е скиптър и венец, } 

\line {   "                 " и венец. } 

} 
\"rightBraces052_1"
\hspace #3
\override #'(baseline-skip . 2.4)
\column {

\line {   "   "}
\line {   1.  Darzost vav Hrista, drugari,}

\line {   "   " s Nego da varvim napred,}

\line {   "   " Toy e tsaryat na Zhivota,}

\line {   "   " tsarstvoto Mu e navred,}

\line {   "                " e navred.}

\line {   "   "}
\line {   "   "}

\line {   2.  Darzost vav Hrista, drugari,}

\line {   "   " da varvime vse napred!}

\line {   "   " Bog-Hristos ni v patya vodi,}

\line {   "   " Toy e moshten tsar navred,}

\line {   "               " tsar navred.}
\line {   "   "}
\line {   "   "}
   
\line {   3.  I tuk dolu, i tam gore, } 

\line {   "   " v mirovete bez konets, } 

\line {   "   " vsade samo Toy tsaruva, } 

\line {   "   " Toy e skiptar i venets, } 

\line {   "                 " i venets. } 
    } %column
\"rightBraces052_1"
} % markup

\pageBreak

\markup \fontsize #+2.5 {
    \hspace #1
    \override #'(baseline-skip . 2.4) % affects space between column lines
    \column {

\line {   "   "}
\line {   4.  Управлява, благославя - } 

\line {   "   " всичко в Мъдрост да расте, } 

\line {   "   " плодове на Правда свята } 

\line {   "   " в жертва да Му принесе, } 

\line {   "              " принесе. } 

\line {   "   "}
\line {   "   "}

\line {   5. Ето днес ни горе викат, } 

\line {   "   " към Небето да вървим, } 
 
\line {   "   " че там Радост ни очаква. } 

\line {   "   " нов град да си съградим, } 

\line {   "              " съградим. } 

\line {   "   "}
\line {   "   "}

\line {   6. От смъртта се не плашете, } 

\line {   "   " не загива същността, } 

\line {   "   " туй, що смърт зовеме тука, } 

\line {   "   " за Небето е врата, } 

\line {   "              " е врата. } 

\line {   "   "}
\line {   "   "}

\line {   7. С радост и хвалебни песни } 

\line {   "   " ще прекрачим нейни праг, } 

\line {   "   " а отвъд Христос ни чака, } 

\line {   "   " все тъй кротък, все тъй благ, } 

\line {   "            " все тъй благ. } 

\line {   "   "}
\line {   "   "}

\line {   8. И там Той ще ни научи, } 

\line {   "   " тленното как да не тлей, } 

\line {   "   " как с телото си човека } 

\line {   "   " вечно може да живей, } 

\line {   "             " да живей. } 

} 
\"rightBraces052_2"
\hspace #5
\override #'(baseline-skip . 2.4)
\column {

\line {   "   "}
\line {   4.  Upravlyava, blagoslavya - } 

\line {   "   " vsichko v Madrost da raste, } 

\line {   "   " plodove na Pravda svyata } 

\line {   "   " v zhertva da Mu prinese, } 

\line {   "              " prinese. } 

\line {   "   "}
\line {   "   "}

\line {   5. Eto dnes ni gore vikat, } 

\line {   "   " kam Nebeto da varvim, } 
 
\line {   "   " che tam Radost ni ochakva. } 

\line {   "   " nov grad da si sagradim, } 

\line {   "              " sagradim. } 

\line {   "   "}
\line {   "   "}

\line {   6. Ot smartta se ne plashete, } 

\line {   "   " ne zagiva sashtnostta, } 

\line {   "   " tuy, shto smart zoveme tuka, } 

\line {   "   " za Nebeto e vrata, } 

\line {   "              " e vrata. } 

\line {   "   "}
\line {   "   "}

\line {   7. S radost i hvalebni pesni } 

\line {   "   " shte prekrachim neyni prag, } 

\line {   "   " a otvad Hristos ni chaka, } 

\line {   "   " vse tay krotak, vse tay blag, } 

\line {   "            " vse tay blag. } 

\line {   "   "}
\line {   "   "}

\line {   8. I tam Toy shte ni nauchi, } 

\line {   "   " tlennoto kak da ne tley, } 

\line {   "   " kak s teloto si choveka } 

\line {   "   " vechno mozhe da zhivey, } 

\line {   "             " da zhivey. } 

    } %column
\"rightBraces052_2"
} % markup

\pageBreak

% include foreign translation(s) of the song
\include "lyrics_de/052_darzost_v_Hrista_lyrics_de.ly"

} % bookpart
