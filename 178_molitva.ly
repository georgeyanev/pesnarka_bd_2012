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
      \time 3/4
      \tempo \markup {
        % make tempo note smaller
        \concat {
          "Moderato " \normal-text { "(" }
          \teeny \general-align #Y #DOWN \note #"4" #0.8
          \normal-text { " = 69)" }
        }
      }
      \autoBeamOff
       b'2. | % 2
   b'4.  b'8  b'4 ~ | % 3
   b'2 ^\fermata  b'4 | % 4
   g''2  fis''4 | % 5
   e''2  b'4 | % 6
   c''2. | % 7
   c''2. \break | % 8
   c''4  c''4  e''4 | % 9
   b'2. |
   b'2. | % 11
  r8  g'8  a'8  a'8  a'8  a'8 | % 12
   b'2. \break | % 13
   fis'4  fis'4  c''4 | % 14
  \time 4/4  | % 14
   b'4 ^\fermata  b'2  b'8 ( [
  c''8 ) ] | % 15
   c''8 ( [  d''8 ) ]  d''8 ( [
  e''8 ) ]  e''8 ( [  fis''8 ) ]  fis''8 (
  [  g''8 ) ] \break | % 16
   a''2  c''4.  b'8 | % 17
  \time 5/4  | % 17
   b'8  b'8  b'4  b'8  b'8
   e''2 \break | % 18
   e''4.  b'8  b'2. | % 19
   g''4.  e''8  e''2. |
  \time 3/4  |
   b'2 \acciaccatura {  c''8 ( }  b'4 ) | % 21
   b'2 r8  fis'8 \break | % 22
   g'4  g'4
  \times 2/3  {
     a'8   a'8  a'8  }
    | % 23
   fis'4  fis'4 r8  g'8 | % 24
  \time 4/4  | % 24
   e'4  e'2 r8  e'8 \break | % 25
    \time 6/4  | % 25
   e'2 e'1 | % 26
   e''4
  \times 2/3  {
     b'8   b'8  b'8 }
     c''2  b'4
  \times 2/3  {
     b'8  b'8  b'8  }
    \break | % 27
   g''2 ~  g''4.  e''8  e''4
   e''4 ^\fermata | % 28
  \time 3/4  | % 28
   b'2 \acciaccatura {  c''8 }  b'4 | % 29
   b'2. ~ |
   b'4 r4 r4 \bar "|."
    }

    \addlyrics { Чуй, Гос -- по -- ди,  към Те --
  бе аз от -- пра -- вям мой -- та
  мо -- лит -- ва. Да се ос -- во --
  бо -- ди мо -- е -- то тя -- ло от
    всич -- ки -- те  не
  -- прав -- ди, ко -- и -- то но --
  ся в‿све -- та. Гос -- по -- ди,
  Гос -- по -- ди, Гос -- по -- ди,
  да дой -- де Тво -- я -- та ми --
  лост над ме -- не, над ме -- не!
  Аз, кой -- то не зна -- я как да
  жи -- ве -- я о -- ще, Гос --
  по -- ди. }
    \addlyrics {Chuy, Gos -- po -- di,  kam Te --
  be az ot -- pra -- vyam moy -- ta
  mo -- lit -- va. Da se os -- vo --
  bo -- di mo -- e -- to tya -- lo ot
    vsich -- ki -- te  ne
  -- prav -- di, ko -- i -- to no --
  sya v‿sve -- ta. Gos -- po -- di,
  Gos -- po -- di, Gos -- po -- di,
  da doy -- de Tvo -- ya -- ta mi --
  lost nad me -- ne, nad me -- ne!
  Az, koy -- to ne zna -- ya kak da
  zhi -- ve -- ya o -- shte, Gos --
  po -- di. }

    \header {
      title = \markup \column \normal-text \fontsize #2.5 {
        \center-align
        \line { Молитва}
        \vspace #-0.6
        \center-align
        \line \fontsize #-3 { Molitva }
        \vspace #-0.8
        \center-align
        \line \fontsize #-3 { " " }
      }
    }

    \midi{}

  } % score


  % include foreign translation(s) of the song
  \include "lyrics_de/178_molitva_lyrics_de.ly"

} % bookpart
