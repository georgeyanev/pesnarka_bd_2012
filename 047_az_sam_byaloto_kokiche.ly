\version "2.24.0"

% include paper part and global functions
\include "include/globals.ily"

"rightBraces047" = \markup {
  \column {
    % repeat braces
    \translate #'(0 . -3.1 )
    \right-brace #44

    \translate #'(0 . -5.2 )
    \right-brace #44

    \translate #'(0 . -7.6 )
    \right-brace #44

    \translate #'(0 . -5.2 )
    \right-brace #44

  }
  \column {
    % repeat numbers
    \translate #'(0 . -3.7 )
    2

    \translate #'(0 . -9.3 )
    2

    \translate #'(0 . -11.9 )
    2

    \translate #'(0 . -9.7 )
    2
  }
}

\bookpart {
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"


    \new Voice \absolute  {
      \clef treble
      \key f \major
      \time 3/8
      \tempoFunc "Allegretto" 8 "112"
      \autoBeamOff

      f''16. e''32 d''8 bes' | a'16. g'32 a'8 f' | d'16. e'32 f'8 g' | a'4 a'8 \break |
      f''16. e''32 d''8 bes' | a'16. g'32 a'8 f' | e'16. bes'32 a'8 cis' | d'8 d' r | \bar ":|." \break
      \repeat volta 2 {
        \bar ":|.|:"
        a'4 d''8 | cis''4 e''8 | d''4 bes'8 | a'4 g'8 | a'4 d''8 | cis''4 e''8 | d''4. |  d''4. \break | % 17
        a'4 bes'8 | a'4 d''8 | cis''4 bes'8 |  a'4 g'8 | f'4 a'8 | e'4 a'8 |  d'4. | d'4.
      } \break |
    }

    \addlyrics {
      "1. Аз" съм бя -- ло ко -- ки -- че
      Всред тре -- ви -- те гор -- с -- ки,
      сра -- меж -- ли -- во кат мо -- ми -- че
      от пог -- ле -- ди хор -- ски. Зла ме ма -- ще -- ха съ -- бу -- ди
      с~сне -- га, вет -- ро -- ве -- те.
      Всич -- ко жи -- во да се чу -- ди,
      че съм ран -- но цве -- те.}
      \addlyrics {
        "1. Az" sam bya -- lo ko -- ki -- che
        Vsred tre -- vi -- te gor -- s -- ki,
        sra -- mezh -- li -- vo kat mo -- mi -- che
        ot pog -- le -- di hor -- ski. Zla me ma -- shte -- ha sa -- bu -- di
        s~sne -- ga, vet -- ro -- ve -- te.
        Vsich -- ko zhi -- vo da se chu -- di,
        che sam ran -- no tsve -- te.}
        \header {
          title = \titleFunc "Бялото кокиче" "Byaloto kokiche"
        }

        \midi{}

      } % score

      \markup \fontsize #bgCoupletFontSize {
        \hspace #1
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

          \line { " " }
          \line { 3. Че агънца ще заблеят  }
          \line {   "   " в ливади зелени, }
          \line {   "   " че орачи ще засеят }
          \line {   "   " ниви наторени. }

          \line { "     " Златни класове ще зреят  }
          \line {   "     " в тези чудни ниви, }
          \line {   "     " Ангели ще славят Бога }
          \line {   "     " с песни най-красиви. }
        }  \"rightBraces047"

        \hspace #5
        \override #`(baseline-skip . ,bgCoupletBaselineSkip)
        \column {
          \line {    2. Radost nova vi pokazvam }
          \line {   "   " s chashka ranobudna }
          \line {   "   " i za proletta razkazvam }
          \line {   "   " prikazchitsa chudna. }

          \line {  "     " Che sled mene temenuzhka  }
          \line {   "     " u vas shte gostuva, }
          \line {   "     " che sas taya mila druzhka }
          \line {   "     " slavey shte se chuva. }

          \line { " " }
          \line { 3. Che agantsa shte zableyat  }
          \line {   "   " v livadi zeleni, }
          \line {   "   " che orachi shte zaseyat }
          \line {   "   " nivi natoreni. }

          \line { "     " Zlatni klasove shte zreyat  }
          \line {   "     " v tezi chudni nivi, }
          \line {   "     " Angeli shte slavyat Boga }
          \line {   "     " s pesni nay-krasivi. }
        }  \"rightBraces047" %column
      }  % markup

      \pageBreak

      % include foreign translation(s) of the song
      \include "lyrics_de/047_az_sam_byaloto_kokiche_lyrics_de.ly"

    } % bookpart
