\version "2.24.4"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {

  \label #'ref028
  \tocItem \markup "Стани, стани"

  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute {
      \clef treble
      \key g \minor
      \time 3/4
      \tempoFunc "Andantino" 4 "72"
      \autoBeamOff
      \partial 4
      d'4 | g'2 d'4 | bes'2 a'4 | g'4 fis' g' |  a'4 d' es'  \break
      d'2 d'4 |  d''2 g'4 | es''2 d''4 | c''4 bes' a' \break |
      bes'4 c'' d'' | a'2 a'4 | f''2 d''4 |  g''2 \fermata f''4 \break |
      es''4 d'' c'' | bes'4 c'' d'' ~ | d''4  r a' | c''2 a'4 \break |
      d''2 a'4 | c''4 bes' a' | g'4 fis' a' | g'2 r4 | \time 2/4 \break |
      \bar ".|:-||" d''4 d'' es'' es'' | d''4 c''|  d''2 | c''4 c'' d'' c'' \break |
      c'' a' | bes'2 | bes'4 c'' d'' es'' | es''4 es'' | d''2 \break |
      a'4 c'' bes' a' | fis'4 a' | g'2  \bar ":|." \break
    }


    \addlyrics {
      Ста -- ни, ста -- ни и Гос -- под ще те о -- жи -- ви;
      ста -- ни, ста -- ни и Гос -- под ще те въз --
      кре -- си; ста -- ни, ста -- ни и с~Лю -- бов --
      та за -- поч -- ни; __ ста -- ни, ста -- ни и в~Ис
      -- ти -- на се об -- ле -- чи. В~Ис -- ти -- на
      се об -- ле -- чи и със не -- я все гра -- ди:
      тя ще те и об -- но -- ви, и с~Дух ще те о
      -- за -- ри.}

        \header {
          title = \titleFunc #'ref_desc_3 "Стани, стани" "Stani, stani"
        }

        \midi{}

      } % score

      \markup \dc-two "D.C." "con ripetizione"
      

    } % bookpart
