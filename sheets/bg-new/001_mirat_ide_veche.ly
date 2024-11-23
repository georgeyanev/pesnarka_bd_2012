\version "2.24.4"

\header {
  tagline = "Нотацията е направена по записа, като мелодията е транспонирана в сол минор."
  title = "Мирът иде вече"
  composer = "Петър Дънов"
}


\paper {
  first-page-number = #2


  #(define fonts
     (set-global-fonts
      #:music "emmentaler"
      #:brace "emmentaler"
      #:roman "Times New Roman"
      #:sans "DejaVu Sans"
      #:typewriter "DejaVu Sans Mono"
      ; unnecessary if the staff size is default
      #:factor (/ staff-height pt 20)
      ))


  top-margin = 12
  paper-height = 4\in
  paper-width = 10.5\in
  indent = #0
  system-count = #2

  system-system-spacing =
  #'((basic-distance . 18)
     (minimum-distance . 6)
     (padding . 1)
     (stretchability . 12))

}


\score {
  <<
    \new Staff {
      \new Voice = "melody" {
        \clef treble
        \key g \minor
        \time 4/4
        \tempo "Andante" 4 = 69
        \autoBeamOff

        % Main melody
        \relative c' {

          g8 a bes c d4 d4 | g8 f es d c4 c |

          f8 es d c bes 4 bes 4 | es8 d c bes d4 d4 |

          g,8 a bes a g4 g4 | g8 a bes c d4 d4 |

          g8 f es d c4 c | f8 es d c bes 4 bes 4 |

          es8 d c bes d4 d4 | g,8 a bes a g4 g4 |

        }
      }
    }
    \new Lyrics \lyricsto "melody" {
      % Verse 1
      „Ми -- рът и -- де ве -- че, ми -- рът и -- де ве -- че, ми -- рът и -- де ве -- че, ми -- рът и -- де ве -- че!“,
      тъй наш Гос -- под ре -- че.
      Tъй наш Гос -- под ре -- че: „Ми -- рът дой -- де ве -- че, ми -- рът дой -- де ве -- че, ми -- рът дой -- де ве -- че!“,
      тъй наш Гос -- под ре -- че.
    }
  >>


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

}