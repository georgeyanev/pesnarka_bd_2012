\version "2.24.4"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
       \label #'ref032
  \tocItem \markup "Шуми – Shumi"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    <<
      \new Lyrics = "tempVoiceLyricsBG" \with {
        % lyrics above a staff should have this override
        \override VerticalAxisGroup.staff-affinity = #DOWN
      }
      \new Voice = "mainVoice" \absolute  {
        \clef treble
        \key d \minor
        \time 3/4
        \tempoFunc "Andante" 4 "60"
        \partial 4
        \autoBeamOff

        a4 | d'2 e'4 | f'4 d'2 | \time 4/4  a'4 bes' a' gis' | \time 3/4  a'2 a'4 \break |
        d''2 e''4 | \time 4/4

        <<
          % now temporary add a second voice
          {
            \voiceTwo % this voice is in the same context as parent
            f''4 e'' d'' cis'' | d''4 \stemUp a'2 \stemNeutral
          }
          \new Voice = "tempVoice" {
            % this is a new voice context
            \voiceOne \autoBeamOff
            f''4 e''8 e'' d''4 cis'' | \hideNotes d''4 \stemDown a'2 \stemNeutral \unHideNotes
          }
        >>
        \oneVoice

        a'4 | \time 3/4  bes'2 a'4 | \break

        \time 4/4  bes'4 a' bes' c'' | bes'4 a'2 a'4 | \time 3/4  d''2 cis''4 | \time 4/4  d''4 a' bes' a' \break |
        a'4 g'2 f'4 |  e'4 d' f' e' | d'4 cis' e'2 | \time 3/4  d'2 a'4 \break |
        d''2 a'4 | \time 4/4  bes'4 a'2 d'4 |  f'2 e'4 cis' | \time 3/4  d'2 \fermata \bar "|." \break
      }

      \new Lyrics \lyricsto "mainVoice" {
        Шу -- ми,
        аз слу -- шам цял свят да шу -- ми! Шу -- мят
        сър -- ца -- та че -- ло --  веш -- ки всред
        свой -- те и -- до -- ли и греш -- ки, шу -- мят
        без -- спир -- но у -- мо -- ве -- те, го -- лям
        е при -- лив в~до -- мо -- ве -- те. Шу -- ми,
        аз слу -- шам цял свят да шу -- ми!
      }

      \context Lyrics = "tempVoiceLyricsBG" {
        \lyricsto "tempVoice" {
          "(4.) мис" -- ли и неж -- ни чув -- ства
        }
      }

      \new Lyrics \lyricsto "mainVoice" {
        Shu -- mi,
        az slu -- sham tsyal svyat da shu -- mi! Shu -- myat
        sar -- tsa -- ta che -- lo --  vesh -- ki vsred
        svoy -- te i -- do -- li i gresh -- ki, shu -- myat
        bez -- spir -- no u -- mo -- ve -- te, go -- lyam
        e pri -- liv v~do -- mo -- ve -- te. Shu -- mi,
        az slu -- sham tsyal svyat da shu -- mi!
      }

    >>



    \header {
      title = \titleFunc #'ref_desc "Шуми" "Shumi"
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

  } % markup

  \pageBreak

  \markup \fontsize #bgCoupletFontSize {
    \hspace #1
    \override #`(baseline-skip . ,bgCoupletBaselineSkip) % affects space between column lines
    \column {




      \line {   4.  "   "        Задухай, ветре, }
      \line {   "   "    "   "         света разведри!}

      \line {   "   "При чисти мисли и нежни чувства}

      \line {   "   "цъфтят Божествени изкуства;}

      \line {   "   "навред да просияе радост,}

      \line {   "   "навред да диша свежа младост.}

      \line {  "   "    "   " Задухай, ветре, }
      \line {   "   "    "   " света избистри}
    }

  } % markup

  \markup \empty-two

  % include foreign translation(s) of the song
  

} % bookpart
