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

    \new Voice \absolute {
      \clef treble
      \key g \major
      \time 2/4
      \tempo \markup {
        % make tempo note smaller
        \concat {
          "Moderato " \normal-text { "(" }
          \teeny \general-align #Y #DOWN \note #"4" #0.8
          \normal-text { " = 69)" }
        }
      }
      \autoBeamOff
      fis''8 -.  d''8 -.  e''8 -.
      c''8 -. | % 2
      d''8 -.  b'8 -.  c''8 -.
      a'8 -.  | % 3
      b'2 \repeat volta 2 {
        | % 4
        b'8 -. c''8 -.  d''8 -.
        b'8 -.  | % 5
        c''8 -. a'8 -.  b'8 -.
        b'8 -.  \break | % 6
        b'2
        | % 7
      }
      \key bes \major \time 5/4  % 7
      d''4 c''4  bes'8 ( [  a'8 ) ]
      g'2 | % 8
      a'4  g'4  fis'8 ( [  es'8 ) ]
      d'2 | % 9
      c'4  c'4  d'8 ( [  es'8 ) ]  g'2
      \break |
      fis'4  es'4  fis'8 ( [  es'8 ) ]
      d'2 | % 11
      c'4  c'4  d'8 ( [  es'8 ) ]  g'2
      | % 12
      fis'4  es'4  fis'8 ( [  es'8 ) ]
      d'2 \break | % 13
      d''4 c''4  bes'8 ( [  a'8 ) ]
      g'2 | % 14
      a'4  g'4  fis'8 ( [  es'8 ) ]
      d'2 | % 15
      c'4  c'4  d'8 ( [  es'8 ) ]  g'2
      \break | % 16
      fis'4  es'4  fis'8 ( [  es'8 ) ]
      d'2 | % 17
      c'4  c'4  d'8 ( [  es'8 ) ]  g'2
      | % 18
      fis'4  es'4  fis'8 ( [  es'8 ) ]
      d'2 \bar "||"
      \break | % 19
      \time 9/8  | % 19
      | % 19
      \tempo \markup {
        % make tempo note smaller
        \concat {
          "Allegretto" \normal-text { " (" }
          \teeny \general-align #Y #DOWN \note #"4" #0.8
          \normal-text { " = 160)" }
        }
      }
      bes'4 bes'8 bes'8  a'4
      bes'4. |
      a'4  g'4  a'4  g'4. | % 21
      fis'4  es'8  es'8  fis'4  es'4.
      \break | % 22
      c'4  d'4  d'4  d'4. | % 23
      c'4  c'4  d'4  es'4. | % 24
      d'4  c'4  d'4  d'4. | % 25
      c'4  c'4  d'4  es'4. \break | % 26
      d'4  c'4  d'4  d'4. | % 27
      bes'4 bes'8 bes'8  a'4
       \tempo \markup {
        % make tempo note smaller
        \concat {
          "Meno mosso" \normal-text { " (" }
          \teeny \general-align #Y #DOWN \note #"4" #0.8
          \normal-text { " = 144)" }
        }
      }
      bes'4. | % 28
      a'4  g'4  a'4  g'4. \break | % 29
      fis'4  es'4  fis'4  es'4. |
      c'4  d'4  c'4  d'4. | % 31
      d'2. ~  d'4. \bar "|."
    }

    \addlyrics {
      Бо -- жи -- е -- то Слън -- це гре --
      е днес, Бо -- жи -- е -- то Слън --
      це гре -- е днес. Ду -- хай, вет
      -- ре, ти -- хо ду  -- хай, ти
      -- хо ду  -- хай, ми -- ло гле
      -- дай, ти -- хо ду  -- хай,
      лис -- ти раз  -- вий. Лист раз
      -- вя  -- вай, цвят раз -- тва
      -- ряй, цвят раз -- тва  --
      ряй, плод раз -- да  -- вай,
      цвят раз -- тва  -- ряй, плод
      раз -- да  -- вай. Хай ди ди ди
      ди, да си и -- ди. Хай ди ди ди
      ди, да се у -- чи, да се у -- чи,
      да по -- лу -- чи, да по -- лу --
      чи, да се у -- чи. Хай ди ди ди
      ди, да си и -- ди, да си и -- ди,
      До -- бро да ви -- ди.
    }
    \addlyrics {
      Bo -- zhi -- e -- to Slan -- tse gre --
      e dnes, Bo -- zhi -- e -- to Slan --
      tse gre -- e dnes. Du -- hay, vet
      -- re, ti -- ho du  -- hay, ti
      -- ho du  -- hay, mi -- lo gle
      -- day, ti -- ho du  -- hay,
      lis -- ti raz  -- viy. List raz
      -- vya  -- vay, tsvyat raz -- tva
      -- ryay, tsvyat raz -- tva  --
      ryay, plod raz -- da  -- vay,
      tsvyat raz -- tva  -- ryay, plod
      raz -- da  -- vay. Hay di di di
      di, da si i -- di. Hay di di di
      di, da se u -- chi, da se u -- chi,
      da po -- lu -- chi, da po -- lu --
      chi, da se u -- chi. Hay di di di
      di, da si i -- di, da si i -- di,
      Do -- bro da vi -- di.
    }

    \header {
      title = \markup \column \normal-text \fontsize #2.5 {
        \center-align
        \line { Духай ветре}
        \vspace #-0.6
        \center-align
        \line \fontsize #-3 { Duhay vetre }
        \vspace #-0.8
        \center-align
        \line \fontsize #-3 { " " }
      }
    }

    \midi{}

  } % score



  % include foreign translation(s) of the song
  \include "lyrics_de/161_duhai_vetre_ii_lyrics_de.ly"

} % bookpart
