\version "2.24.1"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref016
  \tocItem \markup "Зората на Новия живот – Zorata na Novija život"
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
      c'8 |e'4 g'8|c''4 g'8 |a'4 g'8 |c''4.| g'4. ~ |  g'4 g'8 |\break
      c''4 c''8| \once \autoBeamOn c''8 ([  b'8  ])  \noBeam  c''8 |d''4 b'8  |c''4. ~ | c''4  a'8| a'4 a'8| \break
      d''4  c''8| b'4 a'8| a'4. | g'4. ~ | g'4  g'8 | a'4 g'8 | g'4 f'8 | \break
      e'4 d'8| c'4. ~ | c'4.  | \bar "||"
      \tempoFunc "Più mosso" 8 "176"
      g'8  fis'8 g'8 | a'4 g'8 | g'4 g'8 | c''4. ~ | \break
      c''4.  | c''8 b'8 c''8| d''4 c''8 | b'4  b'8 | b'4. ~ | b'4   a'8| b'4 a'8 | \break
      g'4 fis'8 | g'4. ~ | g'4.  | a'8 g'8 f'8 | f'4 f'8 | e'4 f'8 | g'4. ~ | \break
      g'4  g'8 | a'4 g'8 | g'4 fis'8 | g'4. ~ | g'4. | d'8 e'8 f'?8| f'4 f'8 | \break
      e'4 f'8 | g'4. ~ |g'4  e'8 | g'4 f'8 | e'4 d'8 | c'4. ~ | c' 4 s8 | \bar "|."
    }

    \addlyrics {
      "1. Зо" -- ра се чуд -- на за -- зо -- ря -- ва, __ зо --
      ра на све -- тъл нов жи -- вот; __ с~ве -- ли -- ко --
      ле -- пи -- е о -- гря -- ва __  по -- спре -- ли -- я се
      наш ки -- вот. __  В~но -- ви -- я све -- тъл тоз жи -- вот, __
      в~но -- ви -- я све -- тъл тоз жи -- вот, __  жи -- вот на
      Лю -- бов -- та. __   в~но -- ви -- я све -- тъл тоз жи -- вот, __
      жи -- вот на Бла -- гост -- та, __  в~но -- ви -- я све -- тъл
      тоз жи -- вот, __  жи -- вот на Ра -- дост -- та. __ 
    }

   \addlyrics {
      "1. Zo" -- ra se čud -- na za -- zo -- rja -- va, __ zo --
      ra na sve -- tăl nov ži -- vot; __ s~ve -- li -- ko --
      le -- pi -- e o -- grja -- va __  po -- spre -- li -- ja se
      naš ki -- vot. __ V~no -- vi -- ja sve -- tăl toz ži -- vot, __
      v~no -- vi -- ja sve -- tăl toz ži -- vot, __ ži -- vot na
      Lju -- bov -- ta.  __  v~no -- vi -- ja sve -- tăl toz ži -- vot, __
      ži -- vot na Bla -- gost -- ta, __ v~no -- vi -- ja sve -- tăl
      toz ži -- vot, __  ži -- vot na Ra -- dost -- ta. __ 
    }

    \header {
      title = \titleFunc "Зората на Новия живот" "Zorata na Novija život"
    }

    \midi{}
  } % score

  \pageBreak

  \markup \fontsize #+1.7 {
    \hspace #5
    \override #'(baseline-skip . 1.8)
    \column {
      \line { 2. И птички въздуха изпълнят }
      \line {   "   " с възторг и сладки песни в хор, }
      \line {   "   " Хармонията да допълнят }
      \line {   "   " В големия небесен двор.}

      \line { " " }
      \line { "   " \italic {Припев: } }
      \line {  "   " В новия светъл тоз живот, (2) }
      \line { "   " Живот на любовта, }
      \line {  "   " В новия светъл тоз живот,}
      \line { "   " Живот на благостта, }
      \line { "   "  В новия светъл тоз живот,}
      \line {  "   " Живот на радостта.}
      \line { " " }

      \line { 3. Трепти зората лекокрила  }
      \line {   "   " и буди нашите души; }
      \line {   "   " като любяща майка мила}
      \line {   "   " подканва всекиго: „Стани!“}

      \line { " " }
      \line { "   " \italic {Припев ...} }
      \line { " " }

      \line { 4. Лъчи от любовта ни вливат }
      \line {   "   " В гърдите жива топлина, }
      \line {   "   " Със сладка вяра ни повдигат }
      \line {   "   " във крепост и виделина. }

      \line { " " }
      \line { "   " \italic {Припев ...} }
      \line { " " }

      \line { 5.  О, тез лъчи от Бога идат, }
      \line {   "   " Те пълнят нашите сърца, }
      \line {   "   " И шепнат сладко, как Той вика: }
      \line {   "   " „Елате, моите деца!“ }
      \line { " " }
      \line { "   " \italic {Припев ...} }
      \line { " " }
    }

    \hspace #5
    \override #'(baseline-skip . 1.8)
        \column {
      \line { 2. I ptički văzduha izpălnjat }
      \line {   "   " s văztorg i sladki pesni v hor, }
      \line {   "   " Harmonijata da dopălnjat }
      \line {   "   " V golemija nebesen dvor.}

      \line { " " }
      \line { "   " \italic {Pripev: } }
      \line {  "   " V novija svetăl toz život, (2) }
      \line { "   " Život na ljubovta, }
      \line {  "   " V novija svetăl toz život,}
      \line { "   " Život na blagostta, }
      \line { "   "  V novija svetăl toz život,}
      \line {  "   " Život na radostta.}
      \line { " " }

      \line { 3. Trepti zorata lekokrila  }
      \line {   "   " i budi našite duši; }
      \line {   "   " kato ljubjašta majka mila}
      \line {   "   " podkanva vsekigo: „Stani!“}

      \line { " " }
      \line { "   " \italic {Pripev ...} }
      \line { " " }

      \line { 4. Lăči ot ljubovta ni vlivat }
      \line {   "   " V gărdite živa toplina, }
      \line {   "   " Săs sladka vjara ni povdigat }
      \line {   "   " văv krepost i videlina. }

      \line { " " }
      \line { "   " \italic {Pripev ...} }
      \line { " " }

      \line { 5.  O, tez lăči ot Boga idat, }
      \line {   "   " Te pălnjat našite sărca, }
      \line {   "   " I šepnat sladko, kak Toj vika: }
      \line {   "   " „Elate, moite deca!“ }
      \line { " " }
      \line { "   " \italic {Pripev ...} }
      \line { " " }
    } %column
  } % markup

  \markup \empty-one

  % include foreign translation(s) of the song
  \include "lyrics_de/016_zorata_na_noviya_zhivot_lyrics_de.ly"

} % bookpart
