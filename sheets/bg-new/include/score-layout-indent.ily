\version "2.24.4"
\layout {
  indent = 0.7\cm % first line indentation
  ragged-last = ##f % do spread last line to fill the whole space
  \override Staff.BarLine.thick-thickness = #4 %make the end and repeat bars tiner
  \context {
    \Score
    \override MetronomeMark.font-size = #1.5
    \override TupletNumber.font-size = #0.4 % increase the triol number
  } % context

  \context {
    % change staff size
    \Staff
    \override StaffSymbol.thickness = #0.5
    \override BarLine.hair-thickness = #1
  }
} % layout
