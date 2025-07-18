\version "2.24.4"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref176
  \tocItem \markup "Житно зърно "
  \paper {
    print-all-headers = ##t
    print-page-number = ##t
    print-first-page-number = ##t


    % put page numbers on the top and change the font style.
    oddHeaderMarkup = \markup
    \fill-line {
      ""
      \unless \on-first-page-of-part \fromproperty #'header:instrument
      \if \should-print-page-number \abs-fontsize #7 { \number \fromproperty #'page:page-number-string }
    }
    %% evenHeaderMarkup would inherit the value of
    %% oddHeaderMarkup if it were not defined here
    evenHeaderMarkup = \markup
    \fill-line {
      \if \should-print-page-number \abs-fontsize #7 { \number \fromproperty #'page:page-number-string }
      \unless \on-first-page-of-part \fromproperty #'header:instrument
      ""
    }

    oddFooterMarkup = \markup ""

    evenFooterMarkup = ""
    left-margin = 1.5\cm
    right-margin = 1.5\cm
    top-margin = 1\cm
    bottom-margin = 1.2\cm
    ragged-bottom = ##t % do not spread the staves to fill the whole vertical space
    top-markup-spacing.basic-distance = 0\mm % margin between page number and system for the first page
    top-system-spacing.basic-distance = 10\mm % margin between page number and system for the other pages

    % change distance between staves
    system-system-spacing =
    #'((basic-distance . 13.5)
       (minimum-distance . 6)
       (padding . 1)
       (stretchability . 12))
  }
  \score {
    \include "include/score-layout.ily"
    \new Voice \relative c' {
      \clef treble
      \key c \minor
      \time 4/4
      \tempoFunc "Moderato" 4 "72"
      \autoBeamOff
      \partial 4
      c4 | c2 d4 es | c g'2 g4^\markup { \huge \italic "sosten."} | bes8 as g f as2^\markup { \huge \italic "a tempo"} | g2. g4 | \break

      c,4. c8 d2 (| d4) d^\markup { \huge \italic "sosten."} f8 es d c | d4 d2 d4 |\break

      f8.^\markup { \huge \italic "a tempo"} f16 g8. g16 c4. \fermata c8 | \time 3/4 bes as g f as4 \fermata | g2 f4 | \break

      f4. g8 es4 | c2 d4 | d2 b4 | c2 \fermata \caesura c4 | \repeat volta 2 {

        \tempoFunc "Allegro vivace" 2. "50"
        c8 -> d es d c b | |\break

        c -> d es d c  b | c -> d es d c 4 | \break

        g'2.  | f8 f16 g16 as8 g f e |  f8 f16 g16 as8 ( [g]) f e | \break
        f f16 g16  as8 ( [g ] ) f c' | c2. (| c4) c c | \break

        f -> es d | es -> d c | b -> c d | c2. ( | c4)  c c  | \break

        f -> es d | g -> es c | b c d |
      }
      \alternative {
        {
          c2. ( | c4)  r4 c,4  |
        }  {c'2. \bar "||"  \break }
      }


      \time 4/4
      \tempoFunc "Moderato" 4 "72"
      \bar ".|:-||" c4. g8 bes as g f | as2 g4. f8 | f g es2 d4 | c2 r4
      \bar ":|."
    }

    \addlyrics {
      Бях жи -- те -- но зър -- но, за -- ро -- ве -- но в~зе -- мя -- та.

      Във сън дъл -- бок, __ жи -- во -- та не поз -- на -- вах.

      Но дой -- де лъч, при мен до -- стиг -- на свет -- ли -- на -- та

      и ме съ -- бу -- ди със сво -- я зов.

      От жи -- те -- но зър -- но аз ста -- нах мал -- ка птич -- ка,

      в~въз -- ду -- ха да хвър -- кам.

      Днес -- ка за пър -- ви път, доб -- ре пре -- ме -- не -- на,

      на ло -- зе -- на пръч -- ка кац -- нах __ и от слад -- ко -- то гроз -- де

      за пръв път хап -- нах, __ и от слад -- ко -- то гроз -- де

      за пръв път хап -- нах. __ От нах.

      Кол -- ко ху -- бав е жи -- во -- тът, то -- га -- ва си ка -- зах.}

      \header {
        title = \titleFunc #'ref_desc_9 "Житно зърно" "Žitno zărno"
      }

      \midi{}

    } % score


  } % bookpart
