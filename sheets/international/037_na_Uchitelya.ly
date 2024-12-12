\version "2.24.4"

% include paper part and global functions
\include "include/globals.ily"

"rightBraces037" = \markup {
  \column {
    % repeat braces
    \translate #'(0 . -7.3 )
    \right-brace #18

    \translate #'(0 . -11.5 )
    \right-brace #18

    \translate #'(0 . -12.4 )
    \right-brace #18

    \translate #'(0 . -11.6 )
    \right-brace #18

  }
  \column {
    % repeat numbers
    \translate #'(0 . -8 )
    2

    \translate #'(0 . -13.9 )
    2

    \translate #'(0 . -15 )
    2

    \translate #'(0 . -14.8 )
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
      \tempoFunc "Lento" 4 "50"
      \autoBeamOff
      \partial 4
      \autoBeamOff
      e'8 fis'8 | g'4 e'4 b'8 a'8 | g'4 fis'4 e'8 fis'8 | g'4 e'4 g'8 a'8 |  b'2 e''8  e''8 \break
      d''4 c''4 b'8 b'8 | a'4 g'4 fis'8 g'8 | b'4 a'4 g'8 a'8 | b'2 e''8 e''8 \break
      | d''4 c''4 b'8 b'8 | a'4 g'4 fis'8 g'8 | b'4 a'4 g'8 fis'8 | e'2 \bar "|."\break
    }

    \addlyrics {
      \set stanza = "1." На У --  чи -- те -- ля по -- ко -- рен аз ще слу -- жа
      до кон -- ца. Той за мен е път от -- во --
      рен, що ме во -- ди към От -- ца. Той за мен
      е път от -- во -- рен, що ме во -- ди към От -- ца.
    }


    \addlyrics {
      \set stanza = "1." Na U --  či -- te -- lja po -- ko -- ren az šte slu -- ža
      do kon -- ca. Toj za men e păt ot -- vo --
      ren, što me vo -- di kăm Ot -- ca. Toj za men
      e păt ot -- vo -- ren, što me vo -- di kăm Ot -- ca.
    }

    \header {
      title = \titleFunc "На Учителя" "Na Učitelja"
    }

    \midi{}

  } % score

  \markup \empty-two

  \markup \abs-fontsize #11 {
    \hspace #5
    \override #`(baseline-skip . ,bgCoupletBaselineSkip)
    \column {

      \line { 2.  Господи, Ти мой Учител, }
      \line {   "   " в стъпките Си ме води }
      \line {   "   " и кат мощен покровител }
      \line {   "   " всякога към мен бъди. }
      \vspace #0.5
      \line { 3. Дай ми Твойта Мъдрост свята }
      \line {   "   " и Божествена Любов; }
      \line {   "   " за любов към всички братя }
      \line {   "   " винаги да съм готов. }
      \vspace #0.5
      \line { 4. И във дни на изпитание }
      \line {   "   " Ти бъди ми канара, }
      \line {   "   " тъй за Тебе ще живея }
      \line {   "   " и за Тебе ще умра. }
      \vspace #0.5
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
      \line {   "   " v stăpkite Si me vodi }
      \line {   "   " i kat mošten pokrovitel }
      \line {   "   " vsjakoga kăm men bădi. }
      \vspace #0.5
      \line { 3. Daj mi Tvojta Mădrost svjata }
      \line {   "   " i Božestvena Ljubov; }
      \line {   "   " za ljubov kăm vsički bratja }
      \line {   "   " vinagi da săm gotov. }
      \vspace #0.5
      \line { 4. I văv dni na izpitanie }
      \line {   "   " Ti bădi mi kanara, }
      \line {   "   " tăj za Tebe šte živeja }
      \line {   "   " i za Tebe šte umra. }
      \vspace #0.5
      \line { 5. I kogato stana žitel }
      \line {   "   " na Nevidimija svjat, }
      \line {   "   " o, ljubezni moj Učitel,  }
      \line {   "   " daj mi Tvojta blagodat! }
    }  \"rightBraces037"  %column
  } % markup

  \pageBreak

  % include foreign translation(s) of the song
  \include "../../lyrics/de/037_na_Uchitelya_lyrics_de.ly"

} % bookpart
