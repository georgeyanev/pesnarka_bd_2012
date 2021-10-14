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
    %  ragged-last = ##t % do not spread last line to fill the whole space
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
      \key des \major
      \time 9/8
      \tempo \markup {
        % make tempo note smaller
        \concat {
          "Moderato " \normal-text { "(" }
          \teeny \general-align #Y #DOWN \note #"4" #0.8
          \normal-text { " = 69)" }
        }
      }
      \autoBeamOff
      bes8 ( [  des8 ) ]  c8  bes4. | % 2
      a4  bes8  c4. | % 3
      f2. | % 4
      \time 6/8
      f8  ges8  f8  es8  des8
      c8 \break | % 5
      es4.  c4. ~ | % 6
      c4.  es8 ( [  d8 ) ]  es8 | % 7
      f4.  bes,4. | % 8
      des4.  c4  bes8 | % 9
      \acciaccatura {  bes8 ( [  c8 ) ] }  bes2.
      \break |
      a2. | % 11
      des4.  des8  des8  des8 | % 12
      as'4.  ges4  f8 | % 13
      f4. ( f4 ) es8 | % 14
      es2. \bar "||"
      \break \repeat volta 2 \relative c' {
        | % 15
        \key as \major \time 9/8 | % 15

        f4  f8  f4.  c'4. | % 16

        \time 6/8 des4.  c4.( | % 17
        c4. ) c8 ( [ des8  c8 ) ]
        bes4.  as4. | \break% 18
        f2.
        \repeat volta 2 {
          | % 19
          c'4. ( c8 ) c8  c8 \break |
          f4. ~  f8  e8  f8 | % 21

          g4. ( ~  g8 [  f8
          des8 ) ] \break | % 22
          c4. ~  c4  c8 | % 23
          bes8 --  as8 --  bes8 --
          as4. | % 24
          f2.
        }
         \repeat volta 2 {
          | % 25
          \key f \major \time 6/8 | % 25

            a8  bes8  c8 f,4  f8 \break |  d'4 (   bes8 ) 
            | % 26
            g4.  ( | g4.  )

              e8 ( [  f8 ])  g8 
              | % 27

              c4.  f,4. |  a4.  g4  g8 | }  \alternative {
    {f2.
              
               | } {% 28
              \time 9/8 f2. e8 (f8) g8 | \time 6/8 c4. f,4. | a4. \fermata g4 g8 | a2.}
        
            }
          }
        }

        \addlyrics {
          Тъж -- на ми е ду -- ша -- та.
          Скръб и пе -- чал ме об -- зе --
          мат.  Сил -- на бу -- ря
          в~мен се пов --  ди -- га,
          но ни -- ко -- го не об -- ви -- ня
          -- вам аз. Бу -- ря -- та е бу -- ря,
          но   в~мен е Той. Бу --
          ря -- та мен  не раз -- би --
          ра,  но аз я раз -- би
          -- рам. Бу -- ря -- та ме раз --
          търс  -- ва за  Доб -- ро --
          то, що е във мен. мен за  Доб -- ро --
          то, що е във мен.}
          \addlyrics { Tazh -- na mi e du -- sha -- ta.
          Skrab i pe -- chal me ob -- ze --
          mat.  Sil -- na bu -- rya
          v~men se pov --  di -- ga,
          no ni -- ko -- go ne ob -- vi -- nya
          -- vam az. Bu -- rya -- ta e bu -- rya,
          no   v~men e Toy. Bu --
          rya -- ta men  ne raz -- bi --
          ra,  no az ya raz -- bi
          -- ram. Bu -- rya -- ta me raz --
          tars  -- va za  Dob -- ro --
          to, shto e vav men. men za  Dob -- ro --
          to, shto e vav men.}

          \header {
            title = \markup \column \normal-text \fontsize #2.5 {
              \center-align
              \line { Буря }
              \vspace #-0.6
              \center-align
              \line \fontsize #-3 { Burya }
              \vspace #-0.8
              \center-align
              \line \fontsize #-3 { " " }
            }
          }

          \midi{}

        } % score



        % include foreign translation(s) of the song
        \include "lyrics_de/120_burya_lyrics_de.ly"

      } % bookpart
