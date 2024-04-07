    \version "2.24.3"
    \layout {
      indent = 0.5\cm % first line indentation
      ragged-last = ##f % do spread last line to fill the whole space
      \override Staff.BarLine.thick-thickness = #4 %make the end and repeat bars tiner 
      \context {
        \Score
        \omit BarNumber %remove bar numbers
        \override KeySignature.X-offset = #-1.2 %
         \override MetronomeMark.font-size = #1.5
         \override TupletNumber.font-size = #0.4 % increase the triol number

        
      } % context

      \context {
        % change staff size
        \Staff
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
