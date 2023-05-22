\version "2.24.1"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref029
  \tocItem \markup "Страдна душо – Stradna dušo"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute {
      \clef treble
      \key d \minor
      \time 4/4
      \tempoFunc "Andante" 4 "60"
      \autoBeamOff
      
      d'8 d' g'8 ([ a' ]) a'2 | \time 2/4 bes'8 ([ a' ])  bes' ([ c'' ])  | \break

      \time 4/4 bes'4 a'2 a'8 a' |
      d''4. d''8 c'' ([ d'' ]) d'' ([ c'' ]) \time 3/4  bes'4 a'2 |\break
      \time 4/4  a'8 ([ bes' ]) c'' ([ d'' ]) c'' bes' a' g' \break |
      \time 3/4  f'8 ([ g' ]) a'2 | \time 6/4  bes'4. a'8 bes' ([ a' ]) bes' ([ c'' ]) d'' ([ c'' ]) bes' ([ a' ]) \break |
      \time 3/4  |a'8 ([ g'8 ]) a'2 | \time 6/4  d'4. e'8 f'4\staccato e'4\staccato d'\staccato cis'\staccato | \time 4/4  e'2 d' | \bar "|." \break

    }

    \addlyrics {
      Страд -- на
      ду -- шо, ти коп -- не -- еш, за как -- во го --
      риш и тле -- еш? Сло -- во -- то Ти, Бо -- же,
      ча -- кам и о -- бил -- на -- та Ти ми -- лост,
      за тях стра -- дам и коп -- не -- я.}
      \addlyrics {
        Strad -- na
        du -- šo, ti kop -- ne -- eš, za kak -- vo go --
        riš i tle -- eš? Slo -- vo -- to Ti, Bo -- že,
        ča -- kam i o -- bil -- na -- ta Ti mi -- lost,
        za tjah stra -- dam i kop -- ne -- ja.}


        \header {
          title = \titleFunc "Страдна душо" "Stradna dušo"
        }

        \midi{}

      } % score



      \markup \fontsize #bgCoupletFontSize {
        \hspace #1
        \override #`(baseline-skip . ,bgCoupletBaselineSkip)
        \column {
          \line {   2. И гладувам, и жадувам,}

          \line {   "   " тях очаквам денонощно.}

          \line {   "   " Ти ме, Боже, благославяй,}

          \line {   "   " при Теб близо аз да бъда}

          \line {   "   " и утеха в Теб да найда.}
          \line { " " }

          \line {   3. Твоя светъл лик да гледам}

          \line {   "   " и величието Твое;}

          \line {   "   " да науча Теб да любя.}

          \line {   "   " В таз Любов към Тебе, Боже,}

          \line {   "   " да намеря мощна сила.}



        }

        \hspace #5
        \override #`(baseline-skip . ,bgCoupletBaselineSkip)
        \column {
          \line {   2. I gladuvam, i žaduvam,}

          \line {   "   " tjah očakvam denonoštno.}

          \line {   "   " Ti me, Bože, blagoslavjaj,}

          \line {   "   " pri Teb blizo az da băda}

          \line {   "   " i uteha v Teb da najda.}
          \line { " " }

          \line {   3. Tvoja svetăl lik da gledam}

          \line {   "   " i veličieto Tvoe;}

          \line {   "   " da nauča Teb da ljubja.}

          \line {   "   " V taz Ljubov kăm Tebe, Bože,}

          \line {   "   " da namerja moštna sila.}



        } %column
      } % markup

      \pageBreak


      \markup \fontsize #bgCoupletFontSize {
        \hspace #1
        \override #`(baseline-skip . ,bgCoupletBaselineSkip)
        \column {


          \line {   4. В подвизи и съвършенство}

          \line {   "   " да познавам милостта Ти,}

          \line {   "   " превеликата Ти тайна,}

          \line {   "   " що разкрива на човека}

          \line {   "   " суетата на живота.}
          \line { " " }
          \line {    5. Всичко грешно на Земята}

          \line {   "   " е преходно, мимолетно.}

          \line {   "   " Само Ти си вечен, Боже,}

          \line {   "   " Тебе хвалим, Тебе славим,}

          \line {   "   " Теб ще славят вековете.}

        }

        \hspace #5
        \override #`(baseline-skip . ,bgCoupletBaselineSkip)
        \column {
          \line {   4. V podvizi i săvăršenstvo}

          \line {   "   " da poznavam milostta Ti,}

          \line {   "   " prevelikata Ti tajna,}

          \line {   "   " što razkriva na čoveka}

          \line {   "   " suetata na života.}
          \line { " " }
          \line {    5. Vsičko grešno na Zemjata}

          \line {   "   " e prehodno, mimoletno.}

          \line {   "   " Samo Ti si večen, Bože,}

          \line {   "   " Tebe hvalim, Tebe slavim,}

          \line {   "   " Teb šte slavjat vekovete.}

        } %column
      } % markup

      \markup \empty-three
      % include foreign translation(s) of the song
      \include "lyrics_de/029_stradna_dusho_lyrics_de.ly"

    } % bookpart
