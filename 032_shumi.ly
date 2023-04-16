\version "2.24.0"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref032
  \tocItem \markup "Шуми – Shumi"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

      \new Voice \absolute  {
        \clef treble
        \key d \minor
        \time 3/4
        \tempoFunc "Andante" 4 "60"
        \partial 4
        \autoBeamOff

        a4 | d'2 e'4 | f'4 d'2 | \time 4/4  a'4 bes' a' gis' | \time 3/4  a'2 a'4 \break |
        d''2 e''4 | \time 4/4

        f''4 e'' d'' cis'' | d''4 \stemUp a'2 \stemNeutral

        a'4 | \time 3/4  bes'2 a'4 | \break

        \time 4/4  bes'4 a' bes' c'' | bes'4 a'2 a'4 | \time 3/4  d''2 cis''4 | \time 4/4  d''4 a' bes' a' \break |
        a'4 g'2 f'4 |  e'4 d' f' e' | d'4 cis' e'2 | \time 3/4  d'2 a'4 \break |
        d''2 a'4 | \time 4/4  bes'4 a'2 d'4 | f'2 e'4 cis' | \time 3/4  d'2.\fermata | \bar "|." \break
      }

      \addlyrics {
        Шу -- ми,
        аз слу -- шам цял свят да шу -- ми! Шу -- мят
        сър -- ца -- та че -- ло --  веш -- ки всред
        свой -- те и -- до -- ли и греш -- ки, шу -- мят
        без -- спир -- но у -- мо -- ве -- те, го -- лям
        е при -- лив в~до -- мо -- ве -- те. Шу -- ми,
        аз слу -- шам цял свят да шу -- ми!
      }

      \addlyrics {
        Shu -- mi,
        az slu -- sham tsyal svyat da shu -- mi! Shu -- myat
        sar -- tsa -- ta che -- lo --  vesh -- ki vsred
        svoy -- te i -- do -- li i gresh -- ki, shu -- myat
        bez -- spir -- no u -- mo -- ve -- te, go -- lyam
        e pri -- liv v~do -- mo -- ve -- te. Shu -- mi,
        az slu -- sham tsyal svyat da shu -- mi!
      }

    \header {
      title = \titleFunc "Шуми" "Shumi"
    }

    \midi{}

  } % score



  \markup \fontsize #+1.7 {
    \hspace #5
    \override #'(baseline-skip . 1.8)
    \column {
      \line {   2.  "   "  И вятър вее, }

      \line {   "   "    "   "       където си ще.}

      \line {   "   "Листата горски отговарят}

      \line {   "   "на неговия зов, повтарят}

      \line {   "   "любимата си песенчица,}

      \line {   "   "игрива като ладанчица.}

      \line {  "   "    "   "И вятър вее, }

      \line {    "   "    "   "където си ще.}


      \line { " " }
      \line {   3. "   "  Мой ветре, буйно }

      \line {   "   "    "   "  задухай сега!}

      \line {   "   "Носи Божествената влага}

      \line {   "   "и освежаваща прохлада;}

      \line {   "   "пречиствай задушливи хижи,}

      \line {   "   "разсейвай тежки земни грижи!}

      \line {    "   "    "   "Мой ветре, }

      \line {    "   "    "   "буйно задухай сега!}

    }

    \hspace #6
    \override #'(baseline-skip . 1.8)
    \column {
      \line {   2.  "   "       I vyatar vee, }
      \line {   "   "    "   "      kadeto si shte}

      \line {   "   "Listata gorski otgovaryat}

      \line {   "   "na negoviya zov, povtaryat}

      \line {   "   "lyubimata si pesenchitsa,}

      \line {   "   "igriva kato ladanchitsa.}

      \line {   "   "    "   "      I vyatar vee, }
      \line {   "   "    "   "     kadeto si shte}


      \line { " " }
      \line {  3. " " " " Moy vetre, buyno}

      \line {    "   "    "   " zaduhay sega!}

      \line {   "   "Nosi Bozhestvenata vlaga}

      \line {   "   "i osvezhavashta prohlada;}

      \line {   "   "prechistvay zadushlivi hizhi,}

      \line {   "   "razseyvay tezhki zemni grizhi!}

      \line {    "   "    "   "Moy vetre, buyno }

      \line {    "   "    "   "zaduhay sega!}


    } %column
  } % markup

  \pageBreak

  \markup \fontsize #+1.7 {
    \hspace #1
    \override #'(baseline-skip . 1.8)
    \column {
      \line {   4.  "   "        Задухай, ветре, }
      \line {   "   "    "   "         света разведри!}

      \line {   "   "При чисти мисли, нежни чувства}

      \line {   "   "цъфтят Божествени изкуства;}

      \line {   "   "навред да просияе радост,}

      \line {   "   "навред да диша свежа младост.}

      \line {  "   "    "   " Задухай, ветре, }
      \line {   "   "    "   " света избистри}
    }



    \hspace #3
    \override #'(baseline-skip . 1.8)
    \column {

      \line {   4.  "   "         Zaduhay, vetre, }
      \line {   "   "    "   "         sveta razvedri!}

      \line {   "   "Pri chisti misli, nezhni chuvstva}

      \line {   "   "tsaftyat Bozhestveni izkustva;}

      \line {   "   "navred da prosiyae radost,}

      \line {   "   "navred da disha svezha mladost.}

      \line {  "   "    "   "Zaduhay, vetre, }

      \line {  "   "    "   "sveta izbistri!}


    } %column
  } % markup

  \markup \empty-two

  % include foreign translation(s) of the song
  \include "lyrics_de/032_shumi_lyrics_de.ly"

} % bookpart
