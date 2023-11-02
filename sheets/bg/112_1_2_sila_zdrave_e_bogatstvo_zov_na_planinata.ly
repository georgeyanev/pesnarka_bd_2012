\version "2.24.2"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref112_1
  \tocItem \markup "Сила, здраве е богатство"

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
      \if \should-print-page-number \fromproperty #'page:page-number-string
    }
    evenFooterMarkup = \markup
    \fill-line {
      \if \should-print-page-number \fromproperty #'page:page-number-string
      ""
    }

    left-margin = 1.5\cm
    right-margin = 1.5\cm
    top-margin = 1.6\cm
    bottom-margin = 1.2\cm
    ragged-bottom = ##t % do not spread the staves to fill the whole vertical space

    % change distance between staves
    system-system-spacing =
    #'((basic-distance . 11)
       (minimum-distance . 6)
       (padding . 1)
       (stretchability . 12))
  }
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
        { | g4 \tempo "         Fine" g2 | \break }
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

      | \time 3/4  d2 b'8. b16 | c4 e,4 fis8. d16 | \time 4/4  \stemUp b'2 ( \afterGrace  a2 { b16[ a] )} |
      \time 3/4  |
      g2. \bar "|."


    }



    \addlyrics {
      Си -- ла,
      здра -- ве е бо -- гат -- ство, Си -- ла, здра --
      ве е бо -- гат -- ство, Си -- ла, здра -- ве е
      бо -- гат -- ство, е "бо-" -- гат -- ство, е бо --
      гат -- ство, Си -- ла, здра -- ве е бо -- гат --
      ство. гат -- ство за жи -- во -- та на ду -- ша
      -- та, за жи -- во -- та на ду -- ша -- та.
    }

    \header {
      title = \titleFunc "Сила, здраве е богатство" "Sila, zdrave e bogatstvo"
    }

    \midi{}

  } % score

  \markup \dc-two "D.C. al Fine" "senza ripetizione"

  \label #'ref112_2
  \tocItem \markup "Зов на планината"

  \score {
    \include "include/score-layout.ily"


    \new Voice \relative c' {

      \clef treble
      \key es \major
      \time 6/4
      \tempoFunc "Moderato" 4 "88"
      \autoBeamOff
      \partial 2.
      bes4
      es4.  g,8 |
      bes2.  bes4  es4 g4 |
      f2.  f4  g4 as4 \break |
      bes2.  bes4  bes4 c4 | bes2.
      as4  g2 | f4  bes,4 f'1 | es2. \bar "|."
    }

    \addlyrics {
      И ска -- чам аз ка -- то пти -- чка от клон на клон, да се чу -- ди вся -- кой, кат ме ви -- ди.
    }

    \header {
      title = \titleFunc "Зов на планината" "Zov na planinata"
    }

    \midi{}

  } % score
 
  \markup \fontsize #bgCoupletFontSize {
    \hspace #12
    \override #`(baseline-skip . ,bgCoupletBaselineSkip)
    \column {
      \line {  2. Запявам аз  песен чудна за Слънцето, }
      \line {   "   "  бистри изворчета зашумяват.}
      \line {   "   " }
      \line {3. И виждам аз – връх изправен пред мен стои.}
      \line {   "   "  Той зове ме кротко там нагоре.}
    }

  } % markup





} % bookpart
