\version "2.24.2"
\layout {
  indent = 0.0\cm % remove first line indentation
  ragged-last = ##f % do spread last line to fill the whole space
  \override Staff.BarLine.thick-thickness = #4 %make the end and repeat bars thiner 
 %\override Score.VoltaBracket.font-size = #.001 % make the repeat number fontsize smaller

  \context {
    \Score
    \omit BarNumber %remove bar numbers
    \override KeySignature.X-offset = #-1.2 % decrease keysigniture offset
    \override TimeSignature.X-offset = #-1.8 % decrease time signiture offset
  } % context

  \context {
    % change staff size
    \Staff
    fontSize = #+0 % affects notes size only
    \override StaffSymbol.staff-space = #(magstep -3)
    \override StaffSymbol.thickness = #0.5
    \override BarLine.hair-thickness = #1
    %\override StaffSymbol.ledger-line-thickness = #'(0 . 0)
  }

  \context {
    % adjust space between staff and lyrics and between the two lyric lines
    \Lyrics
    \override VerticalAxisGroup.nonstaff-relatedstaff-spacing = #'(
                                                                    (basic-distance . 4.5)
                                                                    (padding . 0.5)
                                                                    )
    \override VerticalAxisGroup.nonstaff-nonstaff-spacing = #'((minimum-distance . 2))
    includeGraceNotes = ##t
  }
} % layout
