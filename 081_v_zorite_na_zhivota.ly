\version "2.24.1"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref081
  \tocItem \markup "В зорите на Живота – V zorite na Života "
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute {
      \clef treble
      \key c \major
      \time 5/4
      \tempoFunc "Andante" 4 "63"

      \partial 4

      c '4 | c'2 ( b4 c' ) d' |\time 4/4  e'4 c' \times 2/3 { b4 ( c'4 d' ) }

      \time 3/4  c'2 \breathe g'4 |g'2 ( fis'4 ) | \break

      g'4 a' g' | \time 4/4  g'8 ( fis' g' a' ) g'2 \breathe g'4 c''2 b'4 | c''4 a' g'2 | \break

      \time 5/4  f'4. ( g'8 ) e'2 d'4 |\time 4/4  c'4 b c'2 \breathe | \time 5/4  f'2 g'4 a' g' | \break

      g'4 fis' g' a' a' | \time 4/4  g'4 fis' g'2 | \time 5/4  g'4 c''2 d''4 e'' | \break

      d''4 c'' b' c'' a' | \time 4/4  g'4 g' g'8 ( fis' g' a' | \time 3/4  g'2 ) r4 | \time 4/4  e'2 d'4 c' | \break

      d'4 f' e' d' | c'4 ( b ) c'2 \breathe | f'2 g'4 a' | g'4 g' c'' a' | \break

      \time 3/4  a'4 g'2 | g'4 c''2 | b'4 a' g'4 \time 5/4 fis' g' a' g'2 | \time 3/4 

      d''2 c''4 | b' a' g'4 | \time 5/4 fis' g' a' g'2 \breathe | \time 6/4 e'2 c'4 ( e' ) d'2 | \break

      g'2 a'4 ( g' ) g'2 | \time 3/4  c''2 b'4 \tempo "rit." | a' g' f'8 ( g' ) | \time 4/4 e'4 d' c'8 ( b c' d' ) | \time 3/4  c'2 \bar "|."
    }

    \addlyrics {
      В~зо -- ри --
      те на Жи -- во -- та, в~зо -- ри -- те на Жи --
      во -- та Слън -- це из -- гря -- ва -- ше, Слън --
      це из -- гря -- ва -- ше, на При -- ро -- да гра
      -- ни -- ци о -- чер -- та -- ва -- ше, на При --
      ро -- да гра -- ни -- ци о -- чер -- та -- ва --
      ше. В~ду -- ша ми мо -- щен Дух про -- бу --
      ди,  в~ду -- ша ми мо -- щен Дух про -- бу --
      ди и в~сър -- це ми Лю -- бов съ -- бу -- ди,
      и в~сър -- це ми Лю -- бов съ -- бу -- ди, съ --
      бу -- ди, съ -- бу -- ди, и в~сър -- це ми Лю --
      бов съ -- бу -- ди.}
      \addlyrics {
        V~zo -- ri --
        te na Ži -- vo -- ta, v~zo -- ri -- te na Ži --
        vo -- ta Slăn -- ce iz -- grja -- va -- še, Slăn --
        ce iz -- grja -- va -- še, na Pri -- ro -- da gra
        -- ni -- ci o -- čer -- ta -- va -- še, na Pri --
        ro -- da gra -- ni -- ci o -- čer -- ta -- va --
        še. V~du -- ša mi mo -- šten Duh pro -- bu --
        di,  v~du -- ša mi mo -- šten Duh pro -- bu --
        di i v~săr -- ce mi Lju -- bov să -- bu -- di,
        i v~săr -- ce mi Lju -- bov să -- bu -- di, să --
        bu -- di, să -- bu -- di, i v~săr -- ce mi Lju --
        bov să -- bu -- di.}

        \header {
          title = \titleFunc "В зорите на Живота" "V zorite na Života"
        }

        \midi{}

      } % score

      \markup \empty-two


      % include foreign translation(s) of the song
      \include "lyrics_de/081_v_zorite_na_zhivota_lyrics_de.ly"

    } % bookpart
