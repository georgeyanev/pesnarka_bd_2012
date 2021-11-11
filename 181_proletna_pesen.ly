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
      \key c \major
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
      e'4  e'8.  f'16 | % 2
      g'4  g'4 | % 3
      c''4 b'8.  a'16 | % 4
      a'4  a'8 ( [  f'8 ) ] | \break % 5
      d'8.  e'16  f'8. ( [  g'16 ) ] | % 6
      a'4 (  g'4 ) | % 7
      e'2  | % 8
      e'4  e'8.  f'16 | % 9
      g'4  g'8. c''16 \break |
      e''4 d''4 | % 11
      c''4. b'8 | % 12
      c''8. ( [ b'16 ) ] c''8. ( [
      a'16 ) ] | % 13
      g'4  g'4 | % 14
      a'16 b'16 c''16 d''16
      e''8 d''8  | % 15
      c''4 c''4  | % 16
      g'4.  e'8 | % 17
      g'8  f'8  e'8  d'8 | % 18
      c'2
      \repeat volta 2 {
        | % 19
        g'4  g'4 \break |
        g'8 c''8 c''8 b'8 | % 21
        f'4  f'4 | % 22
        f'8 b'8 b'8  a'8 | % 23
        e'4  e'4 \break | % 24
        e'8  a'8  a'8  g'8 | % 25
        d'16  e'16  f'16  g'16
        c''8 b'8 | % 26
        e''8 d''8 c''8 b'8 | % 27
        c''2 \break | % 28
        c''4. b'8 | % 29
        c''8. b'16 c''8.  a'16 |
        g'2 | % 31
        a'16 b'16 c''16 d''16
        e''8 d''8 \break | % 32
        c''4 c''4 | % 33
        g'4.  e'8 | % 34
        g'8  f'8  e'8  d'8 | % 35
        c'2
      }
    }

    \addlyrics {
      Е
      -- то при -- сти -- га чуд -- на --
      та про -- лет,  Слън -- це из
      -- гря -- ва. Всич -- ко се
      бу -- ди, рас -- те, жи -- ве -- е и
      се  рад -- ва, и бла -- го --
      да -- ри на Бо -- га. Про -- лет,
      про -- лет е до -- шла. Пти -- чен
      -- це в~не -- бе -- то слад -- ко
      чу -- ру -- ли -- ка, Слън -- це -- то
      при -- вет -- но це -- лий мир об --
      ли -- ва с~Ра -- дост и Лю -- бов.
      Тър -- жест -- ву -- ва це -- лий
      мир и бла -- го -- да -- ри на Бо
      -- га. Про -- лет, про -- лет е до --
      шла.}
      \addlyrics {      E
      -- to pri -- sti -- ga chud -- na --
      ta pro -- let,  Slan -- tse iz
      -- grya -- va. Vsich -- ko se
      bu -- di, ras -- te, zhi -- ve -- e i
      se  rad -- va, i bla -- go --
      da -- ri na Bo -- ga. Pro -- let,
      pro -- let e do -- shla. Pti -- chen
      -- tse v~ne -- be -- to slad -- ko
      chu -- ru -- li -- ka, Slan -- tse -- to
      pri -- vet -- no tse -- liy mir ob --
      li -- va s~Ra -- dost i Lyu -- bov.
      Tar -- zhest -- vu -- va tse -- liy
      mir i bla -- go -- da -- ri na Bo
      -- ga. Pro -- let, pro -- let e do --
      shla.}

      \header {
        title = \markup \column \normal-text \fontsize #2.5 {
          \center-align
          \line { Пролеттна песен}
          \vspace #-0.6
          \center-align
          \line \fontsize #-3 { Proletna pesen }
          \vspace #-0.8
          \center-align
          \line \fontsize #-3 { " " }
        }
      }

      \midi{}

    } % score


    % include foreign translation(s) of the song
    \include "lyrics_de/181_proletna_pesen_lyrics_de.ly"

  } % bookpart
