\version "2.24.4"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref016
  \tocItem \markup "Зората на новия живот"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute  {
      \clef treble
      \key c \major
      \time 3/8
      \tempoFunc "Moderato" 8 "160"
      \partial 8
      \autoBeamOff
      c'8 |e'4 g'8|c''4 g'8 |a'4 g'8 |c''4.| g'4. ~ |  g'4 g'8 |\break
      c''4 c''8| \once \autoBeamOn c''8 ([  b'8  ])  \noBeam  c''8 |d''4 b'8  |c''4. ~ | c''4  a'8| a'4 a'8| \break
      d''4  c''8| b'4 a'8| a'4. | g'4. ~ | g'4  g'8 | a'4 g'8 | g'4 f'8 | \break
      e'4 d'8| c'4. ~ | c'4.  | \bar "||"
      \tempoFunc "Più mosso" 8 "176"
      g'8  fis'8 g'8 | a'4 g'8 | g'4 g'8 | c''4. ~ | \break
      c''4.  | c''8 b'8 c''8| d''4 c''8 | b'4  b'8 | b'4. ~ | b'4   a'8| b'4 a'8 | \break
      g'4 fis'8 | g'4. ~ | g'4.  | a'8 g'8 f'?8 | f'4 f'8 | e'4 f'8 | g'4. ~ | \break
      g'4  g'8 | a'4 g'8 | g'4 fis'8 | g'4. ~ | g'4. | d'8 e'8 f'?8| f'4 f'8 | \break
      e'4 f'8 | g'4. ~ |g'4  e'8 | g'4 f'8 | e'4 d'8 | c'4. ~ | c' 4 s8 | \bar "|."
    }

    \addlyrics {
      \set stanza = "1. " Зо -- ра се чуд -- на за -- зо -- ря -- ва, __ зо --
      ра на све -- тъл нов жи -- вот; __ с~ве -- ли -- ко --
      ле -- пи -- е о -- гря -- ва __  по -- спре -- ли -- я се
      наш ки -- вот. __  В~но -- ви -- я све -- тъл тоз жи -- вот, __
      в~но -- ви -- я све -- тъл тоз жи -- вот, __  жи -- вот на
      Лю -- бов -- та, __   в~но -- ви -- я све -- тъл тоз жи -- вот, __
      жи -- вот на бла -- гост -- та, __  в~но -- ви -- я све -- тъл
      тоз жи -- вот, __  жи -- вот на ра -- дост -- та. __
    }
    \addlyrics {
      \repeat unfold 32 { \skip 2 } (*жи -- вот.)
    }

    \header {
      title = \titleFunc #'ref_desc_10 "Зората на новия живот" "Zorata na novija život"
    }

    \midi{}
  } % score

  \pageBreak

  \markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip) {
    \fill-line {
      \column {
        \line {
          \bold "2."
          \column {
            "И птички въздуха изпълнят"
            "с възторг и сладки песни в хор,"
            "хармонията да допълнят"
            "в големия небесен двор."
          }
        }
        \vspace #1
        \line{ \italic"    Припев:"}
        %\vspace #0.3
        \line {
          "   "
          \column {
            "В новия светъл тоз живот, (2)"
            "живот на Любовта,"
            "в новия светъл тоз живот,"
            "живот на благостта,"
            "в новия светъл тоз живот,"
            "живот на радостта."
          }
        }
        \vspace #1
        \line {
          \bold "3."
          \column {
            "Трепти зората лекокрила"
            "и буди нашите души;"
            "като любяща майка мила"
            "подканва всекиго: „Стани!“."
          }
        }
        \vspace #1
        \line {
          \bold " "
          \column {
            \italic "  Припев ..."
          }
        }
        \vspace #0.5
        \line {
          \bold "4."
          \column {
            "Лъчи от любовта ни вливат"
            "в гърдите жива топлина,"
            "със сладка вяра ни повдигат"
            "във крепост и виделина."
          }
        }
        \vspace #1
        \line {
          \bold " "
          \column {
            \italic"  Припев ..."
          }
        }
        \vspace #0.5
        \line {
          \bold "5."
          \column {
            "О, тез лъчи от Бога идат,"
            "те пълнят нашите сърца"
            "и шепнат сладко как Той вика:"
            "„Елате, Mоите деца!“."
          }
        }
      }
    }
  }

} % bookpart
