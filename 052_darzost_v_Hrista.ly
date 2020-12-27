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

 \new Voice \absolute  {
    \clef treble
    \key f \major
    \time 2/4 
    \tempo \markup { % make tempo note smaller
      \concat { "Tempo di marica" \normal-text { "(" }
          \teeny \general-align #Y #DOWN \note #"4" #0.8
          \normal-text { " = 100)" }
      }
    }
    \autoBeamOff
    c'4 f' | a'8 g' f' e' | g'8 d'4. | c'4 f' \break |
    g'8 a' bes' c'' | a'4. r8 \repeat volta 2 {  | c''4 c'' | d''8 c'' bes' a' | c''8 g'4. \break |
    c'4  f'4 | g'8 a' bes' c'' a'4 g'8 g' | f'4. r8 } \break
  }
  
  \addlyrics {
    Дър -- зост във Хри -- ста, дру -- га -- ри, с~Не -- го 
    да вър -- вим на -- пред, Той е ца -- рят на Жи -- во -- та, 
    цар -- ство -- то Му е на -- вред, е на -- вред.
  }

  \addlyrics {
    Dar -- zost vav Hri -- sta, dru -- ga -- ri, s~Ne -- go 
    da var -- vim na -- pred, Toy e tsa -- ryat na ZHi -- vo -- ta, 
    tsar -- stvo -- to Mu e na -- vred, e na -- vred.
  }
  
  \header {
    title = \markup \column \normal-text \fontsize #2.5 {
              \center-align
              \line {  Дързост във Христа }
              \vspace #-0.6
              \center-align
              \line \fontsize #-3 { Darzost vav Hrista }
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
  \line {   1.  Дързост във Христа, другари,}

\line {   "   " да вървиме все напред!}

\line {   "   " Той е царят на Живота,}

\line {   "   " царството Му е навред,}

\line {   "   " е навред.}

\line {   "   "}

 \line {   2.  Дързост във Христа, другари,}

\line {   "   " да вървиме все напред!}

\line {   "   " Бог — Христос ни в пътя води,}

\line {   "   " Той е мощен цар навред,}

\line {   "   " цар навред.}
\line {   "   "}
   

 \line {   3.  И тук, долу, и там, горе, } 

 \line {   "   " в мировете без конец, } 

 \line {   "   " всъде само Той царува, } 

 \line {   "   " Той е скиптър и венец, } 

 \line {   "   " и венец. } 

 \line {   "   " всъде само Той царува, } 

 \line {   "   " Той е скиптър и венец, } 

 \line {   "   " и венец. } 

\line {   "   "}
 \line {   4.  Управлява, благославя — } 

 \line {   "   " всичко в мъдрост да расте, } 

 \line {   "   " плодове на правда свята } 

 \line {   "   " в жертва да му принесе, } 

 \line {   "   " принесе. } 

 \line {   "   " плодове на правда свята } 

 \line {   "   " в жертва да му принесе, } 

 \line {   "   " принесе. } 

 \line {   "   "}

 \line {   5. Ето днес ни горе викат, } 

 \line {   "   " към Небето да вървим, } 
 
 \line {   "   " че там радост ни очаква. } 

 \line {   "   " нов град да си съградим. } 

 \line {   "   " съградим. } 

 \line {   "   " че там радост ни очаква. } 

 \line {   "   " нов град да си съградим. } 

 \line {   "   " съградим. } 
 \line {   "   "}

 \line {   6. От смъртта се не плашете, } 

 \line {   "   " не загива същността, } 

 \line {   "   " туй, що смърт зовеме тука, } 

 \line {   "   " за небето е врата, } 

\line {   "   " е врата. } 

\line {   "   " туй, що смърт зовеме тука, } 

\line {   "   " за небето е врата, } 

\line {   "   " е врата. } 
\line {   "   "}

\line {   7. С радост и хвалебни песни } 

\line {   "   " ще прекрачим нейни праг, } 

\line {   "   " а отвъд Христос ни чака, } 

\line {   "   " все тъй кротък, все тъй благ, } 

\line {   "   " все тъй благ. } 

\line {   "   " а отвъд Христос ни чака, } 

\line {   "   " все тъй кротък, все тъй благ, } 

\line {   "   " все тъй благ. } 

\line {   "   "}

\line {   8. И там Той ще ни научи, } 

\line {   "   " тленното как да не тлей, } 

\line {   "   " как с телото си човека } 

\line {   "   " вечно може да живей, } 

\line {   "   " да живей. } 

\line {   "   " как с телото си човека } 

\line {   "   " вечно може да живей,  } 

\line {   "   " да живей. } 
    }

    \hspace #5
    \override #'(baseline-skip . 2.4)
    \column {
      \line {   1.  Darzost vav Hrista, drugari,}

\line {   "   " da varvime vse napred!}

\line {   "   " Toy e tsaryat na Zhivota,}

\line {   "   " tsarstvoto Mu e navred,}

\line {   "   " tsar navred.}

\line {   "   "}

 \line {   2.  Darzost vav Hrista, drugari,}

\line {   "   " da varvime vse napred!}

\line {   "   " Bog — Hristos ni v patya vodi,}

\line {   "   " Toy e moshten tsar navred,}

\line {   "   " tsar navred.}
\line {   "   "}
   

 \line {   3.  I tuk, dolu, i tam, gore, } 

 \line {   "   " v mirovete bez konets, } 

 \line {   "   " vsade samo Toy tsaruva, } 

 \line {   "   " Toy e skiptar i venets, } 

 \line {   "   " i venets. } 

 \line {   "   " vsade samo Toy tsaruva, } 

 \line {   "   " Toy e skiptar i venets, } 

 \line {   "   " i venets. } 

\line {   "   "}
 \line {   4.  Upravlyava, blagoslavya — } 

 \line {   "   " vsichko v madrost da raste, } 

 \line {   "   " plodove na pravda svyata } 

 \line {   "   " v zhertva da mu prinese, } 

 \line {   "   " prinese. } 

 \line {   "   " plodove na pravda svyata } 

 \line {   "   " v zhertva da mu prinese, } 

 \line {   "   " prinese. } 

 \line {   "   "}

 \line {   5. Eto dnes ni gore vikat, } 

 \line {   "   " kam Nebeto da varvim, } 
 
 \line {   "   " che tam radost ni ochakva. } 

 \line {   "   " nov grad da si sagradim. } 

 \line {   "   " sagradim. } 

 \line {   "   " che tam radost ni ochakva. } 

 \line {   "   " nov grad da si sagradim. } 

 \line {   "   " sagradim. } 
 \line {   "   "}

 \line {   6. Ot smartta se ne plashete, } 

 \line {   "   " ne zagiva sashtnostta, } 

 \line {   "   " tuy, shto smart zoveme tuka, } 

 \line {   "   " za nebeto e vrata, } 

\line {   "   " e vrata. } 

\line {   "   " tuy, shto smart zoveme tuka, } 

\line {   "   " za nebeto e vrata, } 

\line {   "   " e vrata. } 
\line {   "   "}

\line {   7. S radost i hvalebni pesni } 

\line {   "   " shte prekrachim neyni prag, } 

\line {   "   " a otvad Hristos ni chaka, } 

\line {   "   " vse tay krotak, vse tay blag, } 

\line {   "   " vse tay blag. } 

\line {   "   " a otvad Hristos ni chaka, } 

\line {   "   " vse tay krotak, vse tay blag, } 

\line {   "   " vse tay blag. } 

\line {   "   "}

\line {   8. I tam Toy shte ni nauchi, } 

\line {   "   " tlennoto kak da ne tley, } 

\line {   "   " kak s teloto si choveka } 

\line {   "   " vechno mozhe da zhivey, } 

\line {   "   " da zhivey. } 

\line {   "   " kak s teloto si choveka } 

\line {   "   " vechno mozhe da zhivey,  } 

\line {   "   " da zhivey. } 
    } %column
} % markup

\pageBreak

% include foreign translation(s) of the song
%\include "lyrics_de/lyrics_de_file_name.ly"

} % bookpart
