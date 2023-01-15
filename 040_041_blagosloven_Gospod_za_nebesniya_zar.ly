\version "2.24.0"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
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
      \autoBeamOff

      c'4 f'8. g'16 a'4 d'' c'' a' c''2 | \bar "!" c''4 c'' c'' c''4. d''8 c''2 r4 | \bar "!" \break
      g'4 g'8. g'16 g'4 a' bes'2 bes' | \bar "!" bes'4 d'' d'' d'' c''4. bes'8 a'2 | \bar "!" \break
      g'4 g' g' g' g'4. a'8 bes'2 | \bar "!" a'4 a' a' a' a'4. bes'8 c''2 | \bar "!" \break
      d''4 d'' d'' d''8 ([f'']) \fermata e''4. d''8 c''2 | \bar "!" g'4 g' g' g'8 ([ bes' ]) \fermata a'4. g'8 f'2 | \bar "|."
    }
    \addlyrics {
      Бла -- го --
      сло- -- вен Гос -- под Бог наш на всич -- ки ве
      -- ко -- ве; бла -- го -- сло -- вен Ба -- ща наш
      на Свет -- ли -- те ду -- хо -- ве, на Свет --
      ли -- те ду -- хо -- ве, на Свет -- ли -- те ду
      -- хо -- ве, на Свет -- ли -- те ду -- хо -- ве,
      на Свет -- ли -- те ду -- хо -- ве.}
      \addlyrics {
        Bla -- go --
        slo -- ven Gos -- pod Bog nash na vsich -- ki ve
        -- ko -- ve; bla -- go -- slo -- ven Ba -- shta nash
        na Svet -- li -- te du -- ho -- ve, na Svet --
        li -- te du -- ho -- ve, na Svet -- li -- te du
        -- ho -- ve, na Svet -- li -- te du -- ho -- ve,
        na Svet -- li -- te du -- ho -- ve.
      }

      \header {
        title = \titleFunc "Благословен Господ" "Blagosloven Gospod"
      }

      \midi{}

    } % score

    \markup \dc-one "D.C."

    % include foreign translation(s) of the song
    \include "lyrics_de/040_blagosloven_Gospod_lyrics_de.ly"
    \markup \empty-two
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
        На -- пред,
        на -- пред за сла -- ва в~бой за Ца -- ря не --
        бес -- ни, Ца -- ря на Прав -- да, Мир и Лю --
        бов, Мир и Лю -- бов, Мир и Лю -- бов, Лю --
        бов, Лю -- бов. Сла -- ва, сла -- ва Теб по --
        до -- ба -- ва, Ти си цар на Прав -- да и Мир,
        Ти си цар на Прав -- да и Мир, Мир и Лю --
        бов, Мир и Лю -- бов, Мир и Лю -- бов, Мир и
        Лю -- бов, Лю -- бов, Лю -- бов.}
        \addlyrics {
          Na -- pred,
          na -- pred za sla -- va v~boy za TSa -- rya ne --
          bes -- ni, TSa -- rya na Prav -- da, Mir i Lyu --
          bov, Mir i Lyu -- bov, Mir i Lyu -- bov, Lyu --
          bov, Lyu -- bov. Sla -- va, sla -- va Teb po --
          do -- ba -- va, Ti si tsar na Prav -- da i Mir,
          Ti si tsar na Prav -- da i Mir, Mir i Lyu --
          bov, Mir i Lyu -- bov, Mir i Lyu -- bov, Mir i
          Lyu -- bov, Lyu -- bov, Lyu -- bov.}

          \header {
            title = \titleFunc "За Небесния цар" "Za Nebesniya tsar"
          }

          \midi{}

        } % score

        \include "lyrics_de/041_za_nebesnija_zar_lyrics_de.ly"

      } % bookpart
