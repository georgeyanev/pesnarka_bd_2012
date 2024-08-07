\version "2.24.4"
\layout {
  indent = 0.0\cm % remove first line indentation
  ragged-last = ##f % do spread last line to fill the whole space
  \override Staff.BarLine.thick-thickness = #4 %make the end and repeat bars thiner
  \override Score.VoltaBracket.font-size = #-1.7 % make the repeat number fontsize smaller
  

  \context {
    \Score
    \omit BarNumber %remove bar numbers
    \override KeySignature.X-offset = #-1.2 % decrease keysigniture offset
    \override TimeSignature.X-offset = #-1.8 % decrease time signiture offset
    \override MetronomeMark.font-size = #1.5 % increase the tempo fontsize
    \override TupletNumber.font-size = #0.4 % increase the triol number

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
    %\override StanzaNumber.font-series = #'normal % make stanza number font normal
    \override VerticalAxisGroup.nonstaff-relatedstaff-spacing = #'(
                                                                    (basic-distance . 4.5)
                                                                    (padding . 0.5)
                                                                    )
    \override VerticalAxisGroup.nonstaff-nonstaff-spacing = #'((minimum-distance . 2))
    includeGraceNotes = ##t
  }
} % layout
