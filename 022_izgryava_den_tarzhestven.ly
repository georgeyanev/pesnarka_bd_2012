\version "2.24.0"

% include paper part and global functions
\include "include/globals.ily"

"rightBraces022" = \markup {
  \column {
    % repeat braces
    \translate #'(0 . -20.1 )
    \right-brace #20

  }
  \column {
    % repeat numbers
    \translate #'(0 . -20.7 )
    2
  }
}

\bookpart {
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute {
      \clef treble
      \key d \minor
      \time 4/4
      \tempoFunc "Andante" 4 "92"
      \autoBeamOff

      \partial 4.

      a8 d'8 e'8 |f'4 e'4 f'4 e'4 |d'4 a'4 ~ a'8 a'8 bes'8 a'8 \break |
      d''4 a'4 bes'4 a'4 |\time 3/4  g'4 a'2 | \time 4/4  g'4 a'8 g'8 f'4. e'8 \break
      g'4 f'2 f'4 |  e'4. d'8 f'4. e'8 | e'4 d'2 r8 \tempo "Più vivo" a8 | \bar "||" \time 2/4 \break
      d'8 e'8 f'8 g'8 | \time 4/4  a'4 a'2 a'4 | bes'4 a'4 d''4. a'8 \break |
      bes'4 a'4 ~ a'8 g'8 a'8 g'8 |  \time 6/4  f'4. e'8 g'4 f'2 f'4 | \time 4/4  e'4. d'8 f'4. e'8 \break |
      e'4 d'4 ~ d'8 d''8 d''8 e''8 | \time 6/4  f''4. e''8 e''4 d''2 c''4 \break
      \time 4/4  bes'4. a'8 a'4. g'8 |  \time 3/4  a'4 a'2 | \time 5/4  c''4. c''8 d''4 g'2 \break |
      f'4. g'8 a'4 a'4. d'8 | f'4. d'8 f'4 e'2 | d'4. a8 d'4 d'2 \bar "|." \pageBreak
    }
    \addlyrics {
      Из -- гря -- ва ве -- че ден тър -- же -- ствен, пред -- ре -- че
      -- ни -- ят ден Бо -- же -- ствен, на дни --
      те ди -- а -- де -- ма, със свет -- ли -- на го
      -- ля -- ма. Е -- ла -- те да жи -- ве -- ем във
      Лю -- бов -- та чу -- дес -- на. Е -- ла -- те
      да при -- е -- мем таз бла -- го -- дат не --
      бес -- на, е -- ла -- те да при -- е -- мем таз
      бла -- го -- дат не -- бес -- на, що жи -- во --
      та об -- но -- вя -- ва и веч -- но тя го под
      -- мла -- дя -- ва.
    }

    \addlyrics {
      Iz -- grya -- va ve -- che den tar -- zhe -- stven, pred -- re -- che
      -- ni -- yat den Bo -- zhe -- stven, na dni --
      te di -- a -- de -- ma, sas svet -- li -- na go
      -- lya -- ma. E -- la -- te da zhi -- ve -- em vav
      Lyu -- bov -- ta chu -- des -- na. E -- la -- te
      da pri -- e -- mem taz bla -- go -- dat ne --
      bes -- na, e -- la -- te da pri -- e -- mem taz
      bla -- go -- dat ne -- bes -- na, shto zhi -- vo --
      ta ob -- no -- vya -- va i vech -- no tya go pod
      -- mla -- dya -- va.
    }
    \header {
      title = \titleFunc "Изгрява вече ден тържествен" "Izgryava veche den tarzhestven"
    }

    \midi{}

  } % score

  \pageBreak

  \markup \fontsize #bgCoupletFontSize {
    \hspace #1
    \override #`(baseline-skip . ,bgCoupletBaselineSkip)
    \column {
      \line { 1. Изгрява вече ден тържествен, }
      \line {   "   " предреченият ден Божествен, }
      \line {   "   " на дните диадема}
      \line {   "   " със светлина голяма. }

      \line { " " }
      \line { "   " \italic {Припев: } }
      \line {   "   " Елате да живеем }
      \line {   "   " във Любовта чудесна! }
      \line {   "   " Елате да приемем}
      \line {   "   " таз благодат небесна, }
      \line {   "   " що живота обновява}
      \line {   "   " и вечно тя го подмладява! }

      \line { " " }
      \line { 2. И носи радост за душата, }
      \line {   "   " и прогласява свободата}
      \line {   "   " и мир с Любов пресвята}
      \line {   "   " за всички на Земята. }
      \line {   "   " Елате да живеем... }

      \line { " " }
      \line { "   " \italic {Припев: } }

      \line { " " }
      \line {  3.  О, ден прекрасен, вечно благо, }
      \line {   "   " кому за тебе не е драго? }
      \line {   "   " За всичките години}
      \line {   "   " по-скоро обнови ни! }
      \line {   "   " Елате да живеем... }

      \line { " " }
      \line { "   " \italic {Припев: } }
    }    \"rightBraces022"

    \hspace #5
    \override #`(baseline-skip . ,bgCoupletBaselineSkip)
    \column {
      \line { 1. Izgryava veche den tarzhestven, }
      \line {   "   " predrecheniyat den Bozhestven, }
      \line {   "   " na dnite diadema}
      \line {   "   " sas svetlina golyama. }

      \line { " " }
      \line { "   " \italic {Refrain: } }
      \line {   "   " Elate da zhiveem }
      \line {   "   " vav Lyubovta chudesna! }
      \line {   "   " Elate da priemem}
      \line {   "   " taz blagodat nebesna, }
      \line {   "   " shto zhivota obnovyava}
      \line {   "   " i vechno tya go podmladyava! }

      \line { " " }
      \line { 2. I nosi radost za dushata, }
      \line {   "   " i proglasyava svobodata}
      \line {   "   " i mir s Lyubov presvyata}
      \line {   "   " za vsichki na Zemyata. }
      \line {   "   " Elate da zhiveem... }

      \line { " " }
      \line { "   " \italic {Refrain: } }

      \line { " " }
      \line {  3.  O, den prekrasen, vechno blago, }
      \line {   "   " komu za tebe ne e drago? }
      \line {   "   " Za vsichkite godini}
      \line {   "   " po-skoro obnovi ni! }
      \line {   "   " Elate da zhiveem... }

      \line { " " }
      \line { "   " \italic {Refrain: } }
    } %column
    \"rightBraces022"
  } % markup



  \pageBreak

  % include foreign translation(s) of the song
  \include "lyrics_de/022_izgryava_den_tarzhestven_lyrics_de.ly"

} % bookpart
