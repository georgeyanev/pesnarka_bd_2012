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
      \time 2/4
      \tempo \markup {
        % make tempo note smaller
        \concat {
          "Moderato" \normal-text { " (" }
          \teeny \general-align #Y #DOWN \note #"4" #0.8
          \normal-text { " = 72)" }
        }
      }
      \autoBeamOff
      c4 e8. f16 | g4 e | \time 3/4 a4 g8 f8 e4 | \time 2/4 g8 f e f | \break

      g2 | c4 b8 a8 | a4. (b8) | g4. b8 | d8 f, a g | \break


      \time 3/4 c2 c,8. e16 | g4 a g8. e16 | \time 2/4 g4. c8 | \break

      \time 3/4  b4  f4  a8.  b16 | \time 2/4  | c2 | c4  b8  a8 | a4. (  b8 ) \break |

      g4.  e8 |  g8  f8  e8  d8 | c2 
        | \bar ".|:" a'4  e4 \break |
        a4  b8 ( [  c8 ) ] | a2 | b4  c4 | a2 | d4  e4 \break |
        c4  a4 | b4  d8  c8 | b4  a4 ^\fermata

        \tempo \markup {
          % make tempo note smaller
          \concat {
            "Meno mosso " \normal-text { "(" }
            \teeny \general-align #Y #DOWN \note #"4" #0.8
            \normal-text { " = 63)" }
          }
        } | \bar ":|.|:" c4  b8  a8 \break |

        \time 3/4  | gis8 ( [  f8 ) ]  e4.  e8 | \time 2/4  | g!8  f8  e8  d8 | e2
        \bar ":|."

    }

    \addlyrics {
      Мо -- га да ка -- жа,

      че Слън -- "-це" -- то у -- тре ще из -- грей

      и на зе -- мя -- та ли -- це -- то ще о -- грей.

      То -- пли -- на то ще вне -- се

      за всич -- ко, що ра -- сте.

      Грей, мощ -- но слън -- це

      да у -- чим ний до -- бре.

      Всич -- ко ра  -- зум  -- но ще

      ста  -- не и на ра  -- бо  -- та ще

      се хва  -- не. Грей, мощ  -- но слън

      -- це, да у  -- чим ний до  --
      бре!
    }
    \addlyrics {     Mo -- ga da ka -- zha,

      che Slan -- tse -- to u -- tre shte iz -- grey

      i na ze -- mya -- ta li -- tse -- to shte o -- grey.

      To -- pli -- na to shte vne -- se

      za vsich -- ko, shto ra -- ste.

      Grey, mosht -- no slan -- tse

      da u -- chim niy do -- bre.

      Vsich -- ko ra  -- zum  -- no shte

      sta  -- ne i na ra  -- bo  -- ta shte

      se hva  -- ne. Grey, mosht  -- no slan

      -- tse, da u  -- chim niy do  --
      bre!
    }

    \header {
      title = \markup \column \normal-text \fontsize #2.5 {
        \center-align
        \line { Мога да кажа}
        \vspace #-0.6
        \center-align
        \line \fontsize #-3 { Moga da kazha}
        \vspace #-0.8
        \center-align
        \line \fontsize #-3 { " " }
      }
    }

    \midi{}

  } % score



  % include foreign translation(s) of the song
 \include "lyrics_de/108_az_moga_da_kazha_lyrics_de.ly"

} % bookpart
