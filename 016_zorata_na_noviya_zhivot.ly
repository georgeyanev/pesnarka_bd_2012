\version "2.24.0"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref016
  \tocItem \markup "Зората на Новия живот – Zorata na Noviya zhivot"
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
      c'8 |e'4 g'8|c''4 g'8 |a'4 g'8 |c''4.| g'4. ~ |  g'4    g'8 |\break
      c''4 c''8| \once \autoBeamOn c''8 ([  b'8  ])  \noBeam  c''8 |d''4 b'8  |c''4. ( | c''4 ) a'8| a'4 a'8| \break
      d''4  c''8| b'4 a'8| a'4. | g'4. ( |g'4 ) g'8 | a'4 g'8 | g'4 f'8 | \break
      e'4 d'8| c'4. ( | c'4. ) | \bar "||"
      \tempoFunc "Più mosso" 8 "176"
      g'8  fis'8 g'8 | a'4 g'8 | g'4 g'8 | c''4. (| \break
      c''4. ) | c''8 b'8 c''8| d''4 c''8 | b'4  b'8 | b'4.  (| b'4 )  a'8| b'4 a'8 | \break
      g'4 fis'8 | g'4. (| g'4. ) | a'8 g'8 f'8 | f'4 f'8 | e'4 f'8 | g'4. (| \break
      g'4 ) g'8 | a'4 g'8 | g'4 fis'8 | g'4. (| g'4. )| d'8 e'8 f'!8| f'4 f'8 | \break
      e'4 f'8 | g'4. (|g'4 ) e'8 | g'4 f'8 | e'4 d'8 | c'4. ( | c' 4 ) s8 | \bar "|."
    }

    \addlyrics {
      "1. Зо" -- ра се чуд -- на за -- зо -- ря -- ва, зо --
      ра на све -- тъл нов жи -- вот; с~ве -- ли -- ко --
      ле -- пи -- е о -- гря -- ва по -- спре -- ли -- я се
      наш ки -- вот. В~но -- ви -- я све -- тъл тоз жи -- вот, __
      в~но -- ви -- я све -- тъл тоз жи -- вот, жи -- вот на
      Лю -- бов -- та.  в~но -- ви -- я све -- тъл тоз жи -- вот, __
      жи -- вот на Бла -- гост -- та, в~но -- ви -- я све -- тъл
      тоз жи -- вот, жи -- вот на Ра -- дост -- та.
    }

    \addlyrics {
      "1. Zo" -- ra se chud -- na za -- zo -- rya -- va, zo --
      ra na sve -- tal nov zhi -- vot; s~ve -- li -- ko --
      le -- pi -- e o -- grya -- va po -- spre -- li -- ya se
      nash ki -- vot. V~no -- vi -- ya sve -- tal toz zhi -- vot, __
      v~no -- vi -- ya sve -- tal toz zhi -- vot, zhi -- vot na
      Lyu -- bov -- ta.  v~no -- vi -- ya sve -- tal toz zhi -- vot, __
      zhi -- vot na Bla -- gost -- ta, v~no -- vi -- ya sve -- tal
      toz zhi -- vot, zhi -- vot na Ra -- dost -- ta.
    }

    \header {
      title = \titleFunc "Зората на Новия живот" "Zorata na Noviya zhivot"
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
      \line {   "   " Във крепост и виделина. }

      \line { " " }
      \line { "   " \italic {Припев ...} }
      \line { " " }

      \line { 5.  О тези лъчи от Бога идат, }
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
      \line { 2. I ptichki vazduha izpalnyat }
      \line {   "   " s vaztorg i sladki pesni v hor, }
      \line {   "   " Harmoniyata da dopalnyat }
      \line {   "   " V golemia nebesen dvor.}

      \line { " " }
      \line { "   " \italic {Pripev: } }
      \line {  "   " V novia svetal toz zhivot, (2) }

      \line { "   " Zhivot na lyubovta, }
      \line {  "   " V novia svetal toz zhivot,}
      \line { "   " Zhivot na blagostta, }
      \line { "   "  V novia svetal toz zhivot,}
      \line {  "   " Zhivot na radostta.}
      \line { " " }

      \line { 3. Trepti zorata lekokrila  }
      \line {   "   " i budi nashite dushi; }
      \line {   "   " kato lyubyashta mayka mila}
      \line {   "   " podkanva vsekigo: „Stani!“}

      \line { " " }
      \line { "   " \italic {Pripev ...} }
      \line { " " }

      \line { 4. Lachi ot lyubovta ni vlivat }
      \line {   "   " V gardite zhiva toplina, }
      \line {   "   " Sas sladka vyara ni povdigat }
      \line {   "   " Vav krepost i videlina. }

      \line { " " }
      \line { "   " \italic {Pripev ...} }
      \line { " " }

      \line { 5.  O tezi lachi ot Boga idat, }
      \line {   "   " Te palnyat nashite sartsa, }
      \line {   "   " I shepnat sladko, kak Toy vika: }
      \line {   "   " „Elate, moite detsa!“ }
      \line { " " }
      \line { "   " \italic {Pripev ...} }
      \line { " " }
    } %column
  } % markup

  \markup \empty-one

  % include foreign translation(s) of the song
  \include "lyrics_de/016_zorata_na_noviya_zhivot_lyrics_de.ly"

} % bookpart
