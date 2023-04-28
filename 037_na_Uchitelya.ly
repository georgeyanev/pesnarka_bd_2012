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
  \tocItem \markup "На Учителя – Na Uchitelya"
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
      Na U --  chi -- te -- lya po -- ko -- ren az shte slu -- zha
      do kon -- tsa. Toy za men e pat ot -- vo --
      ren, shto me vo -- di kam Ot -- tsa. Toy za men
      e pat ot -- vo -- ren, shto me vo -- di kam Ot -- tsa.
    }

    \header {
      title = \titleFunc "На Учителя" "Na Uchitelya"
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
      \line { 2.  Gospodi, Ti moy Uchitel, }
      \line {   "   " v stapkite si me vodi, }
      \line {   "   " i kat moshten pokrovitel }
      \line {   "   " vsyakoga kam men badi. }
      \line { " " }
      \line { 3. Day mi Tvoyta Madrost svyata }
      \line {   "   " i Bozhestvena Lyubov; }
      \line {   "   " za Lyubov kam vsichki bratya }
      \line {   "   " vinagi da sam gotov. }
      \line { " " }
      \line { 4. I vav dni na izpitanie }
      \line {   "   " Ti badi mi kanara; }
      \line {   "   " tay za Tebe shte zhiveya }
      \line {   "   " i za Tebe shte umra. }
      \line { " " }
      \line { 5. I kogato stana zhitel }
      \line {   "   " na Nevidimiya svyat, }
      \line {   "   " o, lyubezni moy Uchitel,  }
      \line {   "   " day mi Tvoyta blagodat! }

    }  \"rightBraces037"  %column
  } % markup

  \pageBreak

  % include foreign translation(s) of the song
  \include "lyrics_de/037_na_Uchitelya_lyrics_de.ly"

} % bookpart
