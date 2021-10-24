\version "2.20.0"

\paper {
  #(set-paper-size "a5")
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
      % ragged-last = ##t % do not spread last line to fill the whole space
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
      \time 2/4
      \tempo \markup {
        % make tempo note smaller
        \concat {
          "Moderato " \normal-text { " (" }
          \teeny \general-align #Y #DOWN \note #"4" #0.8
          \normal-text { " = 52)" }
        }
      }
      %\time 2/4 \tempo "Moderato" 4 = 52
      \autoBeamOff

      c'4 f'8. g'16 | \time 3/4 a'4. g'8 a' bes' | c''4. c''8 e'' d'' | c''4. d''8 c'' bes' \break |

      \time 4/4  a'2 c'4 f'8. g'16 | a'4 f''2 g''8. f''16 | \time 3/4  e''4. d''8 e'' d'' | c''4. d''8 c'' bes' \break |

      \time 2/4 a'2 | \time 4/4  c''4   bes'8. a'16 g'2|  bes'4  d''8 d'' c''4. c''8 \break |

      \time 3/4  f''8 f'' e''4.  d''8 | c'' bes' a'2 | \time 4/4 c''4  bes'8. a'16 g'2 \break | 

      bes'4 d''8 d'' c''4. c''8 \time 3/4  f''8 f'' e''4. d''8 | c'' bes' a'2 \bar "|."

    }

    \addlyrics {
      Бла -- го -- сло -- вен от Бо -- га ти, У -- чи -- те --
      лю на Лю -- бов -- та, за -- де -- то тък -- мо
      в~те -- зи дни до -- не -- се Мир и Свет -- ли -- на.
      До -- бре до -- шъл, до -- бре до -- шъл,
      У -- чи -- те -- лю на Лю -- бов -- та; до --
      бре до -- шъл, до -- бре до -- шъл, У -- чи --
      те -- лю на Мъ -- дрост -- та.
    }

    \addlyrics {
      Bla -- go -- slo -- ven ot Bo -- ga ti, U -- chi -- te --
      lyu na Lyu -- bov -- ta, za -- de -- to tak -- mo
      v~te -- zi dni do -- ne -- se Mir i Svet -- li -- na.
      Do -- bre do -- shal, do -- bre do -- shal,
      U -- chi -- te -- lyu na Lyu -- bov -- ta; do --
      bre do -- shal, do -- bre do -- shal, U -- chi --
      te -- lyu na Ma -- drost -- ta.
    }

    \header {
      title = \markup \column \normal-text \fontsize #2.5 {
        \center-align
        \line { Поздрав на Учителя }
        \vspace #-0.6
        \center-align
        \line \fontsize #-3 { Pozdrav na Uchitelya  }
        \vspace #-0.8
        \center-align
        \line \fontsize #-3 { "   " }
      }
    }

    \midi{}

  } % score


  \markup \fontsize #+2.5 {
    \hspace #3
    \override #'(baseline-skip . 2.4) % affects space between column lines
    \column {
      \line { 2. Обвити в мрак до този час, }
      \line { "   " ний бяхме роби на греха, }

      \line { "   " но чухме Твоя кротък глас }

      \line { "   " и лъхна към нас Топлина. }
      \line { "   " }

      \line { "   " \italic{Припев: Добре дошъл ...} }
    }

    \hspace #4
    \override #'(baseline-skip . 2.4)
    \column {
      \line { 2. Obviti v mrak do tozi chas, }
      \line { "   " niy byahme robi na greha, }

      \line { "   " no chuhme Tvoya krotak glas }

      \line { "   " i lahna kam nas Toplina. }
      \line { "   " }

      \line { "   " \italic{Refrain: Dobre doshal ...} }
    } %column
  } % markup

  \pageBreak

  \markup \fontsize #+2.5 {
    \hspace #3
    \override #'(baseline-skip . 2.4) % affects space between column lines
    \column {

      \line { 3. Учителю Благословен, }

      \line { "   " Ти ни сърцата обнови, }

      \line { "   " запали Огън в нас свещен }

      \line { "   " и сладки думи оживи. }

      \line { "   " }

      \line { "   " \italic{Припев: Добре дошъл ...} }
      \line { "   " }

      \line { 4. Учителю, наш скъпи гост, }

      \line { "   " привет от нас Ти приеми; }

      \line { "   " със радост ний готови сме }

      \line { "   " да жертваме живота свой. }

      \line { " "}
      \line { " "}
    }

    \hspace #5
    \override #'(baseline-skip . 2.4)
    \column {
      \line { 3. Uchitelyu Blagosloven, }

      \line { "   " Ti ni sartsata obnovi, }

      \line { "   " zapali Ogan v nas sveshten }

      \line { "   " i sladki dumi ozhivi. }

      \line { "   " }

      \line { "   " \italic{Refrain: Dobre doshal ...} }
      \line { "   " }

      \line { 4. Uchitelyu, nash skapi gost, }

      \line { "   " privet ot nas Ti priemi; }

      \line { "   " sas radost niy gotovi sme }

      \line { "   " da zhertvame zhivota svoy. }
    } %column
  } % markup

  % include foreign translation(s) of the song
  \include "lyrics_de/044_pozdrav_na_Uchitelja_lyrics_de.ly"

} % bookpart
