\version "2.24.4"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref081
  \tocItem \markup "В зорите на живота"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute {
      \clef treble
      \key c \major
      \omit Score.TimeSignature
      \cadenzaOn % allows custom bar lines

      \tempoFunc "Andante" 4 "63"

      c '4  c'2 ( b4 c' ) d'   e'4 c' \times 2/3 { b4 ( c'4 d' ) }

      c'2 \bar "!"  \break g'4 g'2 ( fis'4 )

      g'4 a' g'    g'8 ( [fis' g' a'] ) g'2  \bar "!" \break

      g'4 c''2 b'4 c''4 a' g'2 \bar "!" f'4. ( g'8 ) e'2 d'4 c'4 b c'2  \bar "!"  \break

      f'2 g'4 a' g' g'4 fis' g' a' a' g'4 fis' g'2 \bar "!" \break

      g'4 c''2 d''4 e'' d''4 c'' b' c'' a' g'4 g' g'8 ( [ fis' g' a' ]  g'2  ) r4  \bar "!" \break

      e'2 d'4 c' d'4 f' e' d'  c'4 ( b ) c'2 \bar "!" \break f'2 g'4 a'  g'4 g' c'' a' a'4 g'2 \bar"!" \break

      g'4 c''2  b'4 a' g'4 fis' g' a' g'2 \bar "!"

      d''2 c''4  b' a' g'4 fis' g' a' g'2  \bar "!" \break

      e'2 c'4 ( e' ) d'2 \bar "!" g'2 a'4 ( g' ) g'2 \bar "!" c''2 b'4 \tempo "rit." a' g' f'8 ( [g'] )   e'4 d' c'8 ( [b c' d' ])   c'2 \bar "."
    }

    \addlyrics {
      В~зо -- ри --
      те на жи -- во -- та, в~зо -- ри -- те на жи --
      во -- та слън -- це из -- гря -- ва -- ше, слън --
      це из -- гря -- ва -- ше, на при -- ро -- да гра
      -- ни -- ци о -- чер -- та -- ва -- ше, на при --
      ро -- да гра -- ни -- ци о -- чер -- та -- ва --
      ше. __ В~ду -- ша ми мо -- щен дух про -- бу --
      ди,  в~ду -- ша ми мо -- щен дух про -- бу --
      ди и в~сър -- це ми лю -- бов съ -- бу -- ди,
      и в~сър -- це ми лю -- бов съ -- бу -- ди, съ --
      бу -- ди, съ -- бу -- ди, и в~сър -- це ми лю --
      бов съ -- бу -- ди.}

      \header {
        title = \titleFunc #'ref_desc_4 "В зорите на живота" "V zorite na Života"
      }

      \midi{}

    } % score


  } % bookpart
