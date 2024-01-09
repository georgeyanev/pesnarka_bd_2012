\version "2.24.3"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref170_1
  \tocItem \markup "Вяра светла I – Vjara svetla I "
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute {
      \clef treble
      \key bes \major
      \time 3/4
      \tempoFunc "Andante" 4 "66"
      \autoBeamOff
      \partial 4
      bes8  d'8 |
      \repeat volta 2 {
        f'4  % 2
        f'2 | % 3
        \time 2/4  % 3
        g'4.  f'8 | \time 3/4 es'8 ( [  f'8 ) ] % 4
        d'2 | % 5
        \time 3/4  | \break % 5
        bes'4.  a'8 bes'8  g'8
        | % 6
        \time 2/4  | % 6
        f'2 | % 7
        \time 3/4  | % 7
        c''4. bes'8  a'8  g'8 |  \break % 8
        a'2 f'8  f'8 |  \time 2/4 a'4.  g'8 |
      }
      \alternative {
        {
          \grace {  f'16 ( [  g'16 ] }  f'4. ) (
          es'8 ) | % 11
          \time 3/4 d'2  bes8 d'8
        }
        { \time 2/4 f'4 (es') | \time 3/4 d'2  }
      }

      \bar "|."
    }

    \addlyrics {
      Вя -- ра свет -- ла, вя -- ра сил
      -- на! Тя кре -- пи Ду -- ха, тя
      кре -- пи Ду -- ха, що Жи -- во --
      та раж -- да. "Вя-" -- ра раж -- да.}
      \addlyrics {
        Vja -- ra svet -- la, vja -- ra sil
        -- na! Tja kre -- pi Du -- ha, tja
        kre -- pi Du -- ha, što Ži -- vo --
        ta raž -- da. "Vja-" -- ra raž -- da.}

        \header {
          title = \titleFunc "Вяра светла I" "Vjara svetla I"
        }

        \midi{}

      } % score



      % include foreign translation(s) of the song
      \include "../../lyrics/de/170_1_vyara_svetla_lyrics_de.ly"

      \markup \empty-two

      \label #'ref170_2
      \tocItem \markup "Вяра светла II – Vjara svetla II "

      \include "include/bookpart-paper.ily"
      \score {
        \include "include/score-layout.ily"

        \new Voice \absolute {
          \clef treble
          \key bes \major
          \time 2/4
          \tempoFunc "Moderato" 4 "72"
          \autoBeamOff
          bes4 (  d'4 )  f'2 | % 2
          g'8 ( [  a'8  bes'8  g'8 ) ]  f'2
          | % 3
          g'4. (  a'8 )  bes'2 | % 4
          d''8 ( [  c''8  bes'8  c''8 ) ]
          c''2 \break | % 5
          es''2  d''4  c''4 | % 6
          \time 6/4  | % 6
          bes'4  d''4  c''16 ( [  d''16 ]
          c''4. )  bes'2 | % 7
          \time 4/4  | % 7
          g'4.  a'8  bes'4  c''8.
          bes'16 \break | % 8
          \time 3/4  | % 8
          a'8 ( [  bes'8 ) ]  g'2 | % 9
          \time 4/4  | % 9
          bes'4  a'4  g'4  f'4 |
          c''4 (  bes'8 [  a'8 ) ]  bes'2 | % 11
          \time 3/4  | % 11
          bes'8 ( [  c''8 ])   d''4  es''4
          \break | % 12
          \times 2/3  {
            d''8 ( [  es''8  d''8 ) ]
          }
          c''4.  g'8 | % 13
          \time 4/4  | % 13
          c''4.  bes'8  a'4  g'4 | % 14
          f'4 (  d''2 )  c''4 | % 15
          bes'2. r4 \break
          \bar ".|:-||" 
          
            | % 16
            \tempoFunc "Poco più mosso" 4 "92"

            f''4.  d''8  es''4  c''4 | % 17
            d''4.  bes'8  c''4  a'4 \break | % 18
            bes'8  bes'8  c''8  c''8
            d''2 | % 19
            f''4.  es''8  d''2 |
            c''2  bes'2
         \bar ":|."
        }

        \addlyrics {
          Вя -- ра свет --   ла,
          вя -- ра сил --   на!
          Тя во -- ди нас към Бо --
          га, бла -- го -- то на Жи -- во
          -- та, Лю -- бов -- та на Бо --
          га, где  Мир вла -- де --
          е и Ис -- ти -- на -- та веч
          -- но грей. Вя -- ра свет -- ла,
          вя -- ра сил -- на! Тя кре -- пи
          Ду -- ха, що Жи -- вот но -- си.}
          \addlyrics {
            Vja -- ra svet --   la,
            vja -- ra sil --   na!
            Tja vo -- di nas kăm Bo --
            ga, bla -- go -- to na Ži -- vo
            -- ta, Lju -- bov -- ta na Bo --
            ga, gde  Mir vla -- de --
            e i Is -- ti -- na -- ta več
            -- no grej. Vja -- ra svet -- la,
            vja -- ra sil -- na! Tja kre -- pi
            Du -- ha, što Ži -- vot no -- si.}

            \header {
              title = \titleFunc "Вяра светла II " "Vjara svetla II "
            }

            \midi{}

          } % score



          % include foreign translation(s) of the song
          \include "../../lyrics/de/170_2_vyra_svetla_II_lyrics_de.ly"

          \label #'ref170_3
          \tocItem \markup "Вяра светла III – Vjara svetla III "

          \include "include/bookpart-paper.ily"
          \score {
            \include "include/score-layout.ily"

            \new Voice \absolute {
              \clef treble
              \key d \major
              \time 3/4
              \tempoFunc "Moderato" 4 "72"
               \override Staff.BarLine.gap = 0.5
              \autoBeamOff
              \partial 4
              d'8  fis'8 | \repeat volta 2 {
                a'4  % 2
                a'2 | % 3
                \time 2/4 b'4.  a'8 | \time 3/4 g'8 ( [  a'8 ])  % 4
                fis'2 | % 5
                \time 2/4 a'4 b'4  | % 6
                a'4  g'4 \break | % 7
                a'2 | % 8
                fis'4  e'4 | % 9
                a'4  g'4 |
                g'4 (  a'4 ) \bar "!" |
              }  % 11

              \alternative {
                {\time 3/4 fis'2 d'8 fis'8}
                { fis'2}
              }
              \bar "|."
            }

            \addlyrics {
              Вя -- ра свет --   ла,
              вя -- ра сил --   на! Тя кре -- пи Ду -- ха, що Жи -- во -- та раж -- да. Вя -- ра да.}
              \addlyrics {
                Vja -- ra svet --   la,
                vja -- ra sil --   na! Tja kre -- pi Du -- ha, što Ži -- vo -- ta raž -- da. Vja -- ra da.}
                \header {
                  title = \titleFunc "Вяра светла III" "Vjara svetla III"
                }

                \midi{}

              } % score



              % include foreign translation(s) of the song
              \include "../../lyrics/de/171_1_vyara_svetla_III.ly"


            } % bookpart

            % Più mosso
            %
