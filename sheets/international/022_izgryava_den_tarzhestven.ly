\version "2.24.4"

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
      d'8 e'8 f'8 g'8 | \time 4/4  a'4 \staccato a'2 a'4 | bes'4 a'4 d''4. a'8 \break |
      bes'4 \staccato a'4 ~ a'8 g'8 a'8 g'8 |  \time 6/4  f'4. e'8 g'4 f'2 f'4 | \time 4/4  e'4. d'8 f'4. e'8 \break |
      e'4 \staccato d'4 ~ d'8 d''8 d''8 e''8 | \time 6/4  f''4. e''8 e''4 d''2 c''4 \break
      \time 4/4  bes'4. a'8 a'4. g'8 |  \time 3/4  a'4 a'2 | \time 5/4  c''4. c''8 d''4 g'2 \break |
      f'4. g'8 a'4 \staccato a'4. d'8 | f'4. d'8 f'4 e'2 | \time 2/4 d'4. a8 | \time 5/4 d'4 d'2 r8 \bar "|."
    }
    \addlyrics {
      \set stanza = "1." Из -- гря -- ва ве -- че ден тър -- жест -- вен, __ пред -- ре -- че
      -- ни -- ят ден Бо -- жест -- вен, на дни --
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
      \set stanza = "1." Iz -- grja -- va ve -- če den tăr -- žest -- ven, __ pred -- re -- če
      -- ni -- jat den Bo -- žest -- ven, na dni --
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

  \markup \abs-fontsize #11 {
    \hspace #5
    \override #`(baseline-skip . ,bgCoupletBaselineSkip)
    \column {

      \line { 2. И носи радост за душата, }
      \line {   "   " и прогласява свободата,}
      \line {   "   " и мир с Любов пресвята}
      \line {   "   " за всички на Земята. }


      \vspace #0.5
      \line { "   " \italic {Припев: } }

      \line {   "   "  Елате да живеем }

      \line {   "   " във Любовта чудесна. }

      \line {   "   " Елате да приемем }

      \line {   "   " таз благодат небесна, }

      \line {   "   " що живота обновява }

      \line {   "   " и вечно тя го подмладява. }

      \vspace #0.5
      \line {  3.  О, ден прекрасен, вечно благо, }
      \line {   "   " кому за тебе не е драго? }
      \line {   "   " За всичките години}
      \line {   "   " по-скоро обнови ни! }

      \vspace #0.5
      \line { "   " \italic {Припев ... } }
    }
    \hspace #1
    \override #`(baseline-skip . ,bgCoupletBaselineSkip)
    \column {

      \line { 2. I nosi radost za dušata, }
      \line {   "   " i proglasjava svobodata,}
      \line {   "   " i mir s Ljubov presvjata}
      \line {   "   " za vsički na Zemjata. }


      \vspace #0.5
      \line { "   " \italic {Refrain: } }

      \line {   "   "  Elate da živeem }

      \line {   "   " văv Ljubovta čudesna. }

      \line {   "   " Elate da priemem }

      \line {   "   " taz blagodat nebesna, }

      \line {   "   " što života obnovjava }

      \line {   "   " i večno tja go podmladjava. }

      \vspace #0.5
      \line {  3.  O, den prekrasen, večno blago, }
      \line {   "   " komu za tebe ne e drago? }
      \line {   "   " Za vsičkite godini}
      \line {   "   " po-skoro obnovi ni! }

      \vspace #0.5
      \line { "   " \italic {Refrain ... } }
    }    %column

  } % markup


  \markup \vspace #2


  % include foreign translation(s) of the song
  \include "../../lyrics/de/022_izgryava_den_tarzhestven_lyrics_de.ly"

} % bookpart
