\version "2.20.0"

\paper {
  #(set-paper-size "a5")
}

% define double dashed bar line

#(define-bar-line "!!" "!!" #f "!")
%The new bar line interface allows for easier extension and modification of the bar lines:

%* the input string of a bar line called by \bar "<bar string>" resembles the output one-by-one; a repeat sign is called by ":|."

%* (define-bar-line ...) or \defineBarLine allows for new definitions. These functions have four arguments, namely
%the bar line itself, the bar line used at the end of line, the bar line used at the begin of a new line and the span bar line.

%* Annotations for barlines can be added to distinguish between two identical barlines with different break
%  apperance or span bar lines.

%* To align span bars properly, the space character " " has a
%  special meaning. When it occurs, the width of the resembling glyph in the bar line definition is used.

%* New glyphs can be added easily.

%* Volta brackets take the bar line dimensions into account. 


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
    ragged-bottom = ##f % do not spread the staves to fill the whole vertical space

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
        \override VerticalAxisGroup.nonstaff-relatedstaff-spacing = #'(
          (basic-distance . 4.5)
          (padding . 0.5)
        )
        \override VerticalAxisGroup.nonstaff-nonstaff-spacing = #'((minimum-distance . 2))
      }
    } % layout

    \new Voice \absolute {
      \clef treble
      \key d \minor
      \time 6/4
      \tempo \markup {
        % make tempo note smaller
        \concat {
          "Andante" \normal-text { " (" }
          \teeny \general-align #Y #DOWN \note #"4" #0.8
          \normal-text { " = 60)" }
        }
      }

      \slurUp a4 ( d'8. e'16 f' e' d' cis' d'8 e' ) a2 \break 

      \time 5/4  a'16 ( bes' a' gis' a' bes' a' gis' a'8 bes' ) a'2 \break |


      \time 4/4  d''8. ( e''16 f'' e'' d'' cis'' \autoBeamOff d''8 [bes'] a' [g']| f'8 [e'] f' [g'] ) a'2 \break |

      \slurNeutral \time 2/4 d''4  cis''8 \noBeam cis'' | d''2  | f'4 e'8 e' | d'4. \bar "!!" d'16 [( e' )] \break |

      \time 6/8  \repeat volta 2 {
        | f'4^\markup {
          % make tempo notes
          \concat {
            \teeny \general-align #Y #DOWN \note #"4." #0.8
            \normal-text { " = " }
            \teeny \general-align #Y #DOWN \note #"4" #0.8
            \normal-text { "  (= 60)" }
          }
        }
        
        
         f'8 f'4 e'16 \noBeam d' |e'4. ~ e'4 e'16 [( f' )] | g'4 a'8 f'4 e'8 \break |

        f'4 e'8 d'4 e'8 |  e'4 g'8 f'4 e'8 | f'4 e'8 d'4 e'8 \break |

        e'4 g'8 f'4 e'8 | f'4 e'8 d'4. | \time 2/4 d''4^\markup {
          % make tempo notes
          \concat {
            \teeny \general-align #Y #DOWN \note #"4." #0.8
            \normal-text { " = " }
            \teeny \general-align #Y #DOWN \note #"4" #0.8
            \normal-text { "  (= 60)" }
          }
        }
        
         cis''8 \noBeam cis'' \break |

        d''2 | f'4 e'8 \noBeam e' |
      } \alternative { { d'4. \bar "!" \bar "!!" d'16 [( e'16 )] } { d'2 } } \bar "|."

    }

    \addlyrics {Си -- ла, Жи
  -- вот, здра -- "ве -" те са ед -- но, те са ед --
  но. Слу -- жи -- те -- ли на Ду -- ха, но -- си
  -- те -- ли на Ра -- дост -- та, кре -- пи -- те
  -- ли на мла -- дост -- та, кре -- пи -- те -- ли
  на мла -- дост -- "та -" те са ед -- но, те са ед
  -- но. Слу -- но.}
    \addlyrics {Si --  la,  Zhi --
   vot,  zdra --  ve,  te sa ed --  no,  te sa ed --  no.  Slu -- zhi
  -- te -- li na Du --  ha,  no -- si -- te -- li na Ra -- dost --
   ta,  kre -- pi -- te -- li na mla -- dost --  ta,  kre -- pi -- te
  -- li na mla -- dost --  ta,  te sa ed --  no,  te sa ed --  no. 
  Slu --  no. }

    \header {
      title = \markup \column \normal-text \fontsize #2.5 {
        \center-align
        \line { Сила, Живот, здраве}
        \vspace #-0.6
        \center-align
        \line \fontsize #-3 { Sila,  Zhivot, zdrave }
        \vspace #-0.8
        \center-align
        \line \fontsize #-3 { " " }
      }
    }

    \midi{}

  } % score

  \pageBreak



  % include foreign translation(s) of the song
 \include "lyrics_de/102_sila_zhivot_zdrave_lyrics_de.ly"

} % bookpart