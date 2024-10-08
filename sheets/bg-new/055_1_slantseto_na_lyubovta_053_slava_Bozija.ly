\version "2.24.4"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref055_1
  \tocItem \markup "Слънцето на Любовта"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute  {
      \clef treble
      \key f \major
      \time 2/4
      \tempoFunc "Moderato" 4 "88"
      \autoBeamOff
      a'4 f'8 a' | g'4 e'8 g' | f'2 | bes'4 g'8 bes' \break | a'4 f'8 a' | g'2  |
      c''4 c'' | d''4. c''8 | bes'8 a' g'4 \break | bes'4 bes'  | c''4. bes'8 | a'8 g' f'4  |
      c'4 c' | a'4. g'8 | \break a'8 g' f'4 |   d'4 d' | bes'4. a'8 | bes'8 a' g'4 | \break
      c''4 c'' | d''4. c''8 |  bes'8 a' g'4 | \break c'4 c' | a'4. g'8 | a'4 g' | f'2 |\break \bar "|."
    }

    \addlyrics {
      Слън -- це -- то на Лю -- бов -- та из -- гря -- ва веч във све -- та.
      Вре -- дом пра -- ща свет -- ли -- на и раз -- на -- ся топ -- ли -- на.
      Ний сме слън -- че -- ви лъ -- чи, но -- сим но -- ви -- я жи -- вот.
      Ний сме слън -- че -- ви лъ -- чи, но -- сим но -- ви -- я жи -- вот.
    }

    \header {
      title = \titleFunc #'ref_desc_3 "Слънцето на Любовта" "Slănceto na Ljubovta"
    }

    \midi{}

  } % score

  \markup \dc-one "D.C."

  \label #'ref053
  \tocItem \markup "Слава Божия"
  \include "include/bookpart-paper.ily"
  \score {
    \layout {
      indent = 0.0\cm % remove first line indentation
      ragged-last = ##f % do spread last line to fill the whole space
      \override Staff.BarLine.thick-thickness = #4 %make the end and repeat bars thiner
      \override Score.VoltaBracket.font-size = #-1.7 % make the repeat number fontsize smaller


      \context {
        \Score
        \omit BarNumber %remove bar numbers
        \override KeySignature.X-offset = #-1.2 % decrease keysigniture offset
        \override TimeSignature.X-offset = #-1.8 % decrease time signiture offset
        \override MetronomeMark.font-size = #1.5 % increase the tempo fontsize
        \override TupletNumber.font-size = #0.4 % increase the triol number

      } % context

      \context {
        % change staff size
        \Staff
        fontSize = #+0 % affects notes size only
        \override StaffSymbol.staff-space = #(magstep -3)
        \override StaffSymbol.thickness = #0.5
        \override BarLine.hair-thickness = #1
        %\override StaffSymbol.ledger-line-thickness = #'(0 . 0)
      }

      \context {
        % adjust space between staff and lyrics and between the two lyric lines
        \Lyrics
        \override VerticalAxisGroup.nonstaff-relatedstaff-spacing = #'((padding . 1))
        \override VerticalAxisGroup.nonstaff-nonstaff-spacing = #'((minimum-distance . 2))
        includeGraceNotes = ##t
      }
    } % layout

    \new Voice \absolute  {
      \clef treble
      \key b \minor
      \time 4/4
      \tempoFunc "Andantino" 4 "72"
      \autoBeamOff

      d'8. cis'16 cis'4 b2 | fis'8. g'16 g'4 fis'2 | fis'8. fis'16 \tupletUp \tuplet 3/2 {  d''8 cis'' b'8 } ais'2 | \break
      \times 2/3  { ais'8 b' cis''8 } cis''4 b'2 | cis''8 [( d'' e'' d'' cis'' b' )] ais'4 | b'8 [( cis'' )] b'2. \bar "|."
    }

    \addlyrics {
      Не на ме -- не, не на ме -- не, но на И -- ме -- то Си
      дай, Бо -- же, сла -- ва, сла -- ва, сла -- ва!
    }

    \header {
      title = \titleFunc #'ref_desc_3 "Слава Божия" "Slava Božija"
    }

    \midi{}

  } % score


} % bookpart
