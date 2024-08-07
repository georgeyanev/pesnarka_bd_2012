\version "2.24.4"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref016
  \tocItem \markup "Зората на новия живот – Zorata na novija život"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute  {
      \clef treble
      \key c \major
      \time 3/8
      \tempoFunc "Moderato" 8 "160"
      \partial 8
      \autoBeamOff
      c'8 |e'4 g'8|c''4 g'8 |a'4 g'8 |c''4.| g'4. ~ |  g'4 g'8 |
      c''4 c''8| \break \once \autoBeamOn c''8 ([  b'8  ])  \noBeam  c''8 |d''4 b'8  |c''4. ~ | c''4  a'8| a'4 a'8|
      d''4  c''8|  b'4 a'8| \break a'4. | g'4. ~ | g'4  g'8 | a'4 g'8 | g'4 f'8 |
      e'4 d'8 | c'4. ~ | c'4.  |   \bar "||"
      \tempoFunc "Più mosso" 8 "176"
      g'8  fis'8 g'8 | \break a'4 g'8 | g'4 g'8 | c''4. ~ |
      c''4.  |   c''8 b'8 c''8| d''4 c''8 |  \break b'4  b'8 | b'4. ~ | b'4   a'8| b'4 a'8 |
      g'4 fis'8 | g'4. ~ | g'4.  |  a'8 g'8 f'8 | \break f'4 f'8 | e'4 f'8 | g'4. ~ |
      g'4  g'8 | a'4 g'8 | g'4 fis'8 | g'4. ~ | g'4. | \break d'8 e'8 f'?8| f'4 f'8 |
      e'4 f'8 | g'4. ~ |g'4  e'8 | g'4 f'8 | e'4 d'8 | c'4. ~ | c' 4 s8 | \bar "|."
    }

    \addlyrics {
      \set stanza = "1." Зо -- ра се чуд -- на за -- зо -- ря -- ва, __ зо --
      ра на све -- тъл нов жи -- вот; __ с~ве -- ли -- ко --
      ле -- пи -- е о -- гря -- ва __  по -- спре -- ли -- я се
      наш ки -- вот. __  В~но -- ви -- я све -- тъл тоз жи -- вот, __
      в~но -- ви -- я све -- тъл тоз жи -- вот, __  жи -- вот на
      Лю -- бов -- та, __   в~но -- ви -- я све -- тъл тоз жи -- вот, __
      жи -- вот на бла -- гост -- та, __  в~но -- ви -- я све -- тъл
      тоз жи -- вот, __  жи -- вот на ра -- дост -- та. __
    }

    \addlyrics {
      \set stanza = "1." Zo -- ra se čud -- na za -- zo -- rja -- va, __ zo --
      ra na sve -- tăl nov ži -- vot; __ s~ve -- li -- ko --
      le -- pi -- e o -- grja -- va __  po -- spre -- li -- ja se
      naš ki -- vot. __  V~no -- vi -- ja sve -- tăl toz ži -- vot, __
      v~no -- vi -- ja sve -- tăl toz ži -- vot, __  ži -- vot na
      Lju -- bov -- ta, __   v~no -- vi -- ja sve -- tăl toz ži -- vot, __
      ži -- vot na bla -- gost -- ta, __  v~no -- vi -- ja sve -- tăl
      toz ži -- vot, __  ži -- vot na ra -- dost -- ta. __
    }
    \addlyrics {
      \repeat unfold 32 { \skip 2 } (*жи -- вот)}
      \addlyrics {
        \repeat unfold 32 { \skip 2 } (*ži -- vot)}

        \header {
          title = \titleFunc "Зората на новия живот" "Zorata na novija život"
        }

        \midi{}
      }

      \markup \empty-two

      \markup \abs-fontsize #10 {
        \hspace #5
        \override #`(baseline-skip . ,bgCoupletBaselineSkip)

        \column {
          % score

          \line { 2. И птички въздуха изпълнят }
          \line {   "   " с възторг и сладки песни в хор, }
          \line {   "   " хармонията да допълнят }
          \line {   "   " в големия небесен двор.}

        }

        \hspace #4
        \override #`(baseline-skip . ,bgCoupletBaselineSkip)
        \column {
          \line { 2. I ptički văzduha izpălnjat }
          \line {   "   " s văztorg i sladki pesni v hor, }
          \line {   "   " harmonijata da dopălnjat }
          \line {   "   " v golemija nebesen dvor.}

        }
      } % m



      \markup \abs-fontsize #10 {
        \hspace #5
        \override #`(baseline-skip . ,bgCoupletBaselineSkip)

        \column {
          \line { "   " \italic {Припев: } }
          \line {  "   " В новия светъл тоз живот, (2) }
          \line { "   " живот на Любовта, }
          \line {  "   " в новия светъл тоз живот,}
          \line { "   " живот на благостта, }
          \line { "   "  в новия светъл тоз живот,}
          \line {  "   " живот на радостта.}
          \vspace #0.5

          \line { 3. Трепти зората лекокрила  }
          \line {   "   " и буди нашите души; }
          \line {   "   " като любяща майка мила}
          \line {   "   " подканва всекиго: „Стани!“.}

          \vspace #0.5
          \line { "   " \italic {Припев ...} }
          \vspace #0.5

          \line { 4. Лъчи от  любовта ни вливат }
          \line {   "   " в гърдите жива топлина, }
          \line {   "   " със сладка вяра ни повдигат }
          \line {   "   " във крепост и виделина. }

          \vspace #0.5
          \line { "   " \italic {Припев ...} }
          \vspace #0.5

          \line { 5.  О, тез лъчи от Бога идат, }
          \line {   "   " те пълнят нашите сърца }
          \line {   "   " и шепнат сладко как Той вика: }
          \line {   "   " „Елате, Mоите деца!“. }
          \vspace #0.5
          \line { "   " \italic {Припев ...} }
          \vspace #0.5
        }

        \hspace #4
        \override #`(baseline-skip . ,bgCoupletBaselineSkip)
        \column {

          \line { "   " \italic {Refrain: } }
          \line {  "   " V novija svetăl toz život, (2) }
          \line { "   " život na Ljubovta, }
          \line {  "   " v novija svetăl toz život,}
          \line { "   " život na blagostta, }
          \line { "   "  v novija svetăl toz život,}
          \line {  "   " život na radostta.}
          \vspace #0.5

          \line { 3. Trepti zorata lekokrila  }
          \line {   "   " i budi našite duši; }
          \line {   "   " kato ljubjašta majka mila}
          \line {   "   " podkanva vsekigo: „Stani!“.}

          \vspace #0.5
          \line { "   " \italic {Refrain ...} }
          \vspace #0.5

          \line { 4. Lăči ot  ljubovta ni vlivat }
          \line {   "   " v gărdite živa toplina, }
          \line {   "   " săs sladka vjara ni povdigat }
          \line {   "   " văv krepost i videlina. }

          \vspace #0.5
          \line { "   " \italic {Refrain ...} }
          \vspace #0.5

          \line { 5.  O, tez lăči ot Boga idat, }
          \line {   "   " te pălnjat našite sărca }
          \line {   "   " i šepnat sladko kak Toj vika: }
          \line {   "   " „Elate, Moite deca!“. }
          \vspace #0.5
          \line { "   " \italic {Refrain ...} }
          \vspace #0.5
        }
      } % markup

      \markup \empty-one

      % include foreign translation(s) of the song
      \include "../../lyrics/de/016_zorata_na_noviya_zhivot_lyrics_de.ly"

    } % bookpart
