\version "2.24.3"

% include paper part and global functions
\include "include/globals.ily"

"rightBraces088" = \markup {
  \column {
    % repeat braces




    \translate #'(0 . -20.6 )
    \right-brace #40

  }
  \column {
    % repeat numbers




    \translate #'(0 . -21.5 )
    2
  }
}

\bookpart {
  \label #'ref088
  \tocItem \markup "Ходи, ходи –  Hodi, hodi"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute  {
      \clef treble
      \key d \major
      \time 7/16
      \tempoFunc "Allegretto" 8 "160"
      a8 a8 a8 a16 | a4 a8. | d'8 d'8 e'8 e'16 | e'4 e'8. | \break

      fis'8 fis'8 fis'8 g'16 | a'4 a'8. | b'8 a'8 g'8 fis'16 | a'4 a'8. | b'8 a'8 g'8 fis'16 | \break

      fis'4 fis'8. \breathe | \bar ".|:" b'8 b'8 b'8 b'16| d''4 b'8. | a'8 a'8 a'8 g'16 | fis'4 fis'8. | \break

      a'8 g'8 g'8 fis'16 | g'4 e'8. | e'8 e'8 fis'8 e'16 | d'4 d'8. | \bar ":|."


    }
    \addlyrics {
      "1. Хо" -- ди, хо -- ди, хо -- ди, за во -- да -- та хо -- ди

      су -- трин -- на -- та ро -- са, през ре -- чи -- ца бис -- тра, по пъ -- те -- ка

      чис -- та. За до -- ма  си но -- си  таз во -- ди -- ца бис -- тра,

      за цве -- тен -- ца ми -- ли, ней -- ни -- те де -- чи -- ца.
    }
    \addlyrics {
      "1. Ho" -- di, ho -- di, ho -- di, za vo -- da -- ta ho -- di

      su -- trin -- na -- ta ro -- sa, prez re -- či -- ca bis -- tra, po pă -- te -- ka

      čis -- ta. Za do -- ma  si no -- si  taz vo -- di -- ca bis -- tra,

      za cve -- ten -- ca mi -- li, nej -- ni -- te de -- či -- ca.
    }

    \header {
      title = \titleFunc "Ходи, ходи" "Hodi, hodi"
    }

    \midi{}

  } % score

  \markup \empty-one
  \markup \italic \dc-one-nobold "attacca „Тъги скърби“/attacca „Tăgi skărbi“"
  \markup \empty-one
  \markup \abs-fontsize #10 {
    \hspace #7
    \override #`(baseline-skip . ,bgCoupletBaselineSkip)
    \column {

      \line { 2. Капките дъждовни}
      \line { "   "също тъй поднасят}
      \line { "   "изобилна влага – }
      \line { "   "струя на живота. }
      \line { "   "Никнат семенцата, }
      \line { "   "пъпки се разтварят,}
      \line { "   "плодове узряват.}
      \line { "   "Всичко се събужда – }
      \line { "   "мощна е водата. }
    } \"rightBraces088"

    \hspace #7
    \override #`(baseline-skip . ,bgCoupletBaselineSkip)
    \column {
      \line { 2. Kapkite dăždovni}
      \line { "   "săšto tăj podnasjat}
      \line { "   "izobilna vlaga – }
      \line { "   "struja na života. }
      \line { "   "Niknat semencata, }
      \line { "   "păpki se raztvarjat,}
      \line { "   "plodove uzrjavat.}
      \line { "   "Vsičko se săbužda – }
      \line { "   "moštna e vodata. }
    } %column
    \"rightBraces088"
  } % markup

\markup \empty-two
  % include foreign translation(s) of the song
  \include "../../lyrics/de/088_hodi_hodi_lyrics_de.ly"

} % bookpart
