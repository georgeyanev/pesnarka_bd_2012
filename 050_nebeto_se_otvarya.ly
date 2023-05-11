\version "2.24.1"

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
  \tocItem \markup "Небето се отваря – Nebeto se otvarja"
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
        a'2 c''4 | b'2 b'4 | \stemUp b'4 ( a'4 ) b'4 \stemNeutral | d''2. |
      } \alternative {
        { c''2 g'4 | }
        { c''2  s4 }
      } \bar "|."
    }

    \addlyrics {
      "1. Не" -- бе -- то се от -- ва -- ря и Ан -- ге -- ли -- те
      пе -- ят. И мол -- ни -- и бле -- стя --
      щи тъ -- ми и здрач пи -- ле -- ят. И ят.
    }

    \addlyrics {
      "1. Ne" -- be -- to se ot -- va -- rja i An -- ge -- li -- te
      pe -- jat. I mol -- ni -- i ble -- stja --
      šti tă -- mi i zdrač pi -- le -- jat. I jat.
    }

    \header {
      title = \titleFunc "Небето се отваря" "Nebeto se otvarja"
    }

    \midi{}

  } % score

  \markup \fontsize #bgCoupletFontSize {
    \hspace #1
    \override #`(baseline-skip . ,bgCoupletBaselineSkip)
    \column {
      \line {   2. Христос отгоре слиза}

      \line {   "   " във Своята държава}

      \line {   "   " с могъщество и сила,}

      \line {   "   " във всичката Си слава.}
      \line {   "   "}

      \line {   3.  Елате, братя, всички,}

      \line {   "   " облечени във бяло,}

      \line {   "   " да Го посрещнем с Радост,}

      \line {   "   " тържествено и славно.}
      \line {   "   "}

      \line {   4.  Той иде на Земята}

      \line {   "   " безкрайно да царува,}

      \line {   "   " живот във Истината}

      \line {   "   " на всички да дарува.}
      \line {   "   "}

      \line {  5.  Благословено царство}

      \line {   "   " на Бога Триединний}

      \line {   "   " от сега и до века,}

      \line {   "   " през всичките години.  }
    }   \"rightBraces050"

    \hspace #5
    \override #`(baseline-skip . ,bgCoupletBaselineSkip)
     \column {
      \line {   2. Hristos otgore sliza}

      \line {   "   " văv Svojata dăržava}

      \line {   "   " s mogăštestvo i sila,}

      \line {   "   " văv vsičkata Si slava.}
      \line {   "   "}

      \line {   3.  Elate, bratja, vsički,}

      \line {   "   " oblečeni văv bjalo,}

      \line {   "   " da Go posreštnem s Radost,}

      \line {   "   " tăržestveno i slavno.}
      \line {   "   "}

      \line {   4.  Toj ide na Zemjata}

      \line {   "   " bezkrajno da caruva,}

      \line {   "   " život văv Istinata}

      \line {   "   " na vsički da daruva.}
      \line {   "   "}

      \line {  5.  Blagosloveno carstvo}

      \line {   "   " na Boga Triedinnij}

      \line {   "   " ot sega i do veka,}

      \line {   "   " prez vsičkite godini.  }
    }  %column
    \"rightBraces050"
  } % markup

  \pageBreak

  % include foreign translation(s) of the song
  \include "lyrics_de/050_nebeto_se_otvarya_lyrics_de.ly"

} % bookpart
