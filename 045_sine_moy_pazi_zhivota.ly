\version "2.24.1"

% include paper part and global functions
\include "include/globals.ily"

"rightBraces045" = \markup {
  \column {
    % repeat braces
    \translate #'(0 . -13.5 )
    \right-brace #44

    \translate #'(0 . -15.4 )
    \right-brace #44
  }
  \column {
    % repeat numbers
    \translate #'(0 . -13.9 )
    2

    \translate #'(0 . -19.8 )
    2
  }
}

\bookpart {
  \label #'ref045
  \tocItem \markup "Сине мой, пази живота – Sine moj, pazi života"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute  {
      \clef treble
      \key a \minor
      \time 4/4
      \tempoFunc "Andante" 4 "72"
      \autoBeamOff
      \partial 4


      e'8 e'8 | a'4 b' c''4 b' | a'4 gis'2 e'8 e' | e''4 f'' e''4 d'' | \break 
      
       c''2 r4 b'8 a'  |  gis'4 f'  e'4 dis' |  f'4 e'2  b'8 c'' \break |

      d''4 e'' c''4 b' | a'2 r4 g'8 g' \repeat volta 2 {
        |  c''4 g' c''4 d'' | e''4 c''2 e''8 f'' | g''4 f'' e''4 d'' | c''2 r4 e'8 e' | a'4 b'  c''4 d'' \break |

        e''4 b'2 d''8 d'' c''4 b' a'4 gis' |
      } \alternative { { a'2 r4 g'8 g'  } { a'2 } } \bar "|."
    }

    \addlyrics {
      Си -- не мой, па -- зи Жи -- во -- та, "скри-" -- ти -- я у
      те -- бе жар; той без -- це -- нен е по сми -- съл и ве --
      ли -- ко -- ле -- пен дар. Дух без -- смър -- тен, Дух не -- тле -- нен,
      туй, ко -- е -- то веч -- но бди и ра -- бо -- ти без у --
      мо -- ра, не -- пре -- стан -- но в~теб гра -- ди! Дух без -- ди.
    }

    \addlyrics {
      Si -- ne moj, pa -- zi Ži -- vo -- ta, skri -- ti -- ja u
      te -- be žar; toj bez -- ce -- nen e po smi -- săl i ve --
      li -- ko -- le -- pen dar. Duh bez -- smăr -- ten, Duh ne -- tle -- nen,
      tuj, ko -- e -- to več -- no bdi i ra -- bo -- ti bez u --
      mo -- ra, ne -- pre -- stan -- no v~teb gra -- di! Duh bez -- di.
    }
    \header {
      title = \titleFunc "Сине мой, пази живота" "Sine moj, pazi života"
    }

    \midi{}

  } % score

  \markup \fontsize #bgCoupletFontSize {
    \hspace #1
    \override #`(baseline-skip . ,bgCoupletBaselineSkip)
    \column {
      \vspace #0.3

      \line { 2. Ти си тоз Живот реален, }

      \line {   "   " синко, себе си познай! }

      \line {   "   " Твойта сила е голяма, }

      \line {   "   " дните твои нямат край. }

      \line {   "   " Ти създаваш всеки подтик, }

      \line {   "   " благородния стремеж,}

      \line {   "   " идеалите високи}

      \line {   "   " и красивия копнеж.}
      \vspace #0.2

      \line {   3. Тази плът ти е одежда,}

      \line {   "   " а Земята — школен чин;}

      \line {   "   " ти живееш и се учиш,}

      \line {   "   " като малък Божи Син.}

      \line {   "   " Дързост, мили мой Животе,}

      \line {   "   " с теб е Божата Любов!}

      \line {   "   " Тя зове те все нагоре —}

      \line {   "   " в съвършенство и свят Нов.}
    }\"rightBraces045"

    \hspace #5
    \override #`(baseline-skip . ,bgCoupletBaselineSkip)
     \column {
      \vspace #0.3

      \line { 2. Ti si toz Život realen, }

      \line {   "   " sinko, sebe si poznaj! }

      \line {   "   " Tvojta sila e goljama, }

      \line {   "   " dnite tvoi njamat kraj. }

      \line {   "   " Ti săzdavaš vseki podtik, }

      \line {   "   " blagorodnija stremež,}

      \line {   "   " idealite visoki}

      \line {   "   " i krasivija kopnež.}
      \vspace #0.2

      \line {   3. Tazi plăt ti e odežda,}

      \line {   "   " a Zemjata — školen čin;}

      \line {   "   " ti živeeš i se učiš,}

      \line {   "   " kato malăk Boži Sin.}

      \line {   "   " Dărzost, mili moj Živote,}

      \line {   "   " s teb e Božata Ljubov!}

      \line {   "   " Tja zove te vse nagore —}

      \line {   "   " v săvăršenstvo i svjat Nov.}
    } \"rightBraces045" %column
  } % markup

  % include foreign translation(s) of the song
  \include "lyrics_de/045_sine_moy_pazi_zhivota_lyrics_de.ly"

} % bookpart
