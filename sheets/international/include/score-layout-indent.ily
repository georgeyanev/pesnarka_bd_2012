    \version "2.24.3"
    \layout {
      indent = 0.5\cm % first line indentation
      ragged-last = ##f % do spread last line to fill the whole space
      \context {
        \Score
        \omit BarNumber %remove bar numbers
      } % context

      \context {
        % change staff size
        \Staff
        \override StaffSymbol.thickness = #0.5
        \override BarLine.hair-thickness = #1
        \override TupletNumber.font-size = #0.3 % increase the triol number
      }

      \context {
        % adjust space between staff and lyrics and between the two lyric lines
        \Lyrics
        \override VerticalAxisGroup.nonstaff-relatedstaff-spacing = #'(
            (basic-distance . 4.5)
            (padding . 1.5)
        )
        \override VerticalAxisGroup.nonstaff-nonstaff-spacing = #'((minimum-distance . 2))
      }
    } % layout
