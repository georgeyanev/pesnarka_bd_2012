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
    \key g \minor
    \time 3/4 \tempo \markup { % make tempo note smaller
      \concat { "Andante " \normal-text { " (" }
          \teeny \general-align #Y #DOWN \note #"4" #0.8
          \normal-text { " = 66)" }
      }
    }
    \partial 4
    \autoBeamOff
      f'8 f'8 | d'4. es'8 f' ([ g' ]) |  f'2 g'8 a' |  bes'4. g'8 g'4 |  f'2 f'8 f' \break |
      c''4. b'8 c'' ([ d'' ]) |c''2 a'8 a' | bes'4 e' g' | f'2 f'8 f' \break |
      d'4. es'8 f' ([ g' ]) | f'2 g'8 a' | bes'4. a'8 bes' ([ c'' ]) | d''2 es''8 es'' \break 
      \repeat volta 2 {d''4 c'' c'' bes'2 bes'8 bes' | a'4. a'8 g' ( a' ) |} \alternative { { bes'2 es''8 es'' } {  bes'2 \bar "|." \break } }
 }
  
\addlyrics {
    Ми -- ло -- сър -- ди -- е -- то е гра -- ди -- на рай --
    ска, чуд -- но пре -- ме -- не -- на, пъл -- на
    с~ху -- бост май -- ска; бил -- ки и дър -- ве --
    та, в_кра -- со -- та раз -- ви -- ти, с~и -- зо
    -- бил -- на рож -- ба вся -- ко -- га по -- кри
    -- ти, с~и -- зо -- ти.    
  }

  \addlyrics {
    Mi -- lo -- sar -- di -- e -- to e gra -- di -- na ray --
    ska, chud -- no pre -- me -- ne -- na, pal -- na
    s~hu -- bost may -- ska; bil -- ki i dar -- ve --
    ta, v_kra -- so -- ta raz -- vi -- ti, s~i -- zo
    -- bil -- na rozh -- ba vsya -- ko -- ga po -- kri
    -- ti, s~i -- zo -- ti.    
  }
  
  \header {
    title = \markup \column \normal-text \fontsize #2.5 {
              \center-align
              \line { Милосърдието }
              \vspace #-0.6
              \center-align
              \line \fontsize #-3 { Milosardieto}
              \vspace #-0.8
              \center-align
              \line \fontsize #-3 { " " }
            }
  }
  
  \midi{}

} % score

\pageBreak

\markup \fontsize #+2.5 {
    \hspace #12
    \override #'(baseline-skip . 2.4) % affects space between column lines
    \column {
    

\line {2. Всичко драго, мило и в любов живее,}

\line {"   "и цъфти, и върже, и расте, и зрее.}

\line {"   "Пролет, лято, есен и през цяла зима,}

\line {"   "откогато хора на Земята има. (2)}
\vspace #0.4

\line {2. Vsichko drago, milo i v lyubov zhivee,}

\line {"   "i tsafti, i varzhe, i raste, i zree.}

\line {"   "Prolet, lyato, esen i prez tsyala zima,}

\line {"   "otkogato hora na Zemyata ima. (2)}
\line { " " }

\line {3. И щом пътник морен мине край градина,}

\line {"   "всяко живо клонче весело му кима –}

\line {"   "плодове узрели без корист предлага}

\line {"   "с непресторна нега и усмивка блага. (2)}
\vspace #0.4
\line {3. I shtom patnik moren mine kray gradina,}

\line {"   "vsyako zhivo klonche veselo mu kima –}

\line {"   "plodove uzreli bez korist predlaga}

\line {"   "s neprestorna nega i usmivka blaga. (2)}
\line { " " }

\line {4. Бедни и богати, здрави или болни,}

\line {"   "и по всяко време тука са доволни,}

\line {"   "че сменяват в радост грижите, хомота,}

\line {"   "и с утеха виждат смисъл във живота. (2)}
\vspace #0.4
\line {4. Bedni i bogati, zdravi ili bolni,}

\line {"   "i po vsyako vreme tuka sa dovolni,}

\line {"   "che smenyavat v radost grizhite, homota,}

\line {"   "i s uteha vizhdat smisal vav zhivota. (2)}
\line { " " }

\line {5. Затуй, който дири истинска победа,}

\line {"   "рай такъв прекрасен нека си отгледа;}

\line {"   "няма да се свърши щастие за него,}

\line {"   "ще го благославят и земя, и небо. (2)}
\vspace #0.4
\line {5. Zatuy, koyto diri istinska pobeda,}

\line {"   "ray takav prekrasen neka si otgleda;}

\line {"   "nyama da se svarshi shtastie za nego,}

\line {"   "shte go blagoslavyat i zemya, i nebo. (2)}
  }
} % markup

\pageBreak

% include foreign translation(s) of the song
\include "lyrics_de/038_milosardieto_lyrics_de.ly"
} % bookpart
