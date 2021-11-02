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
      \key bes \major
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
      d4  g8. (  [a16] ) | % 2
      bes4. (  a8 ) | % 3
      g16  fis16  g16  a16  g8
      es8 \break | % 4
      \time 3/4  | % 4
      d2
      \times 2/3  {
        a'8   bes8  c8
      }
      | % 5
      d4.  a8
      \times 2/3  {
        c8   bes8  a8
      }
      | % 6

      \times 2/3  {
        bes8 (   a8 )  g8
      }
      g2 \break | % 7
      d'4 (
      \times 2/3  {
        d8 )   cis8  d8
      }

      \times 2/3  {
        es8   d8  cis8
      }
      | % 8
      d2
      \times 2/3  {
        a8   bes8  c8
      }
      | % 9
      d4.  c8  d8  c8 \break
      |
      bes2
      \times 2/3  {
        a8   bes8  c8
      }
      | % 11
      d4.  a8  c16  bes16
      a16  g16 | % 12
      g2 r4 \break \repeat volta 2 {
        | % 13
        \time 4/4  | % 13
        d'8 ^\fermata
        \times 2/3  {
          d16  d16  d16 ]
        }
        d8 ( [  g8 ) ]  bes2 | % 14
        a16  g16  fis16  g16
        a8.  g16  g2 \break | % 15
        f16 ^\markup{ \bold {rall.} }  es16
        d16  cis16  d2
        \times 2/3  {
          c8  ^\markup{ \bold {a tempo} }  bes8
          a8
        }
        | % 16
        \time 3/4  | % 16
        bes2
        \times 2/3  {
          a8  bes8  c8
        }
        \break | % 17
        d4.  c8  d16 ( [  c16
        ) ]  bes16  a16 | % 18
        bes2
        \times 2/3  {
          a8   bes8  c8 }
          \break | % 19
          d4.  c8
          \times 2/3  {
            bes8   a8  g8
          }
          |
          \times 2/3  {
            fis8   g8 ^\markup{ \bold {rit.} }
            a8
          }
          g2

        }
      }

      \addlyrics {
        Ски -- тах  се  по го -- ри
        и пла -- ни -- ни. Е -- дин Не --
        зна -- ен ме при -- дру -- жа  --
        ва -- ше. Кач -- вах -- ме и сли
        -- зах -- ме пла -- нин -- ски свет --
        ли вър -- хо -- ве и, хо -- дей --
        ки, Той ви -- на -- ги с‿мен бе.
        Там го -- ре ви -- дях  аз Не --
        го -- ва -- та Свет -- ли -- на, що
        ме о -- за -- ри, и ка -- за Той:
        Пом -- ни, че тряб -- ва го --
        ре да си, слез -- ни и знай– на
        вси -- чки по -- ле -- зен бъ --
        ди.}
        \addlyrics {  Ski -- tah  se  po go -- ri
        i pla -- ni -- ni. E -- din Ne --
        zna -- en me pri -- dru -- zha  --
        va -- she. Kach -- vah -- me i sli
        -- zah -- me pla -- nin -- ski svet --
        li var -- ho -- ve i, ho -- dey --
        ki, Toy vi -- na -- gi s‿men be.
        Tam go -- re vi -- dyah  az Ne --
        go -- va -- ta Svet -- li -- na, shto
        me o -- za -- ri, i ka -- za Toy:
        Pom -- ni, che tryab -- va go --
        re da si, slez -- ni i znay– na
        vsi -- chki po -- le -- zen ba --
        di.}

        \header {
          title = \markup \column \normal-text \fontsize #2.5 {
            \center-align
            \line { Скитах се по гори и планини}
            \vspace #-0.6
            \center-align
            \line \fontsize #-3 { Skitah se po gori i planini }
            \vspace #-0.8
            \center-align
            \line \fontsize #-3 { " " }
          }
        }

        \midi{}

      } % score



      % include foreign translation(s) of the song
      \include "lyrics_de/133_skitah_se_po_gori_i_planini_lyrics_de.ly"

    } % bookpart
