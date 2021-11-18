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
      \time 6/4
      \tempo \markup {
        % make tempo note smaller
        \concat {
          "Andante " \normal-text { "(" }
          \teeny \general-align #Y #DOWN \note #"4" #0.8
          \normal-text { " = 65)" }
        }
      }


      c4 e g (a ) g2 | e4 g c4 ( \acciaccatura {d16c b c}) d4 c2 \break

      b4 d c (b8 a ) g2 | e 4 g a ( g8 fis ) g2 \break

      e4 g f e e c | \time 4/4 d e c2 \break

      \time 6/4  e4 g f e e c | \time 4/4 d e c2 \break

      \repeat volta 2 {
        e4 g g2 | e4 g g2 | e4 c' c2 | \break

         \time 6/4  b4 d c b a g | \time 4/4 e g g2 | \break

        \time 6/4 e4 g f e e c | \time 4/4 d e c2 \break



      }


    }

    \addlyrics {
      Ду -- хът Бо -- жи, Ду -- хът веч -- ни,

      Ду -- хът Свя -- ти, Ду -- хът бла -- ги,

      Кой пъл -- ни сър -- ца ни със Лю -- бов,

      Кой пъл -- ни сър -- ца ни със Лю -- бов.

      "1. Кой" пъл -- ни, Кой пъл -- ни, Кой пъл -- ни,

      Кой пъл -- ни сър -- ца ни със Лю -- бов.

      Кой пъл -- ни сър -- ца ни със Лю -- бов. 
    }
      
    \addlyrics {   Du -- hat Bo -- zhi, Du -- hat Vech -- ni,

      Du -- hat Svya -- ti, Du -- hat Bla -- gi,

      koy pal -- ni sar -- tsa ni sas Lyu -- bov,

      koy pal -- ni sar -- tsa ni sas Lyu -- bov.

      "1. Koy" pal -- ni, koy pal -- ni, koy pal -- ni,

      koy pal -- ni sar -- tsa ni sas Lyu -- bov.

      Koy pal -- ni sar -- tsa ni sas Lyu -- bov. 
    }

    \addlyrics {
      " " " " " " " " " " " " " " " "

      " " " " " " " " " " " " " " " "

      " " " " " " " " " " " " " " " " " "

      " " " " " " " " " " " " " " " " " "

      "2. Със" Лю -- бов, със Лю -- бов, със Лю -- бов,

      " " " " " " " " " " " " " " " " " "

      " " " " " " " " " " " " " " " " " " 
    }

    \addlyrics {
      " " " " " " " " " " " " " " " "

      " " " " " " " " " " " " " " " "

      " " " " " " " " " " " " " " " " " "

      " " " " " " " " " " " " " " " " " "

      "2. Sas" Lyu -- bov, sas Lyu -- bov, sas Lyu -- bov,

      " " " " " " " " " " " " " " " " " "

      " " " " " " " " " " " " " " " " " " 
    }



      \header {
        title = \markup \column \normal-text \fontsize #2.5 {
          \center-align
          \line {Духът Божий }
          \vspace #-0.6
          \center-align
          \line \fontsize #-3 { Duhat Bozhiy }
          \vspace #-0.8
          \center-align
          \line \fontsize #-3 { " " }
        }
      }

      \midi{}

    } % score



    \pageBreak

    % include foreign translation(s) of the song
    \include "lyrics_de/079_duhat_bozhii_lyrics_de.ly"

  } % bookpart
