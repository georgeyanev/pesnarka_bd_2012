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

      \context {
        % change staff size
        \Staff
        fontSize = #+0 % affects notes size only
        \override StaffSymbol #'staff-space = #(magstep -3)
        \override StaffSymbol #'thickness = #0.5
        \override BarLine #'hair-thickness = #1
        %\override StaffSymbol #'ledger-line-thickness = #'(0 . 0)
      }

      \context {
        % adjust space between staff and lyrics and between the two lyric lines
        \Lyrics
        \override VerticalAxisGroup.nonstaff-relatedstaff-spacing = #'((basic-distance . 4.5))
        \override VerticalAxisGroup.nonstaff-nonstaff-spacing = #'((minimum-distance . 2))
      }
    } % layout

    \new Voice \absolute {

      \clef treble
      \key c \major
      \time 3/4
      %\tempo "Moderato" 8 = 160
      \tempo \markup {
        % make tempo note smaller
        \concat {
          "Andante" \normal-text { " (" }
          \teeny \general-align #Y #DOWN \note #"4" #0.8
          \normal-text { " = 60/63)" }
        }
      }
      \autoBeamOff
      c'8 g c' g c' g | b8 g b g b g \break |

      \time 4/4  g8 g a [( b )] c'2 |g8 g a [( b )] c'2 | g8 g a [( b )] c'2 \break |

      \repeat volta 2 {
        e'8 d' c' d' e' e' e' e' | g'8 f' e' d' e' d' c' b \break |

        d'8 c' b a a g g g |c'8 c' c' d' e'2 \break |

        d'8 d' d' e' f'2 | g'8 f' e' d' c'2 \break
      }

      \repeat volta 2 {
        c''8 b' a' g' a' g' g' g' |  c''8 b' a' g' a' g' g' g' \break |

        a'8 g' f' e' g'2 | d'8 d' d' e' f'2 | g'8 f' e' d' c'2
      }  \break |

      \repeat volta 2 {
        d''8 c'' b' a' b' a' g' g' | d''8 c'' b' a' b' a' g' g' \break

        a'8 g' f' e' g'2 | d'8 d' d' e' f'2 | g'8 f' e' d' c'2
      } \break |


      \repeat volta 2 {
        e''8 d'' c'' b' d'' c'' b' a' | e''8 d'' c'' b' d'' c'' b' a' \break |

        b'8 a' g' fis' g'2 | d'8 d' d' e' f'!2 | g'8 f' e' d' c'2
      } \break | % 27
    }

    \addlyrics {
      Бла -- гост,
      бла -- гост, бла -- гост но -- си, но -- си, но --
      си "Свет-" -- ли -- на -- та, "Свет-" -- ли -- на -- та,
      "Свет-" -- ли -- на -- та. Ра -- дост но -- си за
      Жи -- во -- та, Ра -- дост но -- си за Жи -- во
      -- та, Ра -- дост но -- си за Жи -- во -- та, за
      Жи -- во -- та тя, за Жи -- во -- та тя, за Жи
      -- во -- та тя. Ста -- ри вди -- га, мла -- ди
      вди -- га, ста -- ри вди -- га, мла -- ди вди --
      га от лег -- ло -- то тя, от лег -- ло -- то
      тя, от лег -- ло -- то тя. Бол -- ни мил -- ва,
      здра -- ви рад -- ва, бол -- ни мил -- ва, здра --
      ви рад -- ва, ко -- га и -- де тя, ко -- га и
      -- де тя, ко -- га и -- де тя. И ре -- ки те
      -- кат о -- бил -- но, и цве -- тя цъф -- тят
      кра -- си -- во, ко -- га и -- де тя, ко -- га
      и -- де тя, ко -- га и -- де тя.
    }
    \addlyrics {
      Bla -- gost, bla
      -- gost, bla -- gost no -- si, no -- si, no -- si Svet -- li
      -- na -- ta, Svet -- li -- na -- ta, Svet -- li -- na -- ta.
      Ra -- dost no -- si za zhi -- vo -- ta, ra -- dost no -- si za zhi
      -- vo -- ta, ra -- dost no -- si za zhi -- vo -- ta, za zhi --
      vo -- ta tya, za zhi -- vo -- ta tya, za zhi -- vo -- ta tya.
      Sta -- ri vdi -- ga, mla -- di vdi -- ga, sta -- ri vdi -- ga,
      mla -- di vdi -- ga, ot leg -- lo -- to tya, ot leg -- lo -- to
      tya, ot leg -- lo -- to tya. Bol -- ni mil -- va, zdra -- vi
      rad -- va, Bol -- ni mil -- va, zdra -- vi rad -- va, ko -- ga
      i -- de tya, ko -- ga i -- de tya, ko -- ga i -- de tya. I re
      -- ki te -- kat o -- bil -- no, i tsve -- tya tsaf -- tyat kra --
      si -- vo, ko -- ga i -- de tya, ko -- ga i -- de tya, ko -- ga
      i -- de tya.}

      \header {
        title = \markup \column \normal-text \fontsize #2.5 {
          \center-align
          \line { Благост}
          \vspace #-0.6
          \center-align
          \line \fontsize #-3 { Blagost }
          \vspace #-0.8
          \center-align
          \line \fontsize #-3 { " " }
        }
      }

      \midi{}

    } % score
    
      \markup \halign #-14.8 \raise #2.8 \override #'(baseline-skip . 2) {
        \column  {
          \line  \right-align {
            \bold  { "D. C. al Fine" }
          }
          \line {" "} 
          \line {" "} 
          \line {" "} 
          \line {" "} 
          \line {" "} 
        }
      }


    

    % include foreign translation(s) of the song
    \include "lyrics_de/072_blagost_lyrics_de.ly"

  } % bookpart
