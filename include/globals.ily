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
    (parser location tName tNote tNumber)
    (string? string? string?)
    #{
      \tempo \markup {
        % make tempo note smaller
        \concat {
          #tName \normal-text { " (" }
          \teeny \general-align #Y #DOWN \note #tNote #0.8
          \normal-text { " = " }
          \normal-text { #tNumber }
          \normal-text { ")" }
        }
      }  
    #}
)

titleFunc = #(define-scheme-function
    (parser location cyrTitle latTitle)
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

#(define bgCoupletFontSize +2.5)
#(define bgCoupletBaselineSkip 2.4)

#(define deTitleFontSize 6)
#(define deCoupletFontSize +2.5)
#(define deCoupletBaselineSkip 2)
