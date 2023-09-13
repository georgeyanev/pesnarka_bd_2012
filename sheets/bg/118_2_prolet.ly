\version "2.24.2"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref118_2
  \tocItem \markup "Пролет – Prolet"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute{
      \clef treble
      \key g \minor
      \time 4/4
      \tempoFunc "Andantino" 4 "69"
      \autoBeamOff
      \partial 4
      g'8. a'16 | bes'4. a'8 g'8. fis'16 g'8 a'8 | d'2. es'8. d'16 | \break

      c'4. d'8 bes8. a16 bes8 c'8  d'2. g'8. a'16 | bes'4. c''8 d''8 c''8 bes'8 a'8 |\break |

      g'2. g'8. a'16 | bes'4. a'8 g'8 fis'8 g'8 a'8 | g'2. \bar "|."
    }

    \addlyrics {
      Слу  --  шай  --
      те   гла  --  са   на   пе  --  сен  --  та,   що   раз  --  на  --
      ся   ве  --  че   про  --  лет  --  та.   Дар   ве  --  лик   е
      за   Жи  --  во  --  та   тя,   дар   ве  --  лик   е   за   Жи  --
      во  -- та тя.
    }

    \header {
      title = \titleFunc "Пролет" "Prolet"
    }

    \midi{}

  } % score

  \markup \dc-one "D.C."

  \markup \fontsize #bgCoupletFontSize {
    \hspace #1
    \override #`(baseline-skip . ,bgCoupletBaselineSkip)
    \column {
      \line { 2. Красота, ухание се лей,  }
      \line {   "   "  изобилно блика радостта,}
      \line {   "   " Слушайте и пейте в пролетта, }
      \line {   "   " слушайте и пейте в пролетта, }
    }

  } % markup

\markup \empty-two

  % include foreign translation(s) of the song
  

} % bookpart
