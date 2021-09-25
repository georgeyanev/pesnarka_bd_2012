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

    \new Voice \relative c' {
      \clef treble
      \key g \major
      %\tempo "Moderato" 8 = 160
      \autoBeamOff
      \omit Score.TimeSignature
      \cadenzaOn % allows custom bar lines
      \tempo \markup {
        % make tempo note smaller
        \concat {
          "Andante" \normal-text { "(" }
          \teeny \general-align #Y #DOWN \note #"8" #0.8
          \normal-text { " = 63)" }
        }
      }
      g4 b d d8. e16 d 2  \bar "!"  d4 e e a g8. g16 fis2 \bar  "!" \break
      d4 g g g8. a16 b2 \bar "!" b4 b b b8. c16 d2 \bar "!" c4 c b d8. b16 a2 \bar "!"  \break
      a4 a4 a4  b8. a16 g2 \bar "!"  d4 b'8. a16 g4 fis4 \bar "!" fis4 e e e e8. fis16 d2  \bar "!"  \break
      c8. c16 c4 e e d b8. b16 b2 \bar "!" c8. b16 a4 c4 c4 c4 d8. d16 b2 \bar "!"  \break
      b8. c16 d4 d e e a8. g16 fis2 \bar "!" fis8. g16 a4 a4 b a g8.  a16 b2 \bar "!"  \break
      b8. c16 d4 c b a a8. b16 g2  \bar "!"  b,4 b b8.c16 d2 \bar "!"  \break
      e4 a, a8. b16 c2 \bar "!" e4 e4 a8. g16 fis2 \bar "!"  a4 a b8. a16 g2 \bar "!"  \break
      b4b d8. c16 b2  \bar "!" c4b a8. a16 a2  \bar "!"  g4 fis4 a8. g16 fis2 \bar "!"  \break
      e4 e fis8. e16 d2 \bar "!" c8. c16 c4 e4 e d b8 b16 b2 \bar "!"  \break
      

    }

    \addlyrics {
      Скръб -- та си ти ка  -- жи,
      сър -- це си ти от -- во -- ри
      на слън -- че -- ви лъ -- чи,
      на слън -- че -- ви лъ -- чи,
      на слън -- че -- ви лъ -- чи,
      на слън -- че -- ви лъ -- чи.
      Лъ -- чи от Бо -- га
      ра -- дост ще ти до -- не -- сат,
      и вду -- ша ти ра -- дост ще вне -- сат,
      и вду -- ша ти рад -- ост ще вне -- сат,
      и вду -- ша ти рад -- ост ще вне -- сат,
      и вду -- ша ти рад -- ост ще вне -- сат,
      и вду -- ша ти рад -- ост ще вне -- сат,
      ра -- дост ще вне -- сат, рад -- ост ще вне -- сат,
      ра -- дост ще вне -- сат, рад -- ост ще вне -- сат,
      ра -- дост ще вне -- сат, рад -- ост ще вне -- сат,
      ра -- дост ще вне -- сат, рад -- ост ще вне -- сат,
      и вду -- ша ти ра -- дост ще вне -- сат.}
    \addlyrics {
      Skrab -- ta si ti ka  -- zhi,
      sar -- tse si ti ot -- vo -- ri
      na slan -- che -- vi la -- chi,
      na slan -- che -- vi la -- chi,
      na slan -- che -- vi la -- chi,
      na slan -- che -- vi la -- chi.
      La -- chi ot Bo -- ga
      ra -- dost shte ti do -- ne -- sat,
      i v du -- sha ti ra -- dost shte vne -- sat,
      i v du -- sha ti rad -- ost shte vne -- sat,
      i v du -- sha ti rad -- ost shte vne -- sat,
      i v du -- sha ti rad -- ost shte vne -- sat,
      i v du -- sha ti rad -- ost shte vne -- sat,
      ra -- dost shte vne -- sat, rad -- ost shte vne -- sat,
      ra -- dost shte vne -- sat, rad -- ost shte vne -- sat,
      ra -- dost shte vne -- sat, rad -- ost shte vne -- sat,
      ra -- dost shte vne -- sat, rad -- ost shte vne -- sat,
      i v du -- sha ti ra -- dost shte vne -- sat.}

      \header {
        title = \markup \column \normal-text \fontsize #2.5 {
          \center-align
          \line { Скръбта си ти кажи}
          \vspace #-0.6
          \center-align
          \line \fontsize #-3 {  Skrabta si ti kazhi, }
          \vspace #-0.8
          \center-align
          \line \fontsize #-3 { " " }
        }
      }

      \midi{}

    } % score

    \pageBreak


    % include foreign translation(s) of the song
    \include "lyrics_de/077_skrabta_si_ti_kazhi_lyrics_de.ly"

  } % bookpart
