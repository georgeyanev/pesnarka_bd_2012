\version "2.24.4"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {

  \label #'ref083_3
  \tocItem \markup "Имаше человек – Imaše čelovek"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute {
      \clef treble
      \key c \minor
      \omit Score.TimeSignature
      \cadenzaOn % allows custom bar lines
      \tempoFunc "Andante" 4 "66"

      \autoBeamOff
      g'4  g' ( ~ g'8 \times 2/3  { fis'16 [g'16 as'] } g'8 [ fis'!] ) g'1 f'4 es' d'8 c' es' d'

      c'4  \times 2/3  { b8 ( [c' d'8] )  } c'2 \bar"!" \break

      g'8 g' c''4 ( es'' d'' ) \tupletUp c''4 \tuplet 3/2 { b'8 ([ c''] ) d''8 } c''2  \tupletNeutral \bar "!" \break

      bes'4 as' g'4. g'8 c''4 bes' as' as' as'8 as' bes' c'' g'2 \bar"!" \break

      as'4 bes' c''2 d''4 c'' bes' c'' g'2.  \bar"!" \break

      f'2 g'8 [( as' )] bes'4 c'' bes' as'4 g' f' es' d'2 \bar"!" \break

      d'4 ( es' ) f' g' bes'8 as' as' bes' g'2 \bar"!" \break

      g'4 c''8 d'' es''4 d'' c'' bes' as'4 as'8 as' bes' c'' g'2 \bar"!" \break

      bes'2 as'4 g' f'4 es' d' es' f'4 g' as' ( bes' ) g'2. \bar"!" \break

      c''2 bes'4 as' g'4 f' es' d' es'4 f' g' as' bes' c'' g'2 \bar"!" \break

      g'4 es''2 d''4 c''4  \times 2/3  { b'8 ( [c'' d''8] ) }  c''2. \bar"!"  es'8. f'16 \noBeam g'2 \bar"!" \break

      g'4 as' f'4 f' f' es'8. f'16 g'2 \bar"!" g'4 as' f'4 f' es'8. f'16 g'2 \bar"!" \break

      g'4 c'' bes' as'8. bes'16 g'2 \bar"!" g'4 es''8. es''16 d''4 c'' bes' as'8 g' f'2 es'2. \bar"!" \break

      es'2 d'4 c' b! c'8. c'16 d'4 c'2 \bar"!" \break

      es'8. es'16 f'4 g' as'4 g' fis' g'8. g'16 \noBeam as'4 g'2  \bar"!" \break

      g'4 c''2 \bar"!" b'4  as'4 g' f' es' d'4 es' d' c'  \times 2/3  {
        b!4 ( c'4 d' )
      } c'2  \bar"!" \break

      es'4 es'2 c'4 d'4 es' c'2  \bar"!" f'4 as' g'  fis'4 g' as' g'2  \bar"!" \break

      g'4 c'' b'! c'' d'' es''4 c''2 \bar"!" g'4 bes' as' g' f' es'd'4 ( es' ) c'1 \bar "|."

    }


    \addlyrics {
      И -- ма --
      ше че -- ло -- век, про -- во -- ден от Бо --
      га, и -- ме -- то __ му И -- о -- ан. Той дой --
      де в~сви -- де -- тел -- ство да сви -- де -- тел
      -- ству -- ва за -- ра -- ди ви -- де -- ли -- на
      -- та, за да __ по -- вяр -- ват всич -- ки чрез не
      -- го. Не __ бе той ви -- де -- ли -- на -- та, но
      да сви -- де -- тел -- ству -- ва за ви -- де --
      ли -- на -- та. Той бе -- ше ис -- тин -- на --
      та ви -- де -- ли -- на, ко -- я -- то о -- све
      -- тя -- ва все -- ки -- го че -- ло -- ве -- ка,
      що и -- де на све -- та. В~све -- та бе и све
      -- тът чрез Не -- го ста -- на и све -- тът Го
      не поз -- на. В~Сво -- и -- те Си дой -- де, но
      Сво -- и -- те Му Го не при -- е -- ха. А ко
      -- и -- то Го при -- е -- ха, да -- де им власт
      да бъ -- дат ча -- да Бо -- жии, си -- реч, ко
      -- и -- то вяр -- ват в~Не -- го -- во -- то И --
      ме, ко -- и -- то не от кръв, ни -- то от по
      -- хот плът -- ска, ни -- то от по -- хот мъж --
      ка, но от Бо -- га се ро -- ди -- ха.}
      \addlyrics {
        I -- ma --
        še če -- lo -- vek, pro -- vo -- den ot Bo --
        ga, i -- me -- to __ mu I -- o -- an. Toj doj --
        de v~svi -- de -- tel -- stvo da svi -- de -- tel
        -- stvu -- va za -- ra -- di vi -- de -- li -- na
        -- ta, za da __ po -- vjar -- vat vsič -- ki črez ne
        -- go. Ne __ be toj vi -- de -- li -- na -- ta, no
        da svi -- de -- tel -- stvu -- va za vi -- de --
        li -- na -- ta. Toj be -- še is -- tin -- na --
        ta vi -- de -- li -- na, ko -- ja -- to o -- sve
        -- tja -- va vse -- ki -- go če -- lo -- ve -- ka,
        što i -- de na sve -- ta. V~sve -- ta be i sve
        -- tăt črez Ne -- go sta -- na i sve -- tăt Go
        ne poz -- na. V~Svo -- i -- te Si doj -- de, no
        Svo -- i -- te Mu Go ne pri -- e -- ha. A ko
        -- i -- to Go pri -- e -- ha, da -- de im vlast
        da bă -- dat ča -- da Bo -- žii, si -- reč, ko
        -- i -- to vjar -- vat v~Ne -- go -- vo -- to I --
        me, ko -- i -- to ne ot krăv, ni -- to ot po
        -- hot plăt -- ska, ni -- to ot po -- hot măž --
        ka, no ot Bo -- ga se ro -- di -- ha.}

        \header {
          title = \titleFunc "Имаше человек" "Imaše čelovek"
        }

        \midi{}

      } % score

      \pageBreak

      % include foreign translation(s) of the song
      \include "../../lyrics/de/084_imashe_chelovek_lyrics_de.ly"

    } % bookpart