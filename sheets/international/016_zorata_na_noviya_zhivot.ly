\version "2.24.4"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref016
  \tocItem \markup "Зората на новия живот – Zorata na novija život"
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
      c'8 |e'4 g'8|c''4 g'8 |a'4 g'8 |c''4.| g'4. ~ |  g'4 g'8 |
      c''4 c''8| \break \once \autoBeamOn c''8 ([  b'8  ])  \noBeam  c''8 |d''4 b'8  |c''4. ~ | c''4  a'8| a'4 a'8|
      d''4  c''8|  b'4 a'8| \break a'4. | g'4. ~ | g'4  g'8 | a'4 g'8 | g'4 f'8 |
      e'4 d'8 | c'4. ~ | c'4.  |   \bar "||"
      \tempoFunc "Più mosso" 8 "176"
      g'8  fis'8 g'8 | \break a'4 g'8 | g'4 g'8 | c''4. ~ |
      c''4.  |   c''8 b'8 c''8| d''4 c''8 |  \break b'4  b'8 | b'4. ~ | b'4   a'8| b'4 a'8 |
      g'4 fis'8 | g'4. ~ | g'4.  |  a'8 g'8 f'8 | \break f'4 f'8 | e'4 f'8 | g'4. ~ |
      g'4  g'8 | a'4 g'8 | g'4 fis'8 | g'4. ~ | g'4. | \break d'8 e'8 f'?8| f'4 f'8 |
      e'4 f'8 | g'4. ~ |g'4  e'8 | g'4 f'8 | e'4 d'8 | c'4. ~ | c' 4 s8 | \bar "|."
    }

    \addlyrics {
      \set stanza = "1." Зо -- ра се чуд -- на за -- зо -- ря -- ва, __ зо --
      ра на све -- тъл нов жи -- вот; __ с~ве -- ли -- ко --
      ле -- пи -- е о -- гря -- ва __  по -- спре -- ли -- я се
      наш ки -- вот. __  В~но -- ви -- я све -- тъл тоз жи -- вот, __
      в~но -- ви -- я све -- тъл тоз жи -- вот, __  жи -- вот на
      Лю -- бов -- та, __   в~но -- ви -- я све -- тъл тоз жи -- вот, __
      жи -- вот на бла -- гост -- та, __  в~но -- ви -- я све -- тъл
      тоз жи -- вот, __  жи -- вот на ра -- дост -- та. __
    }

    \addlyrics {
      \set stanza = "1." Zo -- ra se čud -- na za -- zo -- rja -- va, __ zo --
      ra na sve -- tăl nov ži -- vot; __ s~ve -- li -- ko --
      le -- pi -- e o -- grja -- va __  po -- spre -- li -- ja se
      naš ki -- vot. __  V~no -- vi -- ja sve -- tăl toz ži -- vot, __
      v~no -- vi -- ja sve -- tăl toz ži -- vot, __  ži -- vot na
      Lju -- bov -- ta, __   v~no -- vi -- ja sve -- tăl toz ži -- vot, __
      ži -- vot na bla -- gost -- ta, __  v~no -- vi -- ja sve -- tăl
      toz ži -- vot, __  ži -- vot na ra -- dost -- ta. __
    }
    \addlyrics {
      \repeat unfold 32 { \skip 2 } (*жи -- вот)}
      \addlyrics {
        \repeat unfold 32 { \skip 2 } (*ži -- vot)}

        \header {
          title = \titleFunc "Зората на новия живот" "Zorata na novija život"
        }

        \midi{}
      }

      \markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip) {
        \fill-line {
          \hspace #0.1
          \column {
            \vspace #1
            \line {
              \bold "2."
              \column {
                "И птички въздуха изпълнят"
                "с възторг и сладки песни в хор,"
                "хармонията да допълнят"
                "в големия небесен двор."
              }
            }
          }
          \hspace #0.1
          % adds horizontal spacing between columns
          \column {
            \vspace #1
            \line {
              \bold "2."
              \column {
                "I ptički văzduha izpălnjat"
                "s văztorg i sladki pesni v hor,"
                "harmonijata da dopălnjat"
                "v golemija nebesen dvor."
              }
            }
            % adds vertical spacing between verses
          }\hspace #0.1
        }
      }
      \pageBreak

      \markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip) {
        \fill-line {
          \hspace #0.1
          \column {
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
          \hspace #0.1
          % adds horizontal spacing between columns
          \column {
            % adds vertical spacing between verses
            \vspace #1
            \line{ \italic"    Припев:"}
            \line {
              "   "
              \column {
                "V novija svetăl toz život, (2)"
                "život na Ljubovta,"
                "v novija svetăl toz život,"
                "život na blagostta,"
                "v novija svetăl toz život,"
                "život na radostta."
              }
            }
            \vspace #1
            \line {
              \bold "3."
              \column {
                "Trepti zorata lekokrila"
                "i budi našite duši;"
                "kato ljubjašta majka mila"
                "podkanva vsekigo: „Stani!“."
              }
            }
            \vspace #1
            \line {
              \bold " "
              \column {
                \italic "  Pripev ..."
              }
            }
            \vspace #0.5
            \line {
              \bold "4."
              \column {
                "Lăči ot ljubovta ni vlivat"
                "v gărdite živa toplina,"
                "săs sladka vjara ni povdigat"
                "văv krepost i videlina."
              }
            }
            \vspace #1
            \line {
              \bold " "
              \column {
                \italic"  Pripev ..."
              }
            }
            \vspace #0.5
            \line {
              \bold "5."
              \column {
                "O, tez lăči ot Boga idat,"
                "te pălnjat našite sărca"
                "i šepnat sladko kak Toj vika:"
                "„Elate, Moite deca!“."
              }
            }
          }\hspace #0.1
        }
      }

      \markup \vspace #2
      % include foreign translation(s) of the song
      \include "../../lyrics/de/016_zorata_na_noviya_zhivot_lyrics_de.ly"

    } % bookpart
