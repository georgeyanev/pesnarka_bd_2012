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
    ragged-last = ##f % do not spread last line to fill the whole space
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
    \key d \minor
    \time 4/4 
    \tempo \markup { % make tempo note smaller
      \concat { "Andante " \normal-text { "(" }
          \teeny \general-align #Y #DOWN \note {4} #0.8
          \normal-text { " = 60)" }
      }
    }  
  
\autoBeamOff	
\partial 4
 
 d'4 | g'4 a' a'2 | bes'8 a' bes'4 c'' bes' | \time 5/4  a'4 gis' a'2 a'8 [( bes' )] \break |

\time 3/4  c''4 d''2 | \time 4/4  bes'4 a' g' f'8 [( g' )] | \time 5/4  a'2 d'8 e' f'4 e' \break | 
  
 \autoBeamOff d'2 a8 a d'4 a |  \time 3/4  d'2 a4 |  \time 4/4  f'4 e' d'2 \break |

 \time 3/4  a8 a d'4 a | d'4 d'2 | \time 4/4  e'8 f' g' a' bes'4 g' \break | 
  
  \time 3/4  a'2 a'4 |  \time 5/4  d''4 d''2 bes'8 a' g'4 | \time 4/4  bes'4 a'2 a'8 bes' \break |

\time 5/4  \repeat volta 2 { c''4 c''2 d''4 a'8 bes' | \time 4/4  c''4 c''2 bes'4 | \time 3/4  bes'8 a' bes'4 d'' \break |

\time 4/4  c''4 b' a' e' } \alternative { { | f'4 d'2 a'8 bes' | } {  f'4 d'2 s4 } } \bar "|."
  }
  
 \addlyrics {
  За -- па --
  ли се о -- гъ -- нят на ог -- ни -- ще -- то.
  За -- туп -- ка мо -- е -- то сър -- це. Хля --
  "-бът" е го -- тов, хля -- бът е го -- тов. За --
  па -- ли се но -- ви -- ят све -- тил -- ник.
  Сло -- жи се тра -- пе -- за -- та. Я -- ви се
  мо -- я -- та ми -- съл: хля -- ба слад -- ки
  днес да въз -- лю -- бя и слад -- "-ки" -- те му
  ду -- ми аз да чу -- я. Хля -- ба чу -- я.
  }

  \addlyrics {
  Za -- pa --
  li se o -- ga -- "-nyat" na og -- ni -- shte -- to.
  Za -- tup -- ka mo -- e -- to sar -- tse. Hlya --
  "-bat" e go -- tov, hlya -- bat e go -- tov. Za --
  pa -- li se no -- vi -- yat sve -- til -- nik.
  Slo -- zhi se tra -- pe -- za -- ta. Ya -- vi se
  mo -- ya -- ta mi -- sal: hlya -- ba slad -- ki
  dnes da vaz -- lyu -- bya i slad -- ki -- te mu
  du -- mi az da chu -- ya. Hlya -- ba chu -- ya.
  }
  
  \header {
    title = \markup \column \normal-text \fontsize #2.5 {
              \center-align
              \line { Запали се огънят }
              \vspace #-0.6
              \center-align
              \line \fontsize #-3 {Zapali se oganyat }
              \vspace #-0.8
              \center-align
              \line \fontsize #-3 { " " }
            }
  }
  
  
  
  \midi{}

} % score





\pageBreak

% include foreign translation(s) of the song
\include "lyrics_de/097_zapalise_ogunyat_lyrics_de.ly"

} % bookpart
