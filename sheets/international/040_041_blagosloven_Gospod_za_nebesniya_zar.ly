\version "2.24.3"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref040
  \tocItem \markup "Благословен Господ – Blagosloven Gospod"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute {
      \clef treble
      \omit Score.TimeSignature
      \cadenzaOn % allows custom bar lines
      \key f \major
      \tempoFunc "Andante" 4 "56/58"
      \autoBeamOff
      c'4 f'8. g'16 a'4 d'' c'' a' c''2 \bar"!" c''4 c'' c'' c''4. d''8 c''2 \bar"!" \break
      g'4 g'4. g'8 g'4 a' bes'2 bes' \bar"!" bes'4 d'' d'' d'' c''4. bes'8 a'2 \bar"!" \break
      g'4 g' g' g' g'4. a'8 bes'2 \bar"!" a'4 a' a' a' a'4. bes'8 c''2 \bar"!" \break
      d''4 d'' d'' d''8 ([f'']) \fermata e''4. d''8 c''2 \bar"!" g'4 g' g' g'8 ([ bes' ]) \fermata a'4. g'8 f'2 \bar "|."
    }
    \addlyrics {
      Бла -- гос --
      "ло-" -- вен Гос -- под Бог наш на всич -- ки ве
      -- ко -- ве; бла -- гос -- "ло-" -- вен Ба -- ща наш
      на Свет -- ли -- те ду -- хо -- ве, на Свет --
      ли -- те ду -- хо -- ве, на Свет -- ли -- те ду
      -- хо -- ве, на Свет -- ли -- те __ ду -- хо -- ве,
      на Свет -- ли -- те __ ду -- хо -- ве.}


      \addlyrics {
        Bla -- gos --
        "lo-" -- ven Gos -- pod Bog naš na vsič -- ki ve
        -- ko -- ve; bla -- gos -- "lo-" -- ven Ba -- šta naš
        na Svet -- li -- te du -- ho -- ve, na Svet --
        li -- te du -- ho -- ve, na Svet -- li -- te du
        -- ho -- ve, na Svet -- li -- te __ du -- ho -- ve,
        na Svet -- li -- te __ du -- ho -- ve.}

        \header {
          title = \titleFunc "Благословен Господ" "Blagosloven Gospod"
        }

        \midi{}

      } % score

      \markup \dc-one "D.C."

      % include foreign translation(s) of the song
      \include "../../lyrics/de/040_blagosloven_Gospod_lyrics_de.ly"
      \markup \empty-two

      \label #'ref041
      \tocItem \markup "За Небесния Цар – Za Nebesnija Car"

      \include "include/bookpart-paper.ily"
      \score {
        \include "include/score-layout.ily"

        \new Voice \absolute  {
          \clef treble
          \key c \major
          \time 3/4
          \tempoFunc "Tempo di marcia " 4 "96"
          \autoBeamOff
          \partial 8


          e'8 | g'4. fis'8 g' a ' | g'4 e'2 | e'4 e'8. e'16 e'8 e' | \break

          g'4 f'2 | \time 4/4  f'4 f'8 f' d''4 c'' | b'4 a'8 b' c''2 \break |

          g'4 f'8 e' a'2 | d'4 e'8 f' g'4. e'8 | g'4 f' e'2 \break |

          e'8 f' g'4 g'2 | a'4 a'8. a'16 a'4 a' | d'8 e' f'4 f'2 \break |

          b'8 ([ d'' ]) a' b' c''2 | b'8 a' g' f' e'4 d'8 e' \break |

          \time 2/4  f'2 |  \time 4/4  b'4 a'8 b' c''2 |  a'4 b'8 c'' d''2 \break |

          c''4 b'8 a' e'2 | d'4 e'8 f' g'4. e'8 |  g'4 f' e'4. \bar "|."
        }

        \addlyrics {
          Нап -- ред,
          нап -- ред за сла -- ва в~бой за Ца -- ря не --
          бес -- ни, Ца -- ря на прав -- да, мир и лю --
          бов, мир и лю -- бов, мир и лю -- бов, лю --
          бов, лю -- бов. Сла -- ва, сла -- ва Теб по --
          до -- ба -- ва, Ти си Цар на прав -- да и мир,
          Ти си Цар на прав -- да и мир, мир и лю --
          бов, мир и лю -- бов, мир и лю -- бов, мир и
          лю -- бов, лю -- бов, лю -- бов.}
          \addlyrics {
            Nap -- red,
            nap -- red za sla -- va v~boj za Ca -- rja ne --
            bes -- ni, Ca -- rja na prav -- da, mir i lju --
            bov, mir i lju -- bov, mir i lju -- bov, lju --
            bov, lju -- bov. Sla -- va, sla -- va Teb po --
            do -- ba -- va, Ti si Car na prav -- da i mir,
            Ti si Car na prav -- da i mir, mir i lju --
            bov, mir i lju -- bov, mir i lju -- bov, mir i
            lju -- bov, lju -- bov, lju -- bov.}

            \header {
              title = \titleFunc "За Небесния Цар" "Za Nebesnija Car"
            }

            \midi{}

          } % score

          \markup \empty-two

          \include "../../lyrics/de/041_za_nebesnija_zar_lyrics_de.ly"

        } % bookpart
