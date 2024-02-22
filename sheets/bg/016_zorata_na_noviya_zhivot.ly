\version "2.24.3"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref016
  \tocItem \markup "Зората на новия живот"
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
      Лю -- бов -- та, __   в~но -- ви -- я све -- тъл тоз жи -- вот, __
      жи -- вот на бла -- гост -- та, __  в~но -- ви -- я све -- тъл
      тоз жи -- вот, __  жи -- вот на ра -- дост -- та. __
    }

    \header {
      title = \titleFunc #'ref_desc_1 "Зората на новия живот" "Zorata na Novija život"
    }

    \midi{}
  } % score

  \pageBreak

  \markup  \abs-fontsize #11 {
    \hspace #15
    \override #`(baseline-skip . ,bgCoupletBaselineSkip) % affects space between column lines
    \column {
      \line { 2. И птички въздуха изпълнят }
      \line {   "   " с възторг и сладки песни в хор, }
      \line {   "   " хармонията да допълнят }
      \line {   "   " в големия небесен двор.}

      \line { " " }
      \line { "   " \italic {Припев: } }
      \line {  "   " В новия светъл тоз живот, (2) }
      \line { "   " живот на Любовта, }
      \line {  "   " в новия светъл тоз живот,}
      \line { "   " живот на благостта, }
      \line { "   "  в новия светъл тоз живот,}
      \line {  "   " живот на радостта.}
      \line { " " }

      \line { 3. Трепти зората лекокрила  }
      \line {   "   " и буди нашите души; }
      \line {   "   " като любяща майка мила}
      \line {   "   " подканва всекиго: „Стани!“.}

      \line { " " }
      \line { "   " \italic {Припев ...} }
      \line { " " }

      \line { 4. Лъчи от  любовта ни вливат }
      \line {   "   " в гърдите жива топлина, }
      \line {   "   " със сладка вяра ни повдигат }
      \line {   "   " във крепост и виделина. }

      \line { " " }
      \line { "   " \italic {Припев ...} }
      \line { " " }

      \line { 5.  О, тез лъчи от Бога идат, }
      \line {   "   " те пълнят нашите сърца }
      \line {   "   " и шепнат сладко как Той вика: }
      \line {   "   " „Елате, Mоите деца!“. }
      \line { " " }
      \line { "   " \italic {Припев ...} }
      \line { " " }
    }
  } % markup

} % bookpart
