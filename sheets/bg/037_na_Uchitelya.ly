\version "2.24.3"

% include paper part and global functions
\include "include/globals.ily"

"rightBraces037" = \markup {
  \column {
    % repeat braces
    \translate #'(0 . -5.6 )
    \right-brace #18

    \translate #'(0 . -10.2 )
    \right-brace #18

    \translate #'(0 . -10.2 )
    \right-brace #18

    \translate #'(0 . -10.2 )
    \right-brace #18

  }
  \column {
    % repeat numbers
    \translate #'(0 . -6.2 )
    2

    \translate #'(0 . -12 )
    2

    \translate #'(0 . -12 )
    2

    \translate #'(0 . -12.1 )
    2
  }
}

\bookpart {
  \label #'ref037
  \tocItem \markup "На Учителя"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute {
      \clef treble
      \key e \minor
      \time 3/4
      \tempoFunc "Lento" 4 "50"
      \autoBeamOff
      \partial 4
      \autoBeamOff
      e'8 fis'8 | g'4 e'4 b'8 a'8 | g'4 fis'4 e'8 fis'8 | g'4 e'4 g'8 a'8 |  b'2 e''8  e''8 \break
      d''4 c''4 b'8 b'8 | a'4 g'4 fis'8 g'8 | b'4 a'4 g'8 a'8 | b'2 e''8 e''8 \break
      | d''4 c''4 b'8 b'8 | a'4 g'4 fis'8 g'8 | b'4 a'4 g'8 fis'8 | e'2 \bar "|."\break
    }

    \addlyrics {
      "1. На" У --  чи -- те -- ля по -- ко -- рен аз ще слу -- жа
      до кон -- ца. Той за мен е път от -- во --
      рен, що ме во -- ди към От -- ца. Той за мен
      е път от -- во -- рен, що ме во -- ди към От -- ца.
    }

    \header {
      title = \titleFunc #'ref_desc_2 "На Учителя" "Na Učitelja"
    }

    \midi{}

  } % score



  \markup \fontsize #bgCoupletFontSize {
    \hspace #15
    \override #`(baseline-skip . ,bgCoupletBaselineSkip)
    \column {
      \line { 2.  Господи, Ти мой Учител, }
      \line {   "   " в стъпките Си ме води }
      \line {   "   " и кат мощен покровител }
      \line {   "   " всякога към мен бъди. }
      \line { " " }
      \line { 3. Дай ми Твойта Мъдрост свята }
      \line {   "   " и Божествена Любов; }
      \line {   "   " за любов към всички братя }
      \line {   "   " винаги да съм готов. }
      \line { " " }
      \line { 4. И във дни на изпитание }
      \line {   "   " Ти бъди ми канара, }
      \line {   "   " тъй за Тебе ще живея }
      \line {   "   " и за Тебе ще умра. }
      \line { " " }
      \line { 5. И когато стана жител }
      \line {   "   " на Невидимия свят, }
      \line {   "   " о, любезни мой Учител,  }
      \line {   "   " дай ми Твойта благодат! }
    }
    \"rightBraces037"

  } % markup
  

} % bookpart
