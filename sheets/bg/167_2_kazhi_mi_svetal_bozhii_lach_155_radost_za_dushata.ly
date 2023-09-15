\version "2.24.2"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref167_2
  \tocItem \markup "Кажи ми, светли Божи лъч"
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
    #'((basic-distance . 10)
       (minimum-distance . 6)
       (padding . 1)
       (stretchability . 12))
  }
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute {
      \clef treble
      \key g \major
      \time 3/4
      \tempoFunc "Andante" 4 "66"
      \autoBeamOff
      g4  b4  d'4 | % 2
      b'2  a'4 | % 3
      \time 2/4  | % 3
      g'4 (  a'16 [  g'16  fis'16  g'16
      ] | % 4
      a'4. )  fis'8 | % 5
      g'2 \break | % 6
      \time 4/4  | % 6
      c''4.  b'8  b'4  a'4 | % 7
      g'4  g'16 ( [  fis'16  g'16  a'16
      ) ]  g'2 | % 8
      \time 3/4  | % 8
      b'4.  b'8  b'4 \break | % 9
      \time 4/4  | % 9
      d''2  c''4.  b'8 |
      c''8.  b'16  a'8.  gis'16
      a'2 | % 11
      \time 5/4  | % 11
      g'4  fis'4  e'8.  e'16  e'2
      \break | % 12
      d'4  c'4  c'8.  c'16  e'2 | % 13
      d'4  a4  a8.  a16  b2 ^\fermata
      \bar "|."
    }

    \addlyrics {
      Ка -- жи ми, свет -- ли Бо --
      жи лъч, бла -- го -- то
      на Жи -- во --   та, свет --
      ли -- я прав път на чис -- ти --
      те "ду-" -- ши, чис -- ти -- те "ду-" --
      ши, чис -- ти -- те ду -- ши, чис --
      ти -- те ду -- ши.}

      \header {
        title = \titleFunc "Кажи ми, светли Божи лъч" "Kaži mi, svetli Boži lăč"
      }

      \midi{}

    } % score

    \label #'ref155_1
    \tocItem \markup "Радост, радост за душата"
    \score {
      \include "include/score-layout.ily"

      \new Voice \absolute {
        \clef treble
        \key d \major
        \time 3/4
        \tempoFunc "Adagio" 4 "54"
        \autoBeamOff
        d''4.  cis''8  e''16  d''16
        cis''16  b'16 | % 2
        a'4 ( ~  a'8 [ \once \omit TupletBracket
        \times 2/3  {
          g'16  a'16  b'16 ) ]
        }
        a'8. ( [  g'16 ) ] \break | % 3

        \times 2/3  {
          fis'8 ( [  d'8 ) ] e'8
        }

        \times 2/3  {
          d'8   e'8  fis'8
        }
        e'4 ^\fermata \noBreak | % 4

        \times 2/3  {
          d'8 ([  fis'8 ]) a'8
        }
        b'16  a'16  d''16  cis''16
        e''16  d''16  cis''16  d''16
        \break | % 5
        \time 2/4
        b'4  a'8. [(  g'16 )]
        \times 2/3  {
          fis'8 ( [  e'8 ) ] fis'8
        }
        % 6
        g'8  fis'8  e'4  d'4 \time 3/4 \break \repeat
        volta 2 {
          | % 7
          d'4  d'4.  d'8 | % 8
          d'4  d'2 | % 9
          e'4  e'4.  g'8 |
          fis'4  fis'2 \break | % 11
          a'4  a'4.  a'8 | % 12
          b'4  b'2 | % 13
          cis''4  cis''4.  cis''8 | % 14
          d''4  d''2
        }

      }

      \addlyrics {
        Ра -- дост, "Ра-" -- дост за ду -- ша
        --  та __  но -- си
        Чис -- то -- та -- та. Ра -- дост,
        "Ра-" -- дост, "Ра-" -- дост, "Ра-" -- дост
        за ду -- ша -- та __  но -- си
        Чис -- то -- та -- та. Чис -- ти бъ --
        де -- те ка -- то пче -- ли -- те.
        Чис -- ти бъ -- де -- те ка -- то
        цве -- тя -- та.
      }

      \header {
        title = \titleFunc "Радост, радост за душата" "Radost, radost za dušata"
      }

      \midi{}

    } % score


  } % bookpart

  % Più mosso
  %
