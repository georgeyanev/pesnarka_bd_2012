\version "2.24.2"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref022
  \tocItem \markup "Изгрява вече ден тържествен – Izgrjava veče den tăržestven"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute {
      \clef treble
      \key d \minor
      \time 4/4
      \tempoFunc "Andante" 4 "92"
      \autoBeamOff

      \partial 4.

      a8 d'8 e'8 |f'4 e'4 f'4 e'4 |d'4 a'4 ~ a'8 a'8 bes'8 a'8 \break |
      d''4 a'4 bes'4 a'4 |\time 3/4  g'4 a'2 | \time 4/4  g'4 a'8 g'8 f'4. e'8 \break
      g'4 f'2 f'4 |  e'4. d'8 f'4. e'8 | e'4 d'2 r8 \tempo "Più vivo" a8 | \bar "||" \time 2/4 \break
      d'8 e'8 f'8 g'8 | \time 4/4  a'4 a'2 a'4 | bes'4 a'4 d''4. a'8 \break |
      bes'4 a'4 ~ a'8 g'8 a'8 g'8 |  \time 6/4  f'4. e'8 g'4 f'2 f'4 | \time 4/4  e'4. d'8 f'4. e'8 \break |
      e'4 d'4 ~ d'8 d''8 d''8 e''8 | \time 6/4  f''4. e''8 e''4 d''2 c''4 \break
      \time 4/4  bes'4. a'8 a'4. g'8 |  \time 3/4  a'4 a'2 | \time 5/4  c''4. c''8 d''4 g'2 \break |
      f'4. g'8 a'4 a'4. d'8 | f'4. d'8 f'4 e'2 | d'4. a8 d'4 d'2 \bar "|." \pageBreak
    }
    \addlyrics {
      Из -- гря -- ва ве -- че ден тър -- же -- ствен, __ пред -- ре -- че
      -- ни -- ят ден Бо -- же -- ствен, на дни --
      те ди -- а -- де -- ма, със свет -- ли -- на го
      -- ля -- ма. Е -- ла -- те да жи -- ве -- ем във
      Лю -- бов -- та чу -- дес -- на. __ Е -- ла -- те
      да при -- е -- мем таз бла -- го -- дат не --
      бес -- на, __ е -- ла -- те да при -- е -- мем таз
      бла -- го -- дат не -- бес -- на, що жи -- во --
      та об -- но -- вя -- ва и веч -- но тя го под
      -- мла -- дя -- ва.
    }
    \addlyrics {
      Iz -- grja -- va ve -- če den tăr -- že -- stven, __ pred -- re -- če
      -- ni -- jat den Bo -- že -- stven, na dni --
      te di -- a -- de -- ma, săs svet -- li -- na go
      -- lja -- ma. E -- la -- te da ži -- ve -- em văv
      Lju -- bov -- ta ču -- des -- na. __ E -- la -- te
      da pri -- e -- mem taz bla -- go -- dat ne --
      bes -- na, __ e -- la -- te da pri -- e -- mem taz
      bla -- go -- dat ne -- bes -- na, što ži -- vo --
      ta ob -- no -- vja -- va i več -- no tja go pod
      -- mla -- dja -- va.
    }
    \header {
      title = \titleFunc "Изгрява вече ден тържествен" "Izgrjava veče den tăržestven"
    }

    \midi{}

  } % score

  \pageBreak

  \markup \fontsize #bgCoupletFontSize {
    \hspace #3
    \override #`(baseline-skip . ,bgCoupletBaselineSkip)
    \column {

      \line { 2. И носи Радост за душата, }
      \line {   "   " и прогласява Свободата}
      \line {   "   " и Мир с Любов пресвята}
      \line {   "   " за всички на земята. }


      \line { " " }
      \line { "   " \italic {Припев: } }

      \line { " " }
      \line {  3.  О, ден прекрасен, вечно благо, }
      \line {   "   " кому за тебе не е драго? }
      \line {   "   " За всичките години}
      \line {   "   " по-скоро обнови ни! }

      \line { " " }
      \line { "   " \italic {Припев: } }
    }

    \hspace #1
    \override #`(baseline-skip . ,bgCoupletBaselineSkip)
    \column {

      \line { 2. I nosi Radost za dušata, }
      \line {   "   " i proglasjava Svobodata}
      \line {   "   " i Mir s Ljubov presvjata}
      \line {   "   " za vsički na zemjata. }


      \line { " " }
      \line { "   " \italic {Pripev: } }

      \line { " " }
      \line {  3.  O, den prekrasen, večno blago, }
      \line {   "   " komu za tebe ne e drago? }
      \line {   "   " Za vsičkite godini}
      \line {   "   " po-skoro obnovi ni! }

      \line { " " }
      \line { "   " \italic {Pripev: } }
    }    %column

  } % markup


  \markup \empty-two


  % include foreign translation(s) of the song
  \include "lyrics_de/022_izgryava_den_tarzhestven_lyrics_de.ly"

} % bookpart
