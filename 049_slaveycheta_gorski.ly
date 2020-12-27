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
    \key g \minor
    \time 2/4 \tempo "Tempo di marcia" 4 = 112
    \autoBeamOff
  
    bes'4. a'8 | c''8 bes' a' g' |  g'2 |  f'2 | a'4. g'8 \break | 
    a'8 g' es' g' |  f'2 |  d'2 \repeat volta 2 { es'4. es'8 | g'8 g' f' e' \break | 
    f'2 | bes'2 d''4. bes'8 | f'8 f' d'' d'' | c''2  bes'2 |\break }
  }
  
  \addlyrics {
    Ний сме сла -- вей -- че -- та гор -- ски, с~пес -- ни 
    сла -- вим Не -- бе -- са -- та, чув -- ства роб -- ски, гри -- жи 
    хор -- ски с~пес -- ни го -- ним от Зе -- мя -- та.
  }
  
  \addlyrics {
    Niy sme sla -- vey -- che -- ta gor -- ski, s~pes -- ni 
    sla -- vim Ne -- be -- sa -- ta, chuv -- stva rob -- ski, gri -- zhi 
    hor -- ski s~pes -- ni go -- nim ot Ze -- mya -- ta.
  }
  
  \header {
    title = \markup \column \normal-text \fontsize #2.5 {
              \center-align
              \line { Ний сме славейчета горски }
              \vspace #-0.6
              \center-align
              \line \fontsize #-3 { Niy sme slaveycheta gorski }
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
      

      \line { 2.  Наш'те песни са ронливи,}

\line {   "   " те ни носят радост вечно; }

\line {   "   "  хем са живи, хем игриви,}

\line {   "   " кат поточе бързотечно.}
\line {   "   " }

\line {   3. Ето, чуйте как се лее}

\line {   "   " песента ни в тишината,}

\line {   "   " и се лее, и люлее}

\line {   "   " като струя във душата.}
\line {   "   " }

\line {   4. От гласа ни тих и строен}

\line {   "   " всяко зло ще се прокуди,}

\line {   "   "нови воин – млад, достоен }

\line {   "   " с песните си ще пробудим.}
\line {   "   " } 

\line {   5. Пейте, пейте, мили птички,}

\line {   "   "тъй се истински живее;}

\line {   "   "пейте, пейте дружно всички – }

\line {   "   " целий свят със вас да пее! }

    }

    \hspace #5
    \override #'(baseline-skip . 2.4)
    \column {
     \line { 2.  Nash'te pesni sa ronlivi,}

\line {   "   " te ni nosyat radost vechno;}

\line {   "   "  hem sa zhivi, hem igrivi,}

\line {   "   " kat potoche barzotechno.}
\line {   "   " }

\line {   3. Eto, chuyte kak se lee}

\line {   "   " pesenta ni v tishinata,}

\line {   "   " i se lee, i lyulee}

\line {   "   " kato struya vav dushata.}
\line {   "   " }

\line {   4. Ot glasa ni tih i stroen}

\line {   "   " vsyako zlo shte se prokudi;}

\line {   "   "novi voin – mlad, dostoen –}

\line {   "   " s pesnite si shte probudim.}
\line {   "   " } 

\line {   5. Peyte, peyte, mili ptichki,}

\line {   "   "tay se istinski zhivee,}

\line {   "   "peyte, peyte druzhno vsichki – }

\line {   "   " tseliy svyat sas vas da pee! }
    } %column
} % markup

\pageBreak

% include foreign translation(s) of the song
\include "lyrics_de/049_slaveycheta_gorski_lyrics_de.ly"

} % bookpart
