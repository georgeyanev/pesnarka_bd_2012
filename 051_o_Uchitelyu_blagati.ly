\version "2.22.0"

\paper {
  #(set-paper-size "a5")
}

"rightBraces051" = \markup {
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
      \key f \major
      \time 3/4
      \tempo \markup {
        % make tempo note smaller
        \concat {
          "Larghetto " \normal-text { "(" }
          \teeny \general-align #Y #DOWN \note {4} #0.8
          \normal-text { " = 58)" }
        }
      }
      \partial 4
      \autoBeamOff
      f'8 a' c''4 c'' f''8 a' | c''4 c'' f'8 a' | c''4 c'' f''8 e'' \break
      d''2 d''8 c'' \repeat volta 2 {
        | bes'4 d'' c''8 bes' | a'4 c'' f'8 g' \break |
        a'4 c'' g'8 c'8 |
      } \alternative { { f'2 d''8 c''  | } { f'2. | \break } } \bar "|."
    }

    \addlyrics {
      "1. О," У -- чи -- те -- лю бла -- га -- ти, теб из -- пъл -- ва До -- бри --
      на. Твой -- те ду -- ми са кри -- ла -- ти, пъл -- ни
      с~Мъ -- дрост, Свет -- ли -- на. Твой -- те на.
    }

    \addlyrics {
      "1. O," U -- chi -- te -- lyu bla -- ga -- ti, teb iz -- pal -- va Do -- bri --
      na. Tvoy -- te du -- mi sa kri -- la -- ti, pal -- ni
      s~Ma -- drost, Svet -- li -- na. Tvoy -- te na.
    }

    \header {
      title = \markup \column \normal-text \fontsize #2.5 {
        \center-align
        \line { О, Учителю благати }
        \vspace #-0.6
        \center-align
        \line \fontsize #-3 { O, Uchitelyu blagati }
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


      \line {   2. Пратеник си ти от Бога}

      \line {   "   "всред измъчени души,}

      \line {   "   "Мир, Любов ти в нас да влееш,}

      \line {   "   "Нов живот, честити дни.}

      \line {   "   "}

      \line {   3. В скърби, мъки и неволи }

      \line {   "   "само ти си наш подслон,}

      \line {   "   "ти утеха ни донесе,}

      \line {   "   "мой Учителю, поклон!}

      \line {   "   "}

      \line {   4. Твоите думи – бисер чисти,}

      \line {   "   "твоят образ – Светлина,}

      \line {   "   "о, Учителю честити,}

      \line {   "   "влей в сърца ни Топлина!}

    }
    \"rightBraces051"

    \hspace #3
    \override #'(baseline-skip . 2.4)
    \column {

      \line {   2. Pratenik si ti ot Boga}

      \line {   "   "vsred izmacheni dushi,}

      \line {   "   "Mir, Lyubov ti v nas da vleesh,}

      \line {   "   "Nov zhivot, chestiti dni.}

      \line {   "   "}

      \line {   3. V skarbi, maki i nevoli }

      \line {   "   "samo ti si nash podslon,}

      \line {   "   "ti uteha ni donese,}

      \line {   "   "moy Uchitelyu, poklon!}

      \line {   "   "}

      \line {   4. Tvoite dumi – biser chisti,}

      \line {   "   "tvoyat obraz – Svetlina,}

      \line {   "   "o, Uchitelyu chestiti,}

      \line {   "   "vley v sartsa ni Toplina!}
    } %column
    \"rightBraces051"
  } % markup

  \pageBreak

  % include foreign translation(s) of the song
  \include "lyrics_de/051_o_Uchitelyu_blagati_lyric_de.ly"

} % bookpart
