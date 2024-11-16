\version "2.24.4"
\header {
  tagline = "Нотацията е направена по записа."
  title = "Мирът иде вече"
  composer = "Петър Дънов"
}
\paper {
  #(define fonts
     (set-global-fonts
      #:music "emmentaler"
      #:brace "emmentaler"
      #:roman "Times New Roman"
      #:sans "DejaVu Sans"
      #:typewriter "DejaVu Sans Mono"
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
        \key d \minor
        \time 4/4
        \tempo "Andante" 4 = 69
        \autoBeamOff
        % Main melody
        \relative c' {
          d8 e f g a4 a4 | d8 c bes a g4 g |
          c8 bes a g f4 f4 | bes8 a g f a4 a4 |
          d,8 e f e d4 d4 | d8 e f g a4 a4 |
          d8 c bes a g4 g | c8 bes a g f4 f4 |
          bes8 a g f a4 a4 | d,8 e f e d4 d4 |
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
    indent = 0.5\cm
    ragged-last = ##f
    \override Staff.BarLine.thick-thickness = #4
    \override Score.VoltaBracket.font-size = #-1.7

    \context {
      \Score
      \override MetronomeMark.font-size = #1.4
      \override TupletNumber.font-size = #0.4
    }
    \context {
      \Staff
      \override StaffSymbol.thickness = #0.5
      \override BarLine.hair-thickness = #1
    }
    \context {
      \Lyrics
      \override LyricHyphen.minimum-length = #0.5
      \override LyricHyphen.minimum-distance = #1
    }
  }
}