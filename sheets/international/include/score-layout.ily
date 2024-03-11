\version "2.24.3"
\layout {
  indent = 0.0\cm % remove first line indentation
  ragged-last = ##f % do spread last line to fill the whole space
 \override Staff.BarLine.thick-thickness = #4 %make the end and repeat bars thiner
  \override Score.VoltaBracket.font-size = #-2.3 % make the repeat number fontsize smaller


  \context {
    \Score
    \omit BarNumber %remove bar numbers
    \override MetronomeMark.font-size = #1.5 % increase the tempo fontsize
     
  } % context

  \context {
    % change staff size
    \Staff
    \override StaffSymbol.thickness = #0.5
    \override BarLine.hair-thickness = #1
    \override TupletNumber.font-size = #0.4 % increase the triol number
  }

  \context {
    % adjust space between staff and lyrics and between the two lyric lines
    \Lyrics
    %\override LyricText.font-size = #-0.1
    \override VerticalAxisGroup.nonstaff-relatedstaff-spacing = #'(
                                                                    (basic-distance . 4.5)
                                                                    (padding . 1.5)
                                                                    )
    \override VerticalAxisGroup.nonstaff-nonstaff-spacing = #'((minimum-distance . 3))
    includeGraceNotes = ##t
  }
} % layout
