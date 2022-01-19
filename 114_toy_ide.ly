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

    \new Voice \absolute {
      \clef treble
      \key bes \major
      \time 3/8
      \tempo \markup {
        % make tempo note smaller
        \concat {
          "Allegretto" \normal-text { " (" }
          \teeny \general-align #Y #DOWN \note #"4." #0.8
          \normal-text { " = 54)" }
        }
      }

      bes'4 bes'8 | bes'4 bes'8 |  bes'4 bes'8 |  a'8 ( bes'8 )  c''8 \noBeam | \acciaccatura { c''8 ( } a'4 ) g'8 | \break

      g'4 g'8 | g'4 g'8 | g'8 ( a'8 ) bes'8 \noBeam|  \acciaccatura { bes'8 ( } g'4 ) f'8 | f'4 f'8 | \break


      f'4 f'8 | es'8 ( f'8 ) g'8 \noBeam | \acciaccatura { g'8 ( } es'4 ) d'8 |  d'4 d'8 | c'8 ( d'8 ) c'8 \noBeam | bes4. ~ | bes4. \break


      | d'4 d'8 | c'8 ( d'8 ) c'8 \noBeam | bes4. ~ | bes4. |  d'4 d'8 | \tempo "rit." c'8 [( d'8 )] \noBeam c'8 | bes4. ~ |
      \tempo "     Fine" bes4. \bar "|." \break

      d'8. \noBeam d'16 \noBeam d'8 |  f'8.\noBeam f'16 \noBeam f'8 | g'4 d'8 | f'4 es'8 |  es'4. ~ | \break

      es'4. | g'8.\noBeam g'16 \noBeam g'8 | c'8. \noBeam bes'16 \noBeam  bes'8 | a'4 g'8 | g'4 f'8 | \break

      bes'4. ~ | bes'4. | f'4 d'8 | f'4 f'8 | f'4. ~ | f'4. |  \break

      f'4 f'8 |f'4  f'8 | f'4. ~ |  f'4. \bar "||" \key des \major \time 2/4 | 
      
      \tempo \markup {
        % make tempo note smaller
        \concat {
          "Andante" \normal-text { " (" }
          \teeny \general-align #Y #DOWN \note #"4" #0.8
          \normal-text { " = 60)" }
        }
      }

      
      bes'4. a'8 | \break

      \time 6/4 \autoBeamOff bes'8. ges'16 f'2 des'8. es'16 f'4. f'8 |  ges'4. f'8 ges'4 as'8. as'16 f'2 |  \break

      \time 4/4  c'8 des'8 es'8 f'8 ges'2 | f'8 es'8 des'8 c'8 bes2 | \time 3/4  \repeat volta 2 {
        bes'8. c''16 des''2 | \break

        c''8. bes'16 a'2 | \time 4/4  bes'8 bes'8 ges'8 ges'8 f'2 | c'8 des'8 es'8 f'8 ges'2 | \break

        f'8 es'8 des'8 c'8 bes2
      } bes4 \tempo "       rit." c'4 des'4 c'4 | bes2. r4
      \bar "|."
    } 

    \addlyrics {
      И  --  де,   и
      --  де,   и  --  де,   сам   Той   и -- де,   и  --  де,   и  --  де,
      сам   Той   и -- де,   и  --  де,   и  --  де,   сам   Той  и -- де   да
      по  --  ма  --  га   Той,   да   по  --  ма  --  га   Той,   да
      по  --  ма  --  га   Той.   Мощ  --  ни  --  ят,   сил  --  ни  --
      ят,   да   по  --  ма  --  га   Той, мощ  --  ни  --  ят,
      сил  --  ни  --  ят,   да   по  --  ма  --  га   Той,   да   по  --
      ма  --  га   Той,   да   по  --  ма  --  га   Той.   Ний   ще   ра
      --  бо  --  тим   със   лю  --  бов,   ще   ра  --  бо  --  тим
      със   Лю  --  бов,   да   по  --  ма  --  га   Той,   да   по  --
      ма  --  га    Той,   Мощ  --  ни  --  ят,   сил  --  ни  --
      ят,   да   по  --  ма  --  га   Той,   да   по  --  ма  --  га
      Той,   да   по  --  ма  --  га   Той,   да   по  --  ма  --  га
      Той.
    }
    \addlyrics {
      I --  de,  i --
      de,  i --  de,  sam Toy i -- de,  i --  de,  i --  de,  sam Toy i -- de,  i
      --  de,  i --  de,  sam Toy i -- de da po -- ma -- ga  Toy,  da po -- ma
      -- ga  Toy,  da po -- ma -- ga  Toy.  Most -- ni --  yat,  sil -- ni
      --  yat,  da po -- ma -- ga  Toy,  mosht -- ni --  yat,  sil -- ni
      --  yat,  da po -- ma -- ga  Toy,  da po -- ma -- ga  Toy,  da po --
      ma -- ga  Toy.  Niy shte ra -- bo -- tim sas lyu --  bov,  shte ra
      -- bo -- tim sas Lyu --  bov,  da po -- ma -- ga  Toy,  da po -- ma
      -- ga  Toy,  Mosht -- ni --  yat,  sil -- ni --  yat,  da po -- ma
      -- ga  Toy,  da po -- ma -- ga  Toy,  da po -- ma -- ga  Toy,  da po
      -- ma -- ga  Toy.
    }

    \header {
      title = \markup \column \normal-text \fontsize #2.5 {
        \center-align
        \line { Той иде! }
        \vspace #-0.6
        \center-align
        \line \fontsize #-3 { Toy ide! }
        \vspace #-0.8
        \center-align
        \line \fontsize #-3 { " " }
      }
    }

    \midi{}

  } % score

  \markup \halign #-16.1 \raise #2.8 \override #'(baseline-skip . 2) {
    \column  \right-align {
      \line  {
        \bold  { "D.C. al Fine" }
      }
      \line  { " " }
      \line  { " " }
      \line  { " " }
      \line  { " " }
      \line  { " " }
    }
  }

  % include foreign translation(s) of the song
  \include "lyrics_de/114_toy_ide.ly"

} % bookpart
