\version "2.24.4"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref032
  \tocItem \markup "Шуми – Šumi"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute {
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
      d''2 a'4 | \time 4/4  bes'4 a'2 d'4 | f'2 e'4 cis' | \time 3/4  d'2 \fermata s4 | \bar "|." \break
    }

    \addlyrics {
      \set stanza = "1."Шу -- ми,
      аз слу -- шам цял свят да шу -- ми! Шу -- мят
      сър -- ца -- та че -- ло --  веш -- ки всред
      свой -- те и -- до -- ли и греш -- ки, шу -- мят
      без -- спир -- но у -- мо -- ве -- те, го -- лям
      е при -- лив в~до -- мо -- ве -- те. Шу -- ми,
      аз слу -- шам цял свят да шу -- ми!
    }

    \addlyrics {
       \set stanza = "1." Šu -- mi,
      az slu -- šam cjal svjat da šu -- mi! Šu -- mjat
      săr -- ca -- ta če -- lo --  veš -- ki vsred
      svoj -- te i -- do -- li i greš -- ki, šu -- mjat
      bez -- spir -- no u -- mo -- ve -- te, go -- ljam
      e pri -- liv v~do -- mo -- ve -- te. Šu -- mi,
      az slu -- šam cjal svjat da šu -- mi!
    }
    \header {
      title = \titleFunc "Шуми" "Šumi"
    }

    \midi{}

  } % score

  \markup \empty-two

  \markup \abs-fontsize #11 {
    \hspace #5
    \override #`(baseline-skip . ,bgCoupletBaselineSkip)
    \column {

      \line {   2.  "   "  И вятър вее, }

      \line {   "   "    "   "       където си ще.}

      \line {   "   "Листата горски отговарят}

      \line {   "   "на неговия зов, повтарят}

      \line {   "   "любимата си песенчица,}

      \line {   "   "игрива като ладанчица.}

      \line {  "   "    "   "И вятър вее, }

      \line {    "   "    "   "където си ще.}


      \vspace #0.5
      \line {   3. "   "  Мой ветре, буйно }

      \line {   "   "    "   "  задухай сега!}

      \line {   "   "Носи Божествената влага}

      \line {   "   "и освежаваща прохлада;}

      \line {   "   "пречиствай задушливи хижи,}

      \line {   "   "разсейвай тежки земни грижи!}

      \line {    "   "    "   "Мой ветре, }

      \line {    "   "    "   "буйно задухай сега!}

    }

    \hspace #5
    \override #`(baseline-skip . ,bgCoupletBaselineSkip)
    \column {
      \line {   2.  "   "  I vjatăr vee, }

      \line {   "   "    "   "       kădeto si šte.}

      \line {   "   "Listata gorski otgovarjat}

      \line {   "   "na negovija zov, povtarjat}

      \line {   "   "ljubimata si pesenčica,}

      \line {   "   "igriva kato ladančica.}

      \line {  "   "    "   "I vjatăr vee, }

      \line {    "   "    "   "kădeto si šte.}


      \vspace #0.5
      \line {   3. "   "  Moj vetre, bujno }

      \line {   "   "    "   "  zaduhaj sega!}

      \line {   "   "Nosi Božestvenata vlaga}

      \line {   "   "i osvežavašta prohlada;}

      \line {   "   "prečistvaj zadušlivi hiži,}

      \line {   "   "razsejvaj težki zemni griži!}

      \line {    "   "    "   "Moj vetre, }

      \line {    "   "    "   "bujno zaduhaj sega!}


    } %column
  } % markup

  \pageBreak

  \markup \abs-fontsize #11  {
    \hspace #2
    \override #`(baseline-skip . ,bgCoupletBaselineSkip)
    \column {
      \line {   4.  "   "        Задухай, ветре, }
      \line {   "   "    "   "         света разведри!}

      \line {   "   "При чисти мисли, нежни чувства}

      \line {   "   "цъфтят Божествени изкуства.}

      \line {   "   "Навред да просияе радост,}

      \line {   "   "навред да диша свежа младост.}

      \line {  "   "    "   " Задухай, ветре, }
      \line {   "   "    "   " света избистри.}
    }



    \hspace #5
    \override #`(baseline-skip . ,bgCoupletBaselineSkip)
    \column {
      \line {   4.  "   "        Zaduhaj, vetre, }
      \line {   "   "    "   "         sveta razvedri!}

      \line {   "   "Pri čisti misli, nežni čuvstva}

      \line {   "   "căftjat Božestveni izkustva.}

      \line {   "   "Navred da prosijae radost,}

      \line {   "   "navred da diša sveža mladost.}

      \line {  "   "    "   " Zaduhaj, vetre, }
      \line {   "   "    "   " sveta izbistri.}
    }
    %column
  } % markup

  \markup \vspace #3
  % include foreign translation(s) of the song
  \include "../../lyrics/de/032_shumi_lyrics_de.ly"

} % bookpart

% Più mosso
%
