\version "2.24.2"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref081
  \tocItem \markup "В зорите на Живота"
  \paper {
    print-all-headers = ##t
    print-page-number = ##t
    print-first-page-number = ##t

    % put page numbers on the bottom
    oddHeaderMarkup = \markup ""
    evenHeaderMarkup = \markup ""
    oddFooterMarkup = \markup
    \fill-line {
      ""
      \if \should-print-page-number \fromproperty #'page:page-number-string
    }
    evenFooterMarkup = \markup
    \fill-line {
      \if \should-print-page-number \fromproperty #'page:page-number-string
      ""
    }

    left-margin = 1.5\cm
    right-margin = 1.5\cm
    top-margin = 1.6\cm
    bottom-margin = 1.2\cm
    ragged-bottom = ##t % do not spread the staves to fill the whole vertical space

    % change distance between staves
    system-system-spacing =
    #'((basic-distance . 11)
       (minimum-distance . 6)
       (padding . 1)
       (stretchability . 12))
  }
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute {
      \clef treble
      \key c \major
      \omit Score.TimeSignature
      \cadenzaOn % allows custom bar lines
      \tempoFunc "Andante" 4 "63"

      c '4 | c'2 ( b4 c' ) d' |\time 4/4  e'4 c' \times 2/3 { b4 ( c'4 d' ) }

      \time 3/4  c'2  g'4 |g'2 ( fis'4 ) | \break

      g'4 a' g' | \time 4/4  g'8 ( fis' g' a' ) g'2  g'4 c''2 b'4 | c''4 a' g'2 | \break

      \time 5/4  f'4. ( g'8 ) e'2 d'4 |\time 4/4  c'4 b c'2  | \time 5/4  f'2 g'4 a' g' | \break

      g'4 fis' g' a' a' | \time 4/4  g'4 fis' g'2 | \time 5/4  g'4 c''2 d''4 e'' | \break

      d''4 c'' b' c'' a' | \time 4/4  g'4 g' g'8 ( fis' g' a' | \time 3/4  g'2 ) r4 | \time 4/4  e'2 d'4 c' | \break

      d'4 f' e' d' | c'4 ( b ) c'2  | f'2 g'4 a' | g'4 g' c'' a' | \break

      \time 3/4  a'4 g'2 | g'4 c''2 | b'4 a' g'4 \time 5/4 fis' g' a' g'2 | \time 3/4 \break

      d''2 c''4 | b' a' g'4 | \time 5/4 fis' g' a' g'2  | \time 6/4 e'2 c'4 ( e' ) d'2 | \break

      g'2 a'4 ( g' ) g'2 | \time 3/4  c''2 b'4 \tempo "rit." | a' g' f'8 ( g' ) | \time 4/4 e'4 d' c'8 ( b c' d' ) | \time 3/4  c'2 \bar "|."
    }

    \addlyrics {
      В~зо -- ри --
      те на Жи -- во -- та, в~зо -- ри -- те на Жи --
      во -- та Слън -- це из -- гря -- ва -- ше, Слън --
      це из -- гря -- ва -- ше, на При -- ро -- да гра
      -- ни -- ци о -- чер -- та -- ва -- ше, на При --
      ро -- да гра -- ни -- ци о -- чер -- та -- ва --
      ше. __ В~ду -- ша ми мо -- щен Дух про -- бу --
      ди,  в~ду -- ша ми мо -- щен Дух про -- бу --
      ди и в~сър -- це ми Лю -- бов съ -- бу -- ди,
      и в~сър -- це ми Лю -- бов съ -- бу -- ди, съ --
      бу -- ди, съ -- бу -- ди, и в~сър -- це ми Лю --
      бов съ -- бу -- ди.}

      \header {
        title = \titleFunc "В зорите на Живота" "V zorite na Života"
      }

      \midi{}

    } % score


  } % bookpart
