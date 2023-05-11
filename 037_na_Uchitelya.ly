\version "2.24.1"

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
  \tocItem \markup "На Учителя – Na Učitelja"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute {
      \clef treble
      \key e \minor
      \time 3/4
      \tempoFunc "Leno" 4 "50"
      \autoBeamOff
      \partial 4
      \autoBeamOff
      e'8 fis'8 | g'4 e'4 b'8 a'8 | g'4 fis'4 e'8 fis'8 | g'4 e'4 g'8 a'8 |  b'2 e''8  e''8 \break
      d''4 c''4 b'8 b'8 | a'4 g'4 fis'8 g'8 | b'4 a'4 g'8 a'8 | b'2 e''8 e''8 \break
      | d''4 c''4 b'8 b'8 | a'4 g'4 fis'8 g'8 | b'4 a'4 g'8 fis'8 | e'2 \bar "|."\break
    }

    \addlyrics {
      На У --  чи -- те -- ля по -- ко -- рен аз ще слу -- жа
      до кон -- ца. Той за мен е път от -- во --
      рен, що ме во -- ди към От -- ца. Той за мен
      е път от -- во -- рен, що ме во -- ди към От -- ца.
    }

  \addlyrics {
      Na U --  či -- te -- lja po -- ko -- ren az šte slu -- ža
      do kon -- ca. Toj za men e păt ot -- vo --
      ren, što me vo -- di kăm Ot -- ca. Toj za men
      e păt ot -- vo -- ren, što me vo -- di kăm Ot -- ca.
    }

    \header {
      title = \titleFunc "На Учителя" "Na Učitelja"
    }

    \midi{}

  } % score



  \markup \fontsize #bgCoupletFontSize {
    \hspace #1
    \override #`(baseline-skip . ,bgCoupletBaselineSkip)
    \column {
      \line { 2.  Господи, Ти мой Учител, }
      \line {   "   " в стъпките си ме води, }
      \line {   "   " и кат мощен покровител }
      \line {   "   " всякога към мен бъди. }
      \line { " " }
      \line { 3. Дай ми Твойта Мъдрост свята }
      \line {   "   " и Божествена Любов; }
      \line {   "   " за Любов към всички братя }
      \line {   "   " винаги да съм готов. }
      \line { " " }
      \line { 4. И във дни на изпитание }
      \line {   "   " Ти бъди ми канара; }
      \line {   "   " тъй за Тебе ще живея }
      \line {   "   " и за Тебе ще умра. }
      \line { " " }
      \line { 5. И когато стана жител }
      \line {   "   " на Невидимия свят, }
      \line {   "   " о, любезни мой Учител,  }
      \line {   "   " дай ми Твойта благодат! }
    }
    \"rightBraces037"

    \hspace #5
    \override #`(baseline-skip . ,bgCoupletBaselineSkip)
     \column {
      \line { 2.  Gospodi, Ti moj Učitel, }
      \line {   "   " v stăpkite si me vodi, }
      \line {   "   " i kat mošten pokrovitel }
      \line {   "   " vsjakoga kăm men bădi. }
      \line { " " }
      \line { 3. Daj mi Tvojta Mădrost svjata }
      \line {   "   " i Božestvena Ljubov; }
      \line {   "   " za Ljubov kăm vsički bratja }
      \line {   "   " vinagi da săm gotov. }
      \line { " " }
      \line { 4. I văv dni na izpitanie }
      \line {   "   " Ti bădi mi kanara; }
      \line {   "   " tăj za Tebe šte živeja }
      \line {   "   " i za Tebe šte umra. }
      \line { " " }
      \line { 5. I kogato stana žitel }
      \line {   "   " na Nevidimija svjat, }
      \line {   "   " o, ljubezni moj Učitel,  }
      \line {   "   " daj mi Tvojta blagodat! }
    }  \"rightBraces037"  %column
  } % markup

  \pageBreak

  % include foreign translation(s) of the song
  \include "lyrics_de/037_na_Uchitelya_lyrics_de.ly"

} % bookpart
