\version "2.24.4"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref112_1
  \tocItem \markup "Сила, здраве е богатство"

 \include "include/bookpart-paper.ily"

  \score {
    \include "include/score-layout.ily"

    \new Voice \relative c' {
      \clef treble
      \key g \major
      \time 3/4
      \tempoFunc "Moderato" 4 "92"
      \autoBeamOff

      \repeat volta 2 {
        d8. d16 e8 fis8 g8 a8 | b4 g2 | e8. e16 e8 e8 a8 g8 | \break



        fis4 d2 |  c'8. c16 c8 b8 d8 c8 | b4 g2 | b8. c16 d4 d4 | \break

        c8. b16 c4 a4 |    d,8. d16 e8 e8 fis8 d8
      } \alternative {
         
        { | g4  \override Score.MetronomeMark.outside-staff-priority = #99 \override Score.MetronomeMark.X-extent=#'(5.5 . 0) \tempo "         Fine" g2 | \break }
        {
          \time 4/4 g4 g2

          \override Score.MetronomeMark.outside-staff-priority = #99
          %\override Score.MetronomeMark.X-extent=#'(-4.5 . 0)
          \tempoFunc "Andante" 4 "60"

          e8. e16
        }
      }

      \bar "||" \time 3/4  a4 g4 fis8. e16


      \time 2/4  e4. ( fis8 ) \break

      | \time 3/4  d2 b'8. b16 | c4 e,4 fis8. d16 | \time 4/4 \stemUp b'2 ( \afterGrace a2 { b16[ a] )} |
      \time 3/4  |
      g2. \bar "|."


    }



    \addlyrics {
      Си -- ла,
      здра -- ве е бо -- гат -- ство, си -- ла, здра --
      ве е бо -- гат -- ство, си -- ла, здра -- ве е
      бо -- гат -- ство, е "бо-" -- гат -- ство, е бо --
      гат -- ство, си -- ла, здра -- ве е бо -- гат --
      ство. гат -- ство за жи -- во -- та на ду -- ша
      -- та, за жи -- во -- та на ду -- ша -- та.
    }

    \header {
      title = \titleFunc #'ref_desc_12 "Сила, здраве е богатство" "Sila, zdrave e bogatstvo"
    }

    \midi{}

  } % score

  \markup \dc-two "D.C. al Fine" "senza ripetizione"

  \markup \vspace #1

  \label #'ref112_2
  \tocItem \markup "Зов на планината"

  \score {
    \include "include/score-layout.ily"


    \new Voice \relative c' {

      \clef treble
      \key es \major
      \time 3/8
      \tempoFunc "Moderato" 8 "88"
      \autoBeamOff
      bes8
      es8.  g,16 |
      bes4. |  bes8  es8. g16 |
      f4.|  f8  g8 as8 \break |
      bes4. | bes8  bes8 c8 | bes4
      as8 |  g4. | f8 bes,8 f'8 | es4. \bar "|."
    }

    \addlyrics {
      "1. И" ска -- чам аз ка -- то пти -- чка от клон на клон, да се чу -- ди вся -- кой, кат ме ви -- ди.
    }

    \header {
      title = \titleFunc #'ref_desc_9 "Зов на планината" "Zov na planinata"
    }

    \midi{}

  } % score

  \markup \abs-fontsize #11 {
    \hspace #12
    \override #`(baseline-skip . ,bgCoupletBaselineSkip)
    \column {
      \line {  2. Запявам аз  песен чудна за Слънцето, }
      \line {   "   "  бистри изворчета зашумяват.}
      \line {   "   " }
      \line {3. И виждам аз – връх изправен пред мен стои.}
      \line {   "   "  Той зове ме кротко там, нагоре.}
    }

  } % markup





} % bookpart
