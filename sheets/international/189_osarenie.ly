\version "2.24.3"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref189
  \tocItem \markup "Мелодия – Озарение – Melodija – Ozarenie"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute {
      \clef treble
      \key g \minor
      \time 3/8
      \tempoFunc "Moderato" 8 "120"
      \autoBeamOff
      d''4 bes'8 | % 2
      d''4 bes'8 | % 3
      d''4. | % 4
      g''8 ( [ f''8 ) ] es''8 | % 5
      es''4 c''8 | % 6
      es''4 c''8 | % 7
      es''4. | % 8
      c''8 ( [ d''8 ) ] es''8 \break | % 9
      f''4 es''8 |
      es''4 d''8 | % 11
      d''4 c''8 | % 12
      d''4. | % 13
      g'8 ( [  a'8 ) ] bes'8 | % 14
      bes'4  a'8 \break | % 15
      a'4  g'8 | % 16
      g'4  d'8 | % 17
      g'4. | % 18
      g'8 ( [  a'8 ) ] bes'8 | % 19
      bes'4  a'8 |
      a'4  g'8 | % 21
      g'4  d'8 | % 22
      g'4. \bar "|."
    }

    \addlyrics {
      Без -- гра -- нич -- на шир, див
      -- на кра -- со -- та и мир,
      слън -- це за чо -- веш -- ки --
      те ду -- ши но -- си свя -- та
      Лю -- бов -- та без -- спир, но --
      си свя -- та Лю -- бов -- та без --
      спир.}
     \addlyrics {
      Bez -- gra -- nič -- na šir, div
      -- na kra -- so -- ta i mir,
      slăn -- ce za čo -- veš -- ki --
      te du -- ši no -- si svja -- ta
      Lju -- bov -- ta bez -- spir, no --
      si svja -- ta Lju -- bov -- ta bez --
      spir.}

        \header {
          title = \titleFunc "Мелодия – Озарение" "Melodija – Ozarenie"
        }

        \midi{}

      } % score

      \markup \fontsize #bgCoupletFontSize {
        \hspace #3
        \override #`(baseline-skip . ,bgCoupletBaselineSkip)
        \column {

          \line {   2.  Благ живот струи }
          \line {   "   " в топли слънчеви лъчи }
          \line {   "   " и душите славят в Светлина }
          \line {   "   " благия Отец на Любовта. (2) }
          \line {   "   " }
          \line {   3. Всичко е Любов, }
          \line {   "   " радост, сила и живот. }
          \line {   "   " Свята Божия виделина }
          \line {   "   " озарява тази красота. (2)}
        }

        \hspace #5
        \override #`(baseline-skip . ,bgCoupletBaselineSkip)
          \column {
          \line {   2.  Blag život strui }
          \line {   "   " v topli slănčevi lăči }
          \line {   "   " i dušite slavjat v Svetlina }
          \line {   "   " blagija Otec na Ljubovta. (2) }
          \line {   "   " }
          \line {   3. Vsičko e Ljubov, }
          \line {   "   " radost, sila i život. }
          \line {   "   " Svjata Božija videlina }
          \line {   "   " ozarjava tazi krasota. (2)}
        } %column
      } % markup

    

    \markup \empty-two
      % include foreign translation(s) of the song
      \include "../../lyrics/de/189_osarenie_lyrics_de.ly"

    } % bookpart

    % Più mosso
    %
