\version "2.22.0"

\paper {
  #(set-paper-size "a5")
}

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
  \paper {
    print-all-headers = ##t
    print-page-number = ##t
    print-first-page-number = ##t

    % put page numbers on the bottom
    oddHeaderMarkup = \markup ""
    evenHeaderMarkup = \markup ""
    oddFooterMarkup = \markup
    \fill-line {
      ""
      \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string
    }
    evenFooterMarkup = \markup
    \fill-line {
      \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string
      ""
    }

    left-margin = 1.5\cm
    right-margin = 1.5\cm
    top-margin = 1.6\cm
    bottom-margin = 1.2\cm
    ragged-bottom = ##t % do not spread the staves to fill the whole vertical space

    % change lyrics and titles font (affects notes also)
    fonts =
    #(make-pango-font-tree
      "Times New Roman"
      "DejaVu Sans"
      "DejaVu Sans Mono"
      (/ (* staff-height pt) 3.6))

    % change distance between staves
    system-system-spacing =
    #'((basic-distance . 12)
       (minimum-distance . 6)
       (padding . 1)
       (stretchability . 12))
  }

  \header {
    tagline = ##f
  }

  \score{
    \layout {
      indent = 0.0\cm % remove first line indentation
      %ragged-last = ##t % do not spread last line to fill the whole space
      \context {
        \Score
        \omit BarNumber %remove bar numbers
      } % context

      \context {
        % change staff size
        \Staff
        fontSize = #+0 % affects notes size only
        \override StaffSymbol #'staff-space = #(magstep -3)
        \override StaffSymbol #'thickness = #0.5
        \override BarLine #'hair-thickness = #1
        %\override StaffSymbol #'ledger-line-thickness = #'(0 . 0)
      }

      \context {
        % adjust space between staff and lyrics and between the two lyric lines
        \Lyrics
        \override VerticalAxisGroup.nonstaff-relatedstaff-spacing = #'((basic-distance . 4.5))
        \override VerticalAxisGroup.nonstaff-nonstaff-spacing = #'((minimum-distance . 2))
      }
    } % layout

    \new Voice \absolute  {
      \clef treble
      \key c \major
      \time 3/4   \tempo \markup {
        % make tempo note smaller
        \concat {
          "Moderato " \normal-text { "(" }
          \teeny \general-align #Y #DOWN \note {4} #0.8
          \normal-text { " = 88)" }
        }
      }
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
      Ne -- be -- to se ot -- va -- rya i An -- ge -- li -- te
      pe -- yat. I mol -- ni -- i ble -- stya --
      shti ta -- mi i zdrach pi -- le -- yat. I yat.
    }

    \header {
      title = \markup \column \normal-text \fontsize #2.5 {
        \center-align
        \line { Небето се отваря}
        \vspace #-0.6
        \center-align
        \line \fontsize #-3 { Nebeto se otvarya }
        \vspace #-0.8
        \center-align
        \line \fontsize #-3 { " " }
      }
    }

    \midi{}

  } % score



  \markup \fontsize #+2.5 {
    \hspace #1
    \override #'(baseline-skip . 2.4) % affects space between column lines
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
    }
    \"rightBraces050"
    \hspace #5
    \override #'(baseline-skip . 2.4)
    \column {

      \line {   2. Hristos otgore sliza}

      \line {   "   " vav Svoyata darzhava}

      \line {   "   " s mogashtestvo i sila,}

      \line {   "   " vav vsichkata Si slava.}
      \line {   "   "}

      \line {   3.  Elate, bratya, vsichki,}

      \line {   "   " oblecheni vav byalo,}

      \line {   "   " da Go posreshtnem s Radost,}

      \line {   "   " tarzhestveno i slavno.}
      \line {   "   "}

      \line {   4.  Toy ide na Zemyata}

      \line {   "   " bezkrayno da tsaruva,}

      \line {   "   " zhivot vav Istinata}

      \line {   "   " na vsichki da daruva.}
      \line {   "   "}

      \line {  5.  Blagosloveno tsarstvo}

      \line {   "   " na Boga Triedinniy}

      \line {   "   " ot sega i do veka,}

      \line {   "   " prez vsichkite godini.  }

    } %column
    \"rightBraces050"
  } % markup

  \pageBreak

  % include foreign translation(s) of the song
  \include "lyrics_de/050_nebeto_se_otvarya_lyrics_de.ly"

} % bookpart
