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

    \new Voice \absolute{
      \clef treble
      \key c \major
      \time 3/4
      \tempo \markup {
        % make tempo note smaller
        \concat {
          "Andante" \normal-text { " (" }
          \teeny \general-align #Y #DOWN \note #"4" #0.8
          \normal-text { " = 66)" }
        }
      }
      \autoBeamOff
      \partial 4
      e'8 ([f'8]) |  g'2 g'4 |  a'4 a' a' | g'2 f'4 | e'2 e'8 ([ f' ]) | \break

      g'2 g'4 | c''2 d''4 | e''2 d''4 | c''2 c''8 ( [d''8]) | \break

      \repeat volta 2 {
        e''2 e''8 e'' | e''4 ( d'' ) c'' | b'4. a'8  b' a' | g'2 e'8. f'16 | \break
        g'4 c' d' | e' e' d' |
      }
      \alternative {
        { c'2. ~| c'2  c''8 ( [ d'' ] ) |  }
        { c'2. ( | c'4 ) r4 e'8 ([f'8 ])| \break }
      }

      g'2 g'4 |  a'4 a' a' | g'2 f'4 | e'2 e'8 ([ f' ]) | \break

      g'2 g'4 | c''2 d''4 | e''2 d''4 | c''2 c''8 ( [d''8]) | \break

      \repeat volta 2 {
        e''2 e''4 | e''4 d'' c'' | b'4. a'8  b' a' | g'2 e'8. f'16 | \break
        g'4 c' d' | e' e' d' |
      }

      \alternative {
        { c'2. ~| c'2  c''8 ( [ d'' ] ) |  }
        { c'2. ( | c'4 ) r4 e'8 ([f'8 ])| \break }
      }

      g'2 g'4 |  a'4 a' a' | g'2 f'4 | e'2 e'8 ([ f' ]) | \break

      g'2 g'4 | c''2 d''4 | e''4 e''4 d''4 | c''2 c''8 ([d''8]) | \break

      \repeat volta 2 {
        e''2 e''8 e'' | e''4  d'' c'' | b'4. (a'8)  b' ([a']) | g'2 e'8. f'16 | \break
        g'4 c' d' | e' e' d' |
      }
      \alternative {
        { c'2. ~| c'2  c''8   d''   |  }
        { c'2. ( | c'4 ) r4 r4 \bar "|."  | \break }
      }

    }

    \addlyrics {
      "1.Пред" Теб при -- па -- да -- ме, Гос -- по -- ди, днес
      с~чис -- ти, тре -- пет -- ни  ду -- ши. Във
      пе -- сен из -- ли --  ва -- ме  сър -- ца -- та си и зо --
      вем Те, Пре -- свя -- тий, про -- сти! Във сти!

      "2.За" -- бра -- вяй на -- ши -- те гре -- хо -- ве, о --
      бил -- но нас бла -- го -- сло -- ви. Ца --
      рю пре -- бла -- гий на свет -- ли -- те ду -- ши, в~цар -- ство --
      то си ни Ти при -- е -- ми! Ца -- ми!

      "3.Там" да те сла -- вим през веч -- ност -- та, е --
      дин Ти за слу -- жа -- ваш хва -- ла. О-гра --
      ди ни с Тво -- и -- те ми -- лос -- ти, о -- за --
      ри ни с~Твой -- та Свет -- ли -- на! О -- гра -- на!
    }
    \addlyrics {
      "1.Pred" Teb pri -- pa -- da -- me, Gos -- po -- di, dnes
      s~chis -- ti, tre -- pet -- ni  du -- shi. Vav
      pe -- sen iz -- li --  va -- me  sar -- tsa -- ta si i zo --
      vem Te, Pre -- svya -- tiy, pro -- sti! Vav sti!

      "2.Za" -- bra -- vyay na -- shi -- te gre -- ho -- ve, o --
      bil -- no nas bla -- go -- slo -- vi. Tsa --
      ryu pre -- bla -- giy na svet -- li -- te du -- shi, v~tsar -- stvo --
      to si ni Ti pri -- e -- mi! Tsa -- mi!

      "3.Tam" da te sla -- vim prez vech -- nost -- ta, e --
      din Ti za slu -- zha -- vash hva -- la. O-gra --
      di ni s Tvo -- i -- te mi -- los -- ti, o -- za --
      ri ni s~Tvoy -- ta Svet -- li -- na! O -- gra -- na!
    }



    \header {
      title = \markup \column \normal-text \fontsize #2.5 {
        \center-align
        \line { Сърдечен зов }
        \vspace #-0.6
        \center-align
        \line \fontsize #-3 { Sardechen zov }
        \vspace #-0.8
        \center-align
        \line \fontsize #-3 { " " }
      }
    }

    \midi{}

  } % score



  % include foreign translation(s) of the song
  %\include "lyrics_de/lyrics_de_file_name.ly"

} % bookpart
