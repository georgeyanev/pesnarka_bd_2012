\version "2.24.4"

% include paper part and global functions
\include "include/globals.ily"

"rightBraces047" = \markup {
  \column {
    % repeat braces
    \translate #'(0 . -4 )
    \right-brace #39

    \translate #'(0 . -7.3 )
    \right-brace #39

    \translate #'(0 . -8.4 )
    \right-brace #39

    \translate #'(0 . -7.4 )
    \right-brace #39

  }
  \column {
    % repeat numbers
    \translate #'(0 . -4.7 )
    2

    \translate #'(0 . -12.9 )
    2

    \translate #'(0 . -13.9 )
    2

    \translate #'(0 . -12.9 )
    2
  }
}

\bookpart {
  \label #'ref047
  \tocItem \markup "Аз съм бялото кокиче – Az săm bjaloto kokiče"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"


    \new Voice \absolute  {
      \clef treble
      \key d \minor
      \time 3/8
      \tempoFunc "Allegretto" 8 "112"
      \autoBeamOff

      f''16. e''32 d''8 bes' | a'16. g'32 a'8 f' | d'16. e'32 f'8 g' | a'4 a'8 \break |
      f''16. e''32 d''8 bes' | a'16. g'32 a'8 f' | e'16. bes'32 a'8 cis' | d'8 d' r | \bar ":|." \break

      \bar ":|.|:"
      a'4 d''8 | cis''4 e''8 | d''4 bes'8 | a'4 g'8 | a'4 d''8 | cis''4 e''8 | d''4. |  d''4. \break | % 17
      a'4 bes'8 | a'4 d''8 | cis''4 bes'8 |  a'4 g'8 | f'4 a'8 | e'4 a'8 |  d'4. | d'4.
      \bar ":|." \break |
    }

    \addlyrics {
      \set stanza = "1." Аз съм бя -- ло -- то ко -- ки -- че
      всред тре -- ви -- те гор -- ски,
      сра -- меж -- ли -- во кат мо -- ми -- че
      от пог -- ле -- ди хор -- ски. Зла ме ма -- ще -- ха съ -- бу -- ди
      с~сне -- га, вет -- ро -- ве -- те.
      Всич -- ко жи -- во да се чу -- ди,
      че съм ран -- но цве -- те.}
      \addlyrics {
        \set stanza = "1." Az săm bja -- lo -- to ko -- ki -- če
        vsred tre -- vi -- te gor -- ski,
        sra -- mež -- li -- vo kat mo -- mi -- če
        ot pog -- le -- di hor -- ski. Zla me ma -- šte -- ha să -- bu -- di
        s~sne -- ga, vet -- ro -- ve -- te.
        Vsič -- ko ži -- vo da se ču -- di,
        če săm ran -- no cve -- te.}
        \header {
          title = \titleFunc "Аз съм бялото кокиче" "Az săm bjaloto kokiče"
        }

        \midi{}

      } % score

      \markup \empty-two

      \markup \abs-fontsize #11 {
        \hspace #7
        \override #`(baseline-skip . ,bgCoupletBaselineSkip)
        \column {
          \line {    2. Радост нова ви показвам }
          \line {   "   " с чашка ранобудна }
          \line {   "   " и за пролетта разказвам }
          \line {   "   " приказчица чудна. }

          \line {  "     " Че след мене теменужка  }
          \line {   "     " у вас ще гостува, }
          \line {   "     " че със тая мила дружка }
          \line {   "     " славей ще се чува. }

          \vspace #0.5
          \line { 3. Че агънца ще заблеят  }
          \line {   "   " в ливади зелени, }
          \line {   "   " че орачи ще засеят }
          \line {   "   " ниви наторени. }

          \line { "     " Златни класове ще зреят  }
          \line {   "     " в тези чудни ниви, }
          \line {   "     " ангели ще славят Бога }
          \line {   "     " с песни най-красиви. }
        }  \"rightBraces047"

        \hspace #5
        \override #`(baseline-skip . ,bgCoupletBaselineSkip)
        \column {
          \line {    2. Radost nova vi pokazvam }
          \line {   "   " s čaška ranobudna }
          \line {   "   " i za proletta razkazvam }
          \line {   "   " prikazčica čudna. }

          \line {  "     " Če sled mene temenužka  }
          \line {   "     " u vas šte gostuva, }
          \line {   "     " če săs taja mila družka }
          \line {   "     " slavej šte se čuva. }

          \vspace #0.5
          \line { 3. Če agănca šte zablejat  }
          \line {   "   " v livadi zeleni, }
          \line {   "   " če orači šte zasejat }
          \line {   "   " nivi natoreni. }

          \line { "     " Zlatni klasove šte zrejat  }
          \line {   "     " v tezi čudni nivi, }
          \line {   "     " angeli šte slavjat Boga }
          \line {   "     " s pesni naj-krasivi. }
        }   \"rightBraces047" %column
      }  % markup

      \pageBreak

      % include foreign translation(s) of the song
      \include "../../lyrics/de/047_az_sam_byaloto_kokiche_lyrics_de.ly"

    } % bookpart
