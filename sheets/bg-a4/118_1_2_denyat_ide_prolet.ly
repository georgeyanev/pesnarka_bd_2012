\version "2.24.4"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref118_1
  \tocItem \markup "Денят иде"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute {
      \clef treble
      \key c \minor
      \time 2/4
      \tempoFunc "Andante" 4 "60"
      \autoBeamOff

      c'4 es'4 | d'8  c'8  \tuplet 3/2 { b8\=1([ \slurDashed c'8\=2(d'8\=2)\=1)] } \slurSolid | g2 | c'4 es'4 | g'4 as'8. as'16 | g'2 | \break

      \bar ".|:-|"    c''4 bes' | as'8 g'8 f' [(g') ] | es'2 | g'4 f' | es'4 d'8. es'16| c'2 \bar ":|." \break
    }

    \addlyrics {
      \set stanza = "1. " Мо -- га аз да ка -- жа, че де -- нят и -- де веч.

      слън -- це ще из -- гре -- е, да пос -- тъ -- пим доб -- ре.
    }

    \addlyrics {
      " " " " " " " 3. [...]" зо-ра -- та
    }

    \header {
      title = \titleFunc #'ref_desc_8 "Денят иде" " Denjat ide"
    }

    \midi{}

  } % score

  \markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip){
    \fill-line {
      \column {
        \line {
          \bold "2."
          \column {
            "Мога аз да кажа, че обича ме Бог."
            "Слънчевите лъчи кротко шепнат това. (2)"
          }
        }
        \vspace #1
        \line {
          \bold "3."
          \column {
            "Диша свежест зората, пробужда се денят."
            "Радост и надежда пълнят сърцата ни. (2)"
          }
        }
      }
    }
  }



  \markup \vspace #5

  \label #'ref118_2
  \tocItem \markup "Пролет"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute{
      \clef treble
      \key g \minor
      \time 4/4
      \tempoFunc "Andantino" 4 "69"
      \autoBeamOff
      \partial 4
      g'8. a'16 | bes'4. a'8 g'8. fis'16 g'8 a'8 | d'2. es'8. d'16 | \break

      c'4. d'8 bes8. a16 bes8 c'8  d'2. g'8. a'16 | bes'4. c''8 d''8 c''8 bes'8 a'8 |\break |

      g'2. g'8. a'16 | bes'4. a'8 g'8 fis'8 g'8 a'8 | g'2. \bar "|."
    }

    \addlyrics {
      Слу  --  шай  --
      те   гла  --  са   на   пе  --  сен  --  та,   що   раз  --  на  --
      ся   ве  --  че   про  --  лет  --  та.   Дар   ве  --  лик   е
      за   жи  --  во  --  та   тя,   дар   ве  --  лик   е   за   жи  --
      во  -- та тя.
    }

    \header {
      title = \titleFunc #'ref_desc_11 "Пролет" "Prolet"
    }

    \midi{}

  } % score

  \markup \dc-one "D.C."

  % \markup \fontsize #bgCoupletFontSize {
  %   \hspace #18
  %   \override #`(baseline-skip . ,bgCoupletBaselineSkip)
  %   \column {
  %     \line { 2. Красота, ухание се лей,  }
  %     \line {   "   "  изобилно блика радостта,}
  %     \line {   "   " Слушайте и пейте в пролетта, }
  %     \line {   "   " слушайте и пейте в пролетта. }
  %   }

  % } % markup


} % bookpart

