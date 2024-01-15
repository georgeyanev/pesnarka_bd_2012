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
      }
    } % layout
