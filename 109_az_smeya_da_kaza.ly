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
        \override VerticalAxisGroup.nonstaff-relatedstaff-spacing = #'(
          (basic-distance . 4.5)
          (padding . 0.5)
        )
        \override VerticalAxisGroup.nonstaff-nonstaff-spacing = #'((minimum-distance . 2))
      }
    } % layout

    \new Voice \relative c' {
      \clef treble
      \key c \major
      \time 4/4
      \tempo \markup {
        % make tempo note smaller
        \concat {
          "Andante" \normal-text { " (" }
          \teeny \general-align #Y #DOWN \note #"4" #0.8
          \normal-text { " = 63)" }
        }
      }

      \autoBeamOff
      g4 \tuplet 3/2 {  a8   b8   c8  }  d8   e4   a8 | \time 5/4  | g8.   f16   e8   f8   g8 ( [ a8 ) ]   g2 \break |

      \time 4/4  | c4 \tuplet 3/2 {  b8   a8   a8  } b8   g4   e8 | \time 5/4  | g8   f8   e8   d8   d8 ( [ e8 ) ]   c4.   c8 \break |

      \time 4/4  | e4.   c8   d8   c8   b8  a8 |   \time 4/4   a4   b4   g4.   c'8  | \time 5/4 \break

      \tweak direction #up \tuplet 3/2 { \once \override Slur.positions = #'(1 . 1) \tuplet 3/2 { c16 ([ d16  c16 } b8]) b8 }
    
      \tweak direction #up \tuplet 3/2 { \once \override Slur.positions = #'(1.05 . 0.1) \tuplet 3/2 { b16 [( c16  b16 } a8 )] a8 }
       
      \tuplet 3/2 { g4 e8 } g4. f8 \break


      f8   f8   a8   g8   g8 e8   g4. g8 | \tempo "(poco rit.)"  \tuplet 3/2 { a4 a8 } \tuplet 3/2 { b4 e,8 } \tweak direction #up \tuplet 3/2 { c'4 c8 } c4. e,8 \break

      \tempo "(a tempo)" e8 e8   f8 d8   d4   c4.   f8 f8   f8   a8   e8   e4 f4.   a8 \break

      \time 6/4   g8   d8   e8   f8   e8 ( [ f8 ) ]   g2   g8   g8 \time 3/4 e'4. d8 c8 b8 \time 4/4 d2 c2 \bar "|." \break

    }

    \addlyrics {

      Аз сме -- я да ка -- жа, че Слън
      -- це -- то е свет -- ло. Аз сме
      -- я да ка -- жа, че Слън -- це --
      то е свет -- ло. То -- ва не
      мо -- же да се от -- ка -- же. При
      не --   го всич  --
      ко се то -- пи, при не -- го
      всич -- ко тъй ра -- сте, при не --
      го всич -- ко все цъф -- ти, при
      не -- го всич -- ко зре -- е. При
      не -- го всич -- ко ста -- ва, за --
      вив -- ки -- те си сви -- ва и
      на ра -- бо -- та о -- ти -- ва.


    }
    \addlyrics {
      Az sme -- ya da ka -- zha, che Slan
      -- tse -- to e svet -- lo. Az sme
      -- ya da ka -- zha, che Slan -- tse --
      to e svet -- lo. To -- va ne
      mo -- zhe da se ot -- ka -- zhe. Pri
      ne --   go vsich  --
      ko se to -- pi, pri ne -- go
      vsich -- ko tay ra -- ste, pri ne --
      go vsich -- ko vse tsaf -- ti, pri
      ne -- go vsich -- ko zre -- e. Pri
      ne -- go vsich -- ko sta -- va, za --
      viv -- ki -- te si svi -- va i
      na ra -- bo -- ta o -- ti -- va.
    }

    \header {
      title = \markup \column \normal-text \fontsize #2.5 {
        \center-align
        \line { Аз смея да кажа }
        \vspace #-0.6
        \center-align
        \line \fontsize #-3 { Az smeja da kazha }
        \vspace #-0.8
        \center-align
        \line \fontsize #-3 { " " }
      }
    }

    \midi{}

  } % score
\pageBreak


  % include foreign translation(s) of the song
  \include "lyrics_de/109_az_smeja_da_kazha_lyrics_de.ly"

} % bookpart
