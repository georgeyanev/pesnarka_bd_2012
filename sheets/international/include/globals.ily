\version "2.24.3"

\paper {
  #(set-paper-size "a5")

  % change lyrics and titles font (affects notes also)
  #(define fonts
     (set-global-fonts
      #:music "emmentaler"
      #:brace "emmentaler"
      #:roman "Times New Roman"
      #:sans "DejaVu Sans"
      #:typewriter "DejaVu Sans Mono"
      ; unnecessary if the staff size is default
      #:factor (/ staff-height pt 29)
    ))
}

tempoFunc = #(define-music-function
    (tName tNote tNumber)
    (string? ly:duration? string?)
    #{
      \tempo \markup {
        % make tempo note smaller
        \concat {
          #tName \normal-text { " (" }
          \teeny \general-align #Y #DOWN \note #tNote #0.7
          \normal-text { " = " }
          \normal-text { #tNumber }
          \normal-text { ")" }
        }
      }
    #}
)

tocAct = #(define-music-function (label text) ((symbol-list-or-symbol? '()) markup?)
     (add-toc-item! 'tocActMarkup text label))

titleFunc = #(define-scheme-function
    (cyrTitle latTitle)
    (string? string?)
    #{
      \markup \column \normal-text \fontsize #2.5 {
        \center-align
        \line { #cyrTitle }
        \vspace #-0.6
        \center-align
        \line \fontsize #-3 { #latTitle }
        \vspace #-0.8
        \center-align
        \line \fontsize #-3 { " " }
      }
    #}
)

#(define-markup-command (dc-one layout props text) (markup?)
  "After song text (usually D.C.) with one line."
  (interpret-markup layout props
    #{
      \markup \raise #2.8 \override #'(baseline-skip . 2) {
        \column {
          \fill-line \bold { "" "" \concat {#text "   " }}
        }
      }
    #}
  )
)

#(define-markup-command (dc-one-nobold layout props text) (markup?)
  "After song text (usually D.C.) with one line."
  (interpret-markup layout props
    #{
      \markup \raise #2.8 \override #'(baseline-skip . 2) {
        \column {
          \fill-line { "" "" \concat {#text "   " }}
        }
      }
    #}
  )
)

#(define-markup-command (dc-two layout props textone texttwo) (markup? markup?)
  "After song text (usually D.C.) with two lines."
  (interpret-markup layout props
    #{
      \markup \raise #2.8 \override #'(baseline-skip . 2) {
        \column {
          \fill-line \bold { "" "" \concat {#textone "   " }}
          \fill-line \bold { "" "" \concat {#texttwo "   " }}
        }
      }
    #}
  )
)

#(define-markup-command (empty-one layout props) ()
  "Adds one empty line."
  (interpret-markup layout props
    #{
      \markup {
        \column {
          \line { " " }
        }
      }
    #}
  )
)

#(define-markup-command (empty-two layout props) ()
  "Adds two empty lines."
  (interpret-markup layout props
    #{
      \markup {
        \column {
          \line { " " }
          \line { " " }
        }
      }
    #}
  )
)

#(define-markup-command (empty-three layout props) ()
  "Adds three empty lines."
  (interpret-markup layout props
    #{
      \markup {
        \column {
          \line { " " }
          \line { " " }
          \line { " " }
        }
      }
    #}
  )
)

#(define bgCoupletFontSize +2.5)
#(define bgCoupletBaselineSkip 2.4)

#(define deTitleFontSize 5)
#(define deCoupletFontSize +2.5)
#(define deCoupletBaselineSkip 2)

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


