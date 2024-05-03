\version "2.24.3"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref188
  \tocItem \markup "Мелодия 3 – Когато се денят – Melodija 3 – Kogato se denjat"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \relative c' {
      \clef treble
      \key d \major
      \time 4/4
      \tempoFunc "Andante" 4 "66"
      \autoBeamOff
      \partial 4
      a4 | d4. cis8 d8 e8 fis8 g8 | a2 fis4 d4 | \break

      b'4. a8 g fis a gis |g?2. g4 | fis4. e8 dis e fis g | \break

      b2 a4 a |d4. e,8 fis8 g8 e8. d16 | d2 r8 a8 b8 cis8 | \break

      d4. cis8 d e fis g | a2 fis4 d4 | \break

      b4. e8 g b e8. d16 | cis2.\fermata a4 | fis'4. d8 a fis b a \break |

      g2 e4 a,4 | b4. a8 gis a e'8 fis | d2 . \bar "|." \break
    }


    \addlyrics {
      Ко -- га -- то се де -- нят про -- буж -- да,
      за -- пя -- ват слън -- че -- ви лъ -- чи.
      От из -- во -- ри -- те на жи -- во -- та
      о -- бил -- но ра -- дост -- та стру -- и.
      И в~то -- я час, тър -- жест -- вен час на ут -- ро -- то,
      ця -- ла -- та при -- ро -- да пей.
      Към вър -- хо -- ве -- те о -- за -- ре -- ни
      по -- ли -- тат на -- ши -- те ду -- ши.}
      \addlyrics {
        Ko -- ga -- to se de -- njat pro -- buž -- da,
        za -- pja -- vat slăn -- če -- vi lă -- či.
        Ot iz -- vo -- ri -- te na ži -- vo -- ta
        o -- bil -- no ra -- dost -- ta stru -- i.
        I v~to -- ja čas, tăr -- žest -- ven čas na ut -- ro -- to,
        cja -- la -- ta pri -- ro -- da pej.
        Kăm văr -- ho -- ve -- te o -- za -- re -- ni
        po -- li -- tat na -- ši -- te du -- ši.}

        \header {
          title = \titleFunc "Мелодия 3 – Когато се денят пробужда""Melodija 3 – Kogato se denjat probužda"
        }

        \midi{}

      } % score

      \markup \vspace #2

      \markup \abs-fontsize #10 {
        \hspace #2
        \override #`(baseline-skip . ,bgCoupletBaselineSkip)
        \column {
          \line {   2. Когато се денят пробужда,}
          \line {   "   " долавяме небесен зов – }
          \line {   "   " вълнува ни и вдъхновява}
          \line {   "   " за светъл и красив живот.}
          \line {   "     " Ще дойде той след бурите, борбите. }
          \line {   "     " Земята ще залее мир.}
          \line {   "     " Могъща сила е доброто,}
          \line {   "     " ний вярваме – ще победи.}
        }


        \override #`(baseline-skip . ,bgCoupletBaselineSkip)
        \column {
          \line {   2. Kogato se denjat probužda,}
          \line {   "   " dolavjame nebesen zov – }
          \line {   "   " vălnuva ni i vdăhnovjava}
          \line {   "   " za svetăl i krasiv život.}
          \line {   "     " Šte dojde toj sled burite, borbite. }
          \line {   "     " Zemjata šte zalee mir.}
          \line {   "     " Mogăšta sila e dobroto,}
          \line {   "     " nij vjarvame – šte pobedi.}
        } %column
      } % markup

      \pageBreak
      % include foreign translation(s) of the song
      \include "../../lyrics/de/188_melodie_3_lyrics_de.ly"

      \markup \vspace #3


      \label #'ref189
      \tocItem \markup "Мелодия 4 – Melodija 4"
      \score {
        \include "include/score-layout.ily"

        \new Voice \absolute {
          \clef treble
          \key g \minor
          \time 3/8
          \tempoFunc "Moderato" 8 "120"
          d''4 bes'8 | % 2
          d''4 bes'8 | % 3
          d''4. | % 4
          g''8  f''8 es''8 | % 5
          es''4 c''8 | % 6
          es''4 c''8 | % 7
          es''4. | % 8
          c''8  d''8  es''8 \break | % 9
          f''4 es''8 |
          es''4 d''8 | % 11
          d''4 c''8 | % 12
          d''4. | % 13
          g'8  a'8 bes'8 | % 14
          bes'4  a'8 \break | % 15
          a'4  g'8 | % 16
          g'4  d'8 | % 17
          g'4. | % 18
          g'8 a'8 bes'8 | % 19
          bes'4  a'8 |
          a'4  g'8 | % 21
          g'4  d'8 | % 22
          g'4. \bar "|."
        }

        \addlyrics {
        }

        \header {
          title = \titleFunc "Мелодия 4 "" Melodija 4"
        }

        \midi{}

      } % score



    } % bookpart

    % Più mosso
    %
