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
      \override VerticalAxisGroup.nonstaff-relatedstaff-spacing = #'(
        (basic-distance . 4.5)
        (padding . 0.2)
      )
      \override VerticalAxisGroup.nonstaff-nonstaff-spacing = #'((minimum-distance . 2))
    }
  } % layout


  \new Voice \absolute  {
    \clef treble
    \key d \minor
    \time 3/4 
    \tempo \markup { % make tempo note smaller
      \concat { \large "Andante " \normal-text { "(" }
        \teeny \general-align #Y #DOWN \note {4} #0.8
        \normal-text { " = 72)" }
      }
    }  
    \partial 4
    \autoBeamOff  
    
    a4^\mp^\< | d'2 e'8. \! e'16 | f'4^\> ( d'4 cis'8[d'8] |  e'4 ) a4 \! r4 | \break

    \time 4/4  a'2^ \p c''4 bes'4 | a'4 ( g'4 ) a'2 ( | a'4 ) r4 r4 a4^\mf ^\< | f'2 e'4 \! d'8 ^\markup { \large \italic "   sosten."} [( e'32 d'32 cis'32 d'32 )] | \break

    \once \override Hairpin.shorten-pair = #'(0 . -3) bes'2^\> ^\markup { \large \bold "a tempo" } a'2 ( | a'4 ) \! r4 r4 \override TupletNumber.text = \markup { \bold "3"} \times 2/3  { e'8^\< [( f'8 g'8 )] } | a'4 \! \fermata g'4^\> f'4 e'4 |   d'2 \! r2 | \break

    a4^\mf d'8 e'8 f'8 [( d'8 )]  cis'8 [( d'8 )] | e'8 a8 bes4 ( a8 [g8] ) a4 ( | a4 ) r4 r2 | \break

    a'4^\mf g'8 f'8 e'8 d'8 d'8 cis'8 | d'4 ( e'4 ) d'2 | \time 3/4  | c''4^\mp bes'4 a'4 | \break

    a'2 a'4 | \time 4/4  d''4 c''4 bes'4 ( g'4 ) | a'2. r4 | \time 3/4 | a'2^\mf f'8 d'8 | \break

    bes'2 a'4 ( | a'4 ) a4 a4 | e'2 d'4 ( | d'4 ) r4 a4 | d'2^\p^\< e'8. e'16 \! | \break

    f'4^\> ( d'4 cis'8 [d'8] | \time 4/4  e'4 ) a4 \! ^\markup { "      " \fontsize #3 \musicglyph "comma"} 
    
    \once \override Hairpin.shorten-pair = #'(1.5 . -4)
    a'2  ^\> | c''4 ^\markup { \large \bold "rall." }  bes'4 a'4^\markup { \dynamic "ppp"} ( g'4 ) | a'1 \! \bar "|."
     
    
  }
  
  \addlyrics { 
 
Кра -- сив е Жи -- во -- тът на Ан -- ге -- ли -- те.
Кра -- сив е Жи -- во -- тът на на -- ша -- та ду -- ша.
Ти ще спо -- лу -- чиш във Жи -- во -- та,
ти ще спо -- лу -- чиш във Жи -- во -- та
Слу -- шай гла -- са на Ан -- ге -- ли -- те
и ще спо -- лу -- чиш във Жи -- во -- та.
Кра -- сив е жи -- во -- тът на Ан -- ге -- ли -- те.
    
  }

  \addlyrics {
 Kra -- siv e Zhi -- vo -- tat na An -- ge -- li -- te.
Kra -- siv e Zhi -- vo -- tat na na -- sha -- ta du -- sha.
Ti shte spo -- lu -- chish vav Zhi -- vo -- ta,
ti shte spo -- lu -- chish vav Zhi -- vo -- ta
Slu -- shay gla -- sa na An -- ge -- li -- te
i shte spo -- lu -- chish vav Zhi -- vo -- ta.
Kra -- siv e zhi -- vo -- tat na An -- ge -- li -- te.
  }

  \header {
    title = \markup \column \normal-text \fontsize #2.5 { 
              \center-align
              \line { Ти ще сполучиш в Живота }
              \vspace #-0.6
              \center-align
              \line \fontsize #-3 { Ti shte spoluchish v zhivota  }
              \vspace #-0.8
              \center-align
              \line \fontsize #-3 { " " }
            }
  }
  
  \midi{}
} % score


\pageBreak

% include foreign translation(s) of the song
\include "lyrics_de/214_ti_ste_spoluchish_v_zhivota_de.ly"

} % bookpart
