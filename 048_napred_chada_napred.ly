\version "2.22.0"

\paper {
  #(set-paper-size "a5")
}

"rightBraces048" = \markup {
  \column {
    % repeat braces
    \translate #'(0 . -5.5 )
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
      \key g \minor
      \time 4/4 \tempo \markup {
        % make tempo note smaller
        \concat {
          "Tempo di marcia " \normal-text { "(" }
          \teeny \general-align #Y #DOWN \note {4} #0.8
          \normal-text { " = 100)" }
        }
      }
      \partial 4
      \autoBeamOff
      d'4 | g'4. a'8 bes'4. a'8 | g'2. d'4 | g'4. a'8 bes'8 bes'8 a'8. a'16| \break
      g'2. d''4 | \repeat volta 2 {
        g''4. es''8 d''4. cis''8 | d''2 ( d''8 ) d'8 es'8 d'8 | \break
        bes'4. bes'8 a'4. a'8 |
      } \alternative  { { g'2. d''4 | }  { g'2. } } \bar "|."
    }

    \addlyrics {
      "1. На" -- пред, ча -- да, на -- пред, но -- се -- те Сло -- во -- то на --
      вред! Без страх в~Жи -- во -- та нов но -- се -- те
      Прав -- да, Мир, Лю -- бов. Без бов!
    }

    \addlyrics {
      "1. Na" -- pred, cha -- da, na -- pred, no -- se -- te Slo -- vo -- to na --
      vred! Bez strah v~Zhi -- vo -- ta nov no -- se -- te
      Prav -- da, Mir, Lyu -- bov. Bez bov!
    }


    \header {
      title = \markup \column \normal-text \fontsize #2.5 {
        \center-align
        \line { Напред, чада, напред }
        \vspace #-0.6
        \center-align
        \line \fontsize #-3 { Napred, chada, napred }
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

      \line {   2. От новото Небе }

      \line {   "   " Спасителят ни днес зове: }

      \line {   "   " Я чуйте тоя зов –}

      \line {   "   " носете Правда, Мир, Любов!}

      \line {   "   "}

      \line {   3.  Тук долу няма Mир,}

      \line {   "   " неправдата е в длъж и шир;}

      \line {   "   " разсейте бързо днес }

      \line {   "   " за Мир и Правда блага вест!}

      \line {   "   "}

      \line {   4.  Напред, чада, напред,}

      \line {   "   " носете Словото навред!}

      \line {   "   " Без страх в Живота нов,}

      \line {   "   " носете Правда, Мир, Любов!}

    }
    \"rightBraces048"


    \hspace #5
    \override #'(baseline-skip . 2.4)
    \column {
      \line {   2. Ot novoto Nebe }

      \line {   "   " Spasitelyat ni dnes zove: }

      \line {   "   " Ya chuyte toya zov –}

      \line {   "   " nosete Pravda, Mir, Lyubov!}

      \line {   "   "}

      \line {   3.  Tuk dolu nyama Mir,}

      \line {   "   " nepravdata e v dlazh i shir;}

      \line {   "   " razseyte barzo dnes }

      \line {   "   " za Mir i Pravda blaga vest!}

      \line {   "   "}

      \line {   4.  Napred, chada, napred,}

      \line {   "   " nosete Slovoto navred!}

      \line {   "   " Bez strah v Zhivota nov,}

      \line {   "   " nosete Pravda, Mir, Lyubov!}
    } %column
    \"rightBraces048"
  } % markup

  \pageBreak

  % include foreign translation(s) of the song
  \include "lyrics_de/048_napred_chada_napred_lyrics_de.ly"

} % bookpart
