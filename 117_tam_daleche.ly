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
      \time 4/4
      \tempo \markup {
        % make tempo note smaller
        \concat {
          "Moderato " \normal-text { "(" }
          \teeny \general-align #Y #DOWN \note #"4" #0.8
          \normal-text { " = 69)" }
        }
      }
      \autoBeamOff
      a'4. b'8 |  c''8 b'8 a'8 gis'8 | a'4 b'4 | e'2 |  f'4 e'8 d'8 \break |


      c'8. b16 c'8 d'8 | e'2 | b4. d'8 | c'4 b4 | e'8 ( d'8 ) c'8 b8 \break |


      a4 gis4 | a2 \repeat volta 2 {
        | \tempo "Allegretto" 4=92 | e'4 d'8. f'16 | e'4. d'8 |c'8. b16 c'8. d'16 \break |

        e'2 | e'4 b8. d'16 | c'2 | e'4 d'8. f'16 | e'4. a'8 | d'4. g'8 \break |

        f'4 e'8 d'8 | c'4. b8 | a4. e'8 | a4. d'8 | c'4. b8 \break |

        a4 a8. a16 | a2
      } | \time 5/4  \repeat volta 2 {
        e'8 e'8 a'8 a'8 a'8. g'16 f'4. e'8 \break |

        d'8 d'8 g'8 g'8 g'8. f'16 e'2 | \time 2/4  b8 c'8 e'8 d'8 | c'4. b8 \break |

        a4 a8. a16 | a2 | b8 c'8 e'8 d'8 | c'4. b8 | a4 a8. a16 | a2
      }
      }

      \addlyrics { Там   да  --  ле
  --  че   зна  --  я   чу  --  ден   край   Слън  --  це,
   цве  --  тя   и   пло  --  до  --  ве,   бли  --  ка   из  --
   вор,   рай  --  ска   гра  --  ди  --  на   е.   Ти   да   ми   ка
  --  жеш   туй,   ко  --  е  --  то   знайш  --  за   ро  --  ден
   край,   рай  --  ска   зе  --  мя,   где   рос  --  на   виш  --
   на   цъф  --  ти   и   зрей.   За   тоз   кра  --  сив   край
   път   по  --  ка  --  жи.   Къ  --  сай   са  --  мо   плод   у  --
   зрял,   но   без   да   чу  --  пиш   све  --  жи   клон.   И  --
   зо  --  бил  --  но   плод   си   ти   на  --  бе  --  ри   и   на
   всич  --  ки   с_Ра  --  дост   го   за  --  не  --  си. }
      \addlyrics {  Tam da -- le --
  che zna -- ya chu -- den kray Slan --  tse,  tsve -- tya i plo -- do
  --  ve,  bli -- ka iz --  vor,  ray -- ska gra -- di -- na  e.  Ti
  da mi ka -- zhesh  tuy,  ko -- e -- to znaysh -- za ro -- den
   kray,  ray -- ska ze --  mya,  gde ros -- na vish -- na tsaf -- ti
  i  zrey.  Za toz kra -- siv kray pat po -- ka --  zhi.  Ka -- say sa
  -- mo plod u --  zryal,  no bez da chu -- pish sve -- zhi  klon.  I
  -- zo -- bil -- no plod si ti na -- be -- ri i na vsich -- ki  s_Ra
  -- dost go za -- ne --  si. }

      \header {
        title = \markup \column \normal-text \fontsize #2.5 {
          \center-align
          \line { Там далече }
          \vspace #-0.6
          \center-align
          \line \fontsize #-3 { Tam daleche }
          \vspace #-0.8
          \center-align
          \line \fontsize #-3 { " " }
        }
      }

      \midi{}

    } % score

    \pageBreak


    % include foreign translation(s) of the song
    \include "lyrics_de/117_tam_daleche_lyrics_de.ly"

  } % bookpart
