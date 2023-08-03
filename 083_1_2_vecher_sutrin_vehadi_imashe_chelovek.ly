\version "2.24.1"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref083_1
  \tocItem \markup "Вехади – Vehadi"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute {
      \clef treble
      \key d \minor
      \tempoFunc "Addagio, ad libitum" 4 "56"
      \override Staff.BarLine.gap = 0.5
      \autoBeamOff
      \omit Score.TimeSignature
      \cadenzaOn % allows custom bar lines


      \repeat volta 2 {
        \slurDown a'4^\p bes'8 [ ( a'] gis' [a'] bes'2 ) \slurNeutral a' \bar "!"  \breathe  d''4^\mp  e''8 ( [d''] cis'' [d''] bes' [a'] c''16 [bes' a' gis'!] ) a'2 \bar "!" \breathe \break |

        \time 10/4 g'?8 ([ f'] e' [f'] g'4 a' ) f'4. ( e'8 g'16 [f' e' f'] ) d'2
        \override BreathingSign.text = \markup {
          \musicglyph "scripts.caesura.straight"
        }
        \breathe
        a4^\pp \bar "!" \break |


        bes2 a2 a4 \bar "!"  bes2 a a4  \bar "!"  bes2 a r4
      } \break
    }

    \addlyrics {
      Ве -- ха -- ди, Ве -- ха -- ди, Ве -- ха -- ди,
      Ве -- ха -- ди, Ве -- ха -- ди, Ве -- ха -- ди.
    }
     \addlyrics {
      Ve -- ha -- di, Ve -- ha -- di, Ve -- ha -- di,
      Ve -- ha -- di, Ve -- ha -- di, Ve -- ha -- di.
    }
      \header {
        title = \titleFunc "Вехади" "Vehadi"
      }

      \midi{}

    } % score
    %

    \include "include/bookpart-paper.ily"
      \label #'ref083_2
  \tocItem \markup "Вечер сутрин – Večer sutrin"
    \score {
      \include "include/score-layout.ily"

      \new Voice \absolute {
        \clef treble
        \key a \major
        \time 6/4
        \tempoFunc "Andante" 4 "66"
        \autoBeamOff

        a4 cis' e' a'2 gis'4 |  \time 5/4  b'4. fis'8 fis'4 e'2 | \time 6/4  fis'4 e' d' cis'2 b4 \break |

        \time 5/4  e'4. b8 b4 a2 | \bar ":|.|:" \time 8/8 \tempo  "      Più Mosso"

        e'4. fis'4 d'4. | e'4. fis'4 ~ fis'4. | e'4. fis'4 d'4. \break |

        e'4. fis'4 ~ fis'4. |e'4. fis'4 d'4. | cis'4. e'4 ~ e'4. | b4. ~ b4 ~ b4. | a4. ~ a4 ~ a4. | \bar ":|."


      }

      \addlyrics {
        Ве -- чер,
        су -- трин о -- ти -- де, дой -- де, ве -- чер,
        су -- трин о -- ти -- де, дой -- де. О -- ти --
        де, дой -- де, __ о -- ти -- де, дой -- де, __ о -- ти
        -- де, дой -- де, __ дой -- де. __}
        \addlyrics {
        Ve -- čer,
        su -- trin o -- ti -- de, doj -- de, ve -- čer,
        su -- trin o -- ti -- de, doj -- de. O -- ti --
        de, doj -- de, __ o -- ti -- de, doj -- de, __ o -- ti
        -- de, doj -- de, __ doj -- de. __}
          \header {
            title = \titleFunc "Вечер сутрин" "Večer sutrin"
          }

          \midi{}

        } % score

        \markup \dc-two "D.C." "con ripetizioni"

        \pageBreak

        % include foreign translation(s) of the song
        \include "lyrics_de/083_2_vecher_sutrin_lyrics_de.ly"


        \markup \empty-three
        \markup \empty-three
        \include "include/bookpart-paper.ily"
        \label #'ref083_3
        \tocItem \markup "Имаше человек  – Imaše čelovek"
        \score {
          \include "include/score-layout.ily"

          \new Voice \absolute {
            \clef treble
            \key c \minor
            \time 4/4
            \tempo "Andante"

            \autoBeamOff
            g'4  g' ( ~ g'8 \times 2/3  { fis'16 [g'16 as'] } g'8 [ fis'] ) | g'1 | f'4 es' d'8 c' es' d' \break |

            c'4  \times 2/3  { b8 ( [c' d'8] )  } c'2 | g'8 g' c''4 ( es'' d'' ) | \tupletUp c''4 \tuplet 3/2 { b'8 ([ c''] ) d''8 } c''2 \break \tupletNeutral |

            bes'4 as' g'4. g'8 | c''4 bes' as' as' | as'8 as' bes' c'' g'2 \break |

            as'4 bes' c''2 |  d''4 c'' bes' c'' | g'2. r4 |  \time 6/4  f'2 g'8 [( as' )] bes'4 c'' bes' \break |

            as'4 g' f' es' d'2 | \time 4/4  d'4 ( es' ) f' g' | bes'8 as' as' bes' g'2 \break |

            \time 6/4  g'4 c''8 d'' es''4 d'' c'' bes' | as'4 as'8 as' bes' c'' g'2 r4 \break |

            \time 4/4  bes'2 as'4 g' | f'4 es' d' es' | f'4 g' as' ( bes' ) | g'2. r4 \break |

            c''2 bes'4 as' | g'4 f' es' d' | \time 6/4  es'4 f' g' as' bes' c'' | \break

            \time 6/4  g'2 g'4 es''2 d''4 | c''4  \times 2/3  { b'8 ( [c'' d''8] ) } c''2.  es'8. f'16 \noBeam | \time 4/4  g'2 g'4 as' \break |

            f'4 f' f' es'8. f'16 | g'2 g'4 as' | \time 5/4  f'4 f' es'8. f'16 g'2 \break |

            \time 3/4  g'4 c'' bes' | \time 4/4  as'8. bes'16 g'2 g'4 | \time 5/4  es''8. es''16 d''4 c'' bes' as'8 g' \break |

            f'2 es'2. \breathe | \time 6/4  es'2 d'4 c' b c'8. c'16 | d'4 c'2 es'8. es'16 f'4 g' \break |

            \time 4/4  as'4 g' fis' g'8. g'16 \noBeam | as'4 g'2 r4 | g'4 c''2 b'4 | as'4 g' f' es' \break |

            d'4 es' d' c' | \times 2/3  {
              b4 ( c'4 d' )} c'2 \breathe | es'4 es'2 c'4 | d'4 es' c'2 \break |

              \time 3/4  f'4 as' g' | \time 5/4  fis'4 g' as' g'2 | g'4 c'' b' c'' d'' \break |

              \time 3/4  es''4 c''2 | \time 6/4  g'4 bes' as' g' f' es' | \time 6/4  d'4 ( es' ) c'1 | \bar "|."
            }

            \addlyrics {
              И -- ма --
              ше че -- ло -- век, про -- во -- ден от Бо --
              га, и -- ме -- то __ му И -- о -- ан. Той дой --
              де в~сви -- де -- тел -- ство да сви -- де -- "тел-"
              -- ству -- ва за -- ра -- ди ви -- де -- ли -- на
              -- та, за да __ по -- вяр -- ват всич -- ки чрез не
              -- го. Не __ бе той ви -- де -- ли -- на -- та, но
              да сви -- де -- тел -- ству -- ва за ви -- де --
              ли -- на -- та. Той бе -- ше ис -- тин -- на --
              та ви -- де -- ли -- на, ко -- я -- то о -- све
              -- тя -- ва все -- ки -- го че -- ло -- ве -- ка,
              що и -- де на све -- та. "В~све-" -- та бе и све
              -- тът чрез Не -- го ста -- на и све -- тът Го
              не "по-" -- зна. В~сво -- и -- те си "дой-" -- де, но
              Сво -- и -- те Му Го не при -- е -- ха. А ко
              -- и -- то Го при -- е -- ха, да -- де им власт
              да бъ -- дат ча -- да Бо -- жии, си -- реч, ко
              -- и -- то вяр -- ват в~Не -- го -- во -- то и --
              ме, ко -- и -- то не от кръв, ни -- то от по
              -- хот плът -- ска, ни -- то от по -- хот мъж --
              ка, но от Бо -- га се ро -- ди -- ха.}
             \addlyrics {
              I -- ma --
              še če -- lo -- vek, pro -- vo -- den ot Bo --
              ga, i -- me -- to __ mu I -- o -- an. Toj doj --
              de v~svi -- de -- tel -- stvo da svi -- de -- tel
              -- stvu -- va za -- ra -- di vi -- de -- li -- na
              -- ta, za da __ po -- vjar -- vat vsič -- ki črez ne
              -- go. Ne __ be toj vi -- de -- li -- na -- ta, no
              da svi -- de -- tel -- stvu -- va za vi -- de --
              li -- na -- ta. Toj be -- še is -- tin -- na --
              ta vi -- de -- li -- na, ko -- ja -- to o -- sve
              -- tja -- va vse -- ki -- go če -- lo -- ve -- ka,
              što i -- de na sve -- ta. "V~sve-" -- ta be i sve
              -- tăt črez Ne -- go sta -- na i sve -- tăt Go
              ne "po-" -- zna. V~svo -- i -- te si doj -- de, no
              Svo -- i -- te Mu Go ne pri -- e -- ha. A ko
              -- i -- to Go pri -- e -- ha, da -- de im vlast
              da bă -- dat ča -- da Bo -- žii, si -- reč, ko
              -- i -- to vjar -- vat v~Ne -- go -- vo -- to i --
              me, ko -- i -- to ne ot krăv, ni -- to ot po
              -- hot plăt -- ska, ni -- to ot po -- hot măž --
              ka, no ot Bo -- ga se ro -- di -- ha.}

                \header {
                  title = \titleFunc "Имаше человек" "Imaše čelovek"
                }

                \midi{}

              } % score

              \markup \empty-two

              % include foreign translation(s) of the song
              \include "lyrics_de/084_imashe_chelovek_lyrics_de.ly"

            } % bookpart
