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
      \time 4/4
      \tempo \markup {
        % make tempo note smaller
        \concat {
          "Moderato " \normal-text { "(" }
          \teeny \general-align #Y #DOWN \note #"4" #0.8
          \normal-text { " = 69)" }
        }
      }
      \autoBeamOff
      \partial 8
      e'8 | % 2
      b'4  a'8  g'8  fis'8  g'8
      a'8 c''8 \break | % 3
      b'4 b'8 b'8 e''8
      e''8 d''8 d''8 | % 4
      \time 3/4  | % 4
      g'8  a'8 b'4 b'4 \break | % 5
      \time 4/4  | % 5
      a'8  a'8  a'8 b'8  g'4
      g'4 | % 6
      fis'8  e'8  dis'8  e'8  fis'4
      b4 \break | % 7
      \repeat volta 2 {
      e'8  fis'8  g'8  a'8 b'8
      b'8 c''8 d''8 | % 8
      b'4. b'8 e''8 e''8
      d''8  g'8 \break | % 9
      b'4 b'8 b'8  a'8  a'8
      a'8 b'8 |
      g'4.  g'8  fis'8  e'8  dis'8
      e'8 \break | % 11
      fis'8 ( [  g'8 ) ]  a'8 c''8
      b'2 | % 12
      e'8  fis'8  g'8  a'8 b'4
      b'4 \break | % 13
      c''8 c''8 c''8 d''8
      b'4 b'8 b'8 | % 14
      a'8  a'8  a'8 b'8  g'4
      g'4 \break | % 15
      fis'8  e'8  dis'8  e'8  fis'4.
      b8 | % 16
      e'4  e'2.
      }
    }

    \addlyrics {
      Там го -- ре ви -- со -- ко в~пла
      -- ни -- на -- та из -- ви -- ра из --
      вор -- че кра -- си -- во, то си
      ти -- хо пе -- е и сър -- це си
      ле -- е: „Ка -- то ме -- не дру --
      го из -- вор -- че та -- ка кра --
      си -- во ня -- ма. От мо -- и -- те
      нед -- ра из -- ви -- ра чис -- та
      жи -- ва во -- да. Кой от ме --
      не пи -- е, нов Жи -- вот до -- би
      -- ва, у -- че -- ни -- е об -- гръ --
      ща и на ра -- бо -- та се хва --
      ща.“}
      \addlyrics { Tam go -- re vi -- so -- ko v~pla
      -- ni -- na -- ta iz -- vi -- ra iz --
      vor -- che kra -- si -- vo, to si
      ti -- ho pe -- e i sar -- tse si
      le -- e: „Ka -- to me -- ne dru --
      go iz -- vor -- che ta -- ka kra --
      si -- vo nya -- ma. Ot mo -- i -- te
      ned -- ra iz -- vi -- ra chis -- ta
      zhi -- va vo -- da. Koy ot me --
      ne pi -- e, nov Zhi -- vot do -- bi
      -- va, u -- che -- ni -- e ob -- gra --
      shta i na ra -- bo -- ta se hva --
      shta.“}

      \header {
        title = \markup \column \normal-text \fontsize #2.5 {
          \center-align
          \line { Изворче}
          \vspace #-0.6
          \center-align
          \line \fontsize #-3 { Izvorche }
          \vspace #-0.8
          \center-align
          \line \fontsize #-3 { " " }
        }
      }

      \midi{}

    } % score

   

    % include foreign translation(s) of the song
    \include "lyrics_de/177_izvorche_lyrics_de.ly"

  } % bookpart
