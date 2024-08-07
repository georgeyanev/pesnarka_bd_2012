\version "2.24.4"

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
      \key d \major
      \time 3/4
      \tempoFunc "Moderato" 4 "72"
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
        g'4 (  a'4 ) |
      }  % 11

      \alternative {
        {\time 3/4 fis'2 d'8 fis'8}
        { fis'2}
      }
      \bar "|."
    }

    \addlyrics {
      Вя -- ра свет --   ла,
      вя -- ра сил --   на! Тя кре -- пи ду -- ха, що жи -- во -- та раж -- да. Вя -- ра да.}
      \addlyrics {
        Vja -- ra svet --   la,
        vja -- ra sil --   na! Tja kre -- pi du -- ha, što ži -- vo -- ta raž -- da. Vja -- ra da.}

        \header {
          title = \titleFunc "Вяра светла I ""Vjara svetla I"
        }

        \midi{}

      } % score

      \markup \vspace #1

      % include foreign translation(s) of the song
      \include "../../lyrics/de/170_1_vyara_svetla_lyrics_de.ly"

      \markup \vspace #2

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
          bes'16  | % 8
          \time 3/4  | % 8
          a'8 ( [  bes'8 ) ]  g'2 | \break % 9
          \time 4/4  | % 9
          bes'4  a'4  g'4  f'4 |
          c''4 (  bes'8 [  a'8 ) ]  bes'2 | % 11
          \time 3/4  | % 11
          bes'8 ( [  c''8 ])   d''4  es''4
          | % 12
          \times 2/3  {
            d''8 ( [  es''8  d''8 ) ]
          }
          c''4.  g'8 | \break % 13
          \time 4/4  | % 13
          c''4.  bes'8  a'4  g'4 | % 14
          f'4 (  d''2 )  c''4 | % 15
          bes'2. r4
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
          га, бла -- го -- то на жи -- во
          -- та, Лю -- бов -- та на Бо --
          га, где  мир вла -- де --
          е и Ис -- ти -- на -- та веч
          -- но грей. Вя -- ра свет -- ла,
          вя -- ра сил -- на! Тя кре -- пи
          ду -- ха, що жи -- вот но -- си.}
          \addlyrics {
            Vja -- ra svet --   la,
            vja -- ra sil --   na!
            Tja vo -- di nas kăm Bo --
            ga, bla -- go -- to na ži -- vo
            -- ta, Lju -- bov -- ta na Bo --
            ga, gde  mir vla -- de --
            e i Is -- ti -- na -- ta več
            -- no grej. Vja -- ra svet -- la,
            vja -- ra sil -- na! Tja kre -- pi
            du -- ha, što ži -- vot no -- si.}

            \header {
              title = \titleFunc "Вяра светла II " "Vjara svetla II "
            }

            \midi{}

          } % score



          % include foreign translation(s) of the song
          \include "../../lyrics/de/170_2_vyra_svetla_II_lyrics_de.ly"

          \label #'ref171_1
          \tocItem \markup "Милост, благост – Milost, blagost"


          \include "include/bookpart-paper.ily"
          \score {
            \include "include/score-layout.ily"

            \new Voice \absolute {
              \clef treble
              \key a \minor
              \time 3/4
              \tempoFunc "Moderato" 4 "80"
              \autoBeamOff

              a'2 e'4 | % 2
              a'2 e'4 | % 3
              a'2. | % 4
              \key c \major
              g'2 e'4 | % 5
              g'2. | % 6
              d'4 ( e'4 ) f'4 | % 7
              f'2 e'4 \break | % 8
              g'2. | % 9
              f'2 e'4 |
              e'2. | % 11
              d'4 ( e'4 ) f'4 | % 12
              e'2. | % 13
              \tempo "rit."  d'4  ( e'4 ) f'4 | % 14
              e'2.\bar "|."

            }

            \addlyrics {
              Ми -- лост, бла -- гост в~мен Той все -- ли.  Ми -- лост, бла -- гост   в~мен Той все -- ли, в~мен все -- ли, в~мен все -- ли.}



              \addlyrics {
                Mi -- lost, bla -- gost v~men Toj vse -- li.  Mi -- lost, bla -- gost   v~men Toj vse -- li, v~men vse -- li, v~men vse -- li.}


                \header {
                  title = \titleFunc "Милост, благост" "Milost, blagost"
                }

                \midi{}

              } % score

              \markup \empty-one

              \markup \dc-one "D.C."

              % include foreign translation(s) of the song
              \include "../../lyrics/de/171_2_milost_blagost_lyrics_de.ly"

              \markup \empty-three

              \label #'ref171_2
              \tocItem \markup "Аз мога да дишам – Az moga da dišam"

              \include "include/bookpart-paper.ily"
              \score {
                \include "include/score-layout.ily"

                \new Voice \absolute {
                  \clef treble
                  \key c \major
                  \time 2/4
                  \tempoFunc "Moderato" 4 "88"
                  \autoBeamOff
                  \partial 4
                  g4 \repeat volta 2 {
                    |
                    c'4 c'8. d'16 | % 3
                    e'4 c'4 | % 4
                    g'4 e'8. f'16 | % 5
                    \time 3/4  g'2 a'4 |  \break
                    \time 2/4  g'4 e'8. f'16 | % 7
                    e'4 c'4 | % 8
                    d'4 e'8. d'16 | % 9
                    \time 3/4
                  }
                  \alternative {
                    {
                      c'2 g4 |

                    }
                    {c'2 \bar "|."  }
                  }
                }

                \addlyrics {
                  Аз мо -- га
                  да ди -- шам ве -- че до -- бре, аз мо -- га
                  да ди -- шам ве -- че до -- бре. Аз  бре.}

                  \addlyrics {
                    Az mo -- ga
                    da di -- šam ve -- če do -- bre, az mo -- ga
                    da di -- šam ve -- če do -- bre. Az  bre.}

                    \header {
                      title = \titleFunc "Аз мога да дишам" "Az moga da dišam"
                    }

                    \midi{}

                  } % score

                  \markup \empty-two


                  % include foreign translation(s) of the song
                  \include "../../lyrics/de/171_3_az_moga_da_disham_dobre_lyrics_de.ly"



                } % bookpart

                % Più mosso
                %
