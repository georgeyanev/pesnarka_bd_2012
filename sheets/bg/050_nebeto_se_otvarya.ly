\version "2.24.2"

% include paper part and global functions
\include "include/globals.ily"
"rightBraces050" = \markup {
  \column {
    % repeat braces
    \translate #'(0 . -5.5 )
    \right-brace #20

    \translate #'(0 . -10.0 )
    \right-brace #20

    \translate #'(0 . -10.0 )
    \right-brace #20

    \translate #'(0 . -10.0 )
    \right-brace #20
  }
  \column {
    % repeat numbers
    \translate #'(0 . -6.1 )
    2

    \translate #'(0 . -12.0 )
    2

    \translate #'(0 . -12.0 )
    2

    \translate #'(0 . -12.0 )
    2
  }
}

\bookpart {
  \label #'ref050
  \tocItem \markup "Небето се отваря"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute  {
      \clef treble
      \key c \major
      \time 3/4
      \tempoFunc "Moderato" 4 "88"
      \autoBeamOff
      \partial 4 g'4 | e'2 f'4 | g'2 g'4 | a'2. | g'2 g'4 | c''2 d''4 | e''2 d''4 | \break
      d''2. | c''2 g'4 | \repeat volta 2 {
        e''2 e''4 | d''2 cis''4 | d''2. | \break
        a'2 c''?4 | b'2 b'4 | \stemUp b'4 ( a'4 ) b'4 \stemNeutral | d''2. |
      } \alternative {
        { c''2 g'4 | }
        { c''2  s4 }
      } \bar "|."
    }

    \addlyrics {
      "1. Не" -- бе -- то се от -- ва -- ря и ан -- ге -- ли -- те
      пе -- ят. И мол -- ни -- и блес -- тя --
      щи тъ -- ми и здрач пи -- ле -- ят. И ят.
    }

    \header {
      title = \titleFunc "Небето се отваря" "Nebeto se otvarja"
    }

    \midi{}

  } % score

  \markup \fontsize #bgCoupletFontSize {
    \hspace #18
    \override #`(baseline-skip . ,bgCoupletBaselineSkip)
    \column {
      \line {   2. Христос от Горе слиза}

      \line {   "   " във Своята държава}

      \line {   "   " с могъщество и сила,}

      \line {   "   " във всичката Си слава.}
      \line {   "   "}

      \line {   3.  Елате, братя, всички,}

      \line {   "   " облечени във бяло,}

      \line {   "   " да Го посрещнем с радост,}

      \line {   "   " тържествено и славно.}
      \line {   "   "}

      \line {   4.  Той иде на Земята}

      \line {   "   " безкрайно да царува,}

      \line {   "   " живот във истината}

      \line {   "   " на всички да дарува.}
      \line {   "   "}

      \line {  5.  Благословено царство}

      \line {   "   " на Бога Триединний}

      \line {   "   " от сега и до века,}

      \line {   "   " през всичките години.  }
    }   \"rightBraces050"

  } % markup


} % bookpart
