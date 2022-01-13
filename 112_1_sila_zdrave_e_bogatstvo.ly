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
      \key g \major
      \time 3/4
      \tempo \markup {
        % make tempo note smaller
        \concat {
          "Moderato" \normal-text { " (" }
          \teeny \general-align #Y #DOWN \note #"4" #0.8
          \normal-text { " = 92)" }
        }
      }
      \autoBeamOff

      \repeat volta 2 {
        d8. d16 e8 fis8 g8 a8 | b4 g2 | e8. e16 e8 e8 a8 g8 | \break



        fis4 d2 |  c'8. c16 c8 b8 d8 c8 | b4 g2 | b8. c16 d4 d4 | \break

        c8. b16 c4 a4 |    d,8. d16 e8 e8 fis8 d8
      } \alternative {
        { | g4 \tempo "         Fine" g2 | \break }
        { \time 4/4 g4 g2 

        \override Score.MetronomeMark #'outside-staff-priority = #599
        %\override Score.MetronomeMark.X-extent=#'(-4.5 . 0)
        \tempo \markup {
          % make tempo note smaller
          \concat {
            "Andante" \normal-text { " (" }
            \teeny \general-align #Y #DOWN \note #"4" #0.8
            \normal-text { " = 60)" }
          }
        }
        
        e8. e16 }
      }

      \bar "||" \time 3/4  a4 g4 fis8. e16 


      \time 2/4  e4. ( fis8 ) \break

      | \time 3/4  d2 b'8. b16 | c4 e,4 fis8. d16 | \time 4/4  b'2 ( a2 ) |
      \time 3/4  |
      \grace { b16 [( a16] } g2.) \bar "|."


    }



    \addlyrics {
      Си -- ла,
      здра -- ве е бо -- гат -- ство, Си -- ла, здра --
      ве е бо -- гат -- ство, Си -- ла, здра -- ве е
      бо -- гат -- ство, е бо -- гат -- ство, е бо --
      гат -- ство, Си -- ла, здра -- ве е бо -- гат --
      ство. гат -- ство за жи -- во -- та на ду -- ша
      -- та, за жи -- во -- та на ду -- ша -- та.
    }

    \addlyrics {
      Si -- la,
      zdra -- ve e bo -- gat -- stvo, Si -- la, zdra --
      ve e bo -- gat -- stvo, Si -- la, zdra -- ve e
      bo -- gat -- stvo, e bo -- gat -- stvo, e bo --
      gat -- stvo, Si -- la, zdra -- ve e bo -- gat --
      stvo. gat -- stvo za zhi -- vo -- ta na du -- sha
      -- ta, za zhi -- vo -- ta na du -- sha -- ta.
    }

    \header {
      title = \markup \column \normal-text \fontsize #2.5 {
        \center-align
        \line { Сила, здраве е богатство }
        \vspace #-0.6
        \center-align
        \line \fontsize #-3 {Sila, zdrave e bogatstvo }
        \vspace #-0.8
        \center-align
        \line \fontsize #-3 { " " }
      }
    }



    \midi{}

  } % score

  \markup \halign #-11.1 \raise #2.8 \override #'(baseline-skip . 2) {
    \column  \right-align {
      \line  {
        \bold  { "D. C. al Fine" }
      }
      \line  {
        \bold { "senza ripetizione" }
      }
      \line  { " " }
      \line  { " " }
      \line  { " " }
      \line  { " " }
      \line  { " " }
    }
  }





  % include foreign translation(s) of the song
  \include "lyrics_de/112_1_sila_zdrave_sa_bogatstvo_lyrics_de.ly"

} % bookpart
