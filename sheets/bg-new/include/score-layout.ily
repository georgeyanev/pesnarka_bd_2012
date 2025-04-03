\version "2.24.4"
\layout {
  indent = 0.5\cm % remove first line indentation
  ragged-last = ##f % do spread last line to fill the whole space
  \override Staff.BarLine.thick-thickness = #4 %make the end and repeat bars thiner
  \override Score.VoltaBracket.font-size = #-1.7 % make the repeat number fontsize smaller

  \context {
    \Score
    \override MetronomeMark.font-size = #1.4 % increase the tempo fontsize
    \override TupletNumber.font-size = #0.4 % increase the triol number
  } % context

  \context {
    % change staff size
    \Staff
    \override StaffSymbol.thickness = #0.5
    \override BarLine.hair-thickness = #1
  }
  \context {
    % adjust space between staff and lyrics and between the two lyric lines l
    \Lyrics
    \override LyricHyphen.minimum-length = #0.5 %force a hyphen
    \override LyricHyphen.minimum-distance = #1 %force a hyphen
    %\override StanzaNumber.font-series = #'normal % make stanza number font normal

  }
} % layout
