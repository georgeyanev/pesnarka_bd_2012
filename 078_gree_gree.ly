\version "2.22.0"

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
    #'((basic-distance . 10.5)
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
          (padding . 0.3)
        )
        \override VerticalAxisGroup.nonstaff-nonstaff-spacing = #'((minimum-distance . 2))
      }
    } % layout

    \new Voice \relative c' {
      \clef treble
      \key g \major
      \time 5/4
      \tempo \markup {
        % make tempo note smaller
        \concat {
          "Andantinio " \normal-text { "(" }
          \teeny \general-align #Y #DOWN \note {4} #0.8
          \normal-text { " = 69)" }
        }
      }
      \autoBeamOff
      b8 d b8 d b8 d  \bar "!" g fis e c | c e c e c e   \bar "!"  \break
      
      fis8 e d b | b d b d b d \bar "!"  e d a b | \break
      
      c e c e c e  \bar "!"  fis8 e8 d8 b8 | b8 d8 b8 d8 b d  \bar "!"  \break

      e8 d a b | c e c e c e \bar "!"  fis e d b  \bar "!"  \break

      b d b d b d  \bar "!" b d b d | \time 4/4 b'b b b c b b a   \bar "!"  \break

      a8 g g fis fis e e d | \time 3/4 c' b b a a g | g 4 g2 | \break
      
      \time 4/4 d'8 e, e e c' e, e e | a g g fis fis e e d | \break
      
      \time 3/4 b' b d c b a | a4 g2 | \bar "|."
      
      
    }

    \addlyrics {
      Гре -- е, гре -- е, гре -- е свет -- ли -- на -- та,

      гре -- е, гре -- е, гре -- е свет -- ли -- на -- та,

      гре -- е, гре -- е, гре -- е свет -- ли -- на -- та,

      гре -- е, гре -- е, гре -- е свет -- ли -- на -- та,

      гре -- е, гре -- е, гре -- е свет -- ли -- на -- та,

      гре -- е, гре -- е, гре -- е свет -- ли -- на -- та,

      гре -- е, гре -- е, гре -- е свет -- ли -- на -- та,

      На тре --  ви -- те, на во -- ди -- те,

      на цве -- тя -- та, на де -- ца -- та

      радо -- ст но -- си за сър -- ца -- та.

      На тре -- ви -- те, на во -- ди -- те,

      на цве -- тя -- та, на де -- ца -- та

      ра -- дост но -- си за сър -- ца -- та.}
      \addlyrics {
        Gre -- e, gre -- e, gre -- e svet -- li -- na -- ta,

        gre -- e, gre -- e, gre -- e svet -- li -- na -- ta,

        gre -- e, gre -- e, gre -- e svet -- li -- na -- ta,

        gre -- e, gre -- e, gre -- e svet -- li -- na -- ta,

        gre -- e, gre -- e, gre -- e svet -- li -- na -- ta,

        gre -- e, gre -- e, gre -- e svet -- li -- na -- ta,

        gre -- e, gre -- e, gre -- e svet -- li -- na -- ta,

        Na tre --  vi -- te, na vo -- di -- te,

        na tsve -- tya -- ta, na de -- tsa -- ta

        rado -- st no -- si za sar -- tsa -- ta.

        Na tre -- vi -- te, na vo -- di -- te,

        na tsve -- tya -- ta, na de -- tsa -- ta

        ra -- dost no -- si za sar -- tsa -- ta.}

        \header {
          title = \markup \column \normal-text \fontsize #2.5 {
            \center-align
            \line { Грее, грее}
            \vspace #-0.6
            \center-align
            \line \fontsize #-3 { Gree, gree }
            \vspace #-0.8
            \center-align
            \line \fontsize #-3 { " " }
          }
        }

        \midi{}

      } % score

  \markup \halign #-29.08 \raise #2.8 \override #'(baseline-skip . 2) { 
    \column  { 
      \line  {" "}
      \line \right-align { 
          \bold { "(D.C.)" }  
      }
      \line  {" "}
    }
  } 

      % include foreign translation(s) of the song
      \include "lyrics_de/078_gree_gree_lyrics_de.ly"

    } % bookpart
