\version "2.24.4"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref252
  \tocItem \markup "Молитва (Господи, Ти Си) "
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
    #'((basic-distance . 14.5)
       (minimum-distance . 6)
       (padding . 1)
       (stretchability . 12))
  }
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute {
      \clef treble
      \key bes \minor
      \time 2/4
      \tempoFunc "Andante" 4 "66"
      \autoBeamOff
      \partial 4
      f'8.  f'16 | % 2
      f'2 | % 3
      bes'4  as'4 | % 4
      ges'2 | % 5
      f'2 | % 6
      f'2  | % 7
      c''8  bes'8  as'8  ges'8 \break  | % 8
      \time 3/4  | % 8
      f'4  es'2 | % 9
      \time 2/4  | % 9

      des'16^\markup { \huge \italic {sostenuto} }
      c'16
      ([des'16])  es'16
      f'8  as'8 |
      f'4 ^\markup{\huge \italic {a tempo} }  es'4 \break | % 11
      \time 3/4  | % 11
      \times 2/3  {
        f'8 ^\markup{\huge \italic {sostenuto} }  ges'8
        as'8
      }
      bes'4  as'4 | % 12
      f'4  ges'8 ( [  f'8 ) ]  f'4 | % 13
      \times 2/3  {
        f'8 ^\markup{\huge \italic {sostenuto} }  ges'8
        as'8
      }
      bes'8.  as'16  ges'8  f'8 \break | % 14
      f'8 ( [  es'8 ) ]  es'2
      | % 15

      \times 2/3  {
        c'8  des'8  es'8
      }
      f'4.  es'8 | % 16
      \time 2/4  | % 16
      des'8  c'8
      des'8  c'8 \break | % 17
      es'4  des'4 | % 18
      c'4.  a8 | % 19
      es'2 |
      des'2 | % 21
      c'2 | % 22
      bes2 ( | bes4 )
      f'8.  f'16 | \break % 2
      f'2 | % 3
      bes'4  as'4 | % 4
      ges'2 | % 5
      f'2 | % 6
      f'2  | % 7
      c''8  bes'8  as'8  ges'8 \break | % 8
      \time 3/4  | % 8
      f'4  es'2 | % 9
      \time 2/4  | % 9

      des'16^\markup { \huge \italic {sostenuto} }
      c'16
      des'16  es'16
      f'8  as'8 |
      f'4 ^\markup{ \huge \italic {a tempo} }  es'4 \break | % 11
      \time 3/4  | % 11
      \times 2/3  {
        f'8 ^\markup{ \huge \italic {sostenuto} }  ges'8
        as'8
      }
      bes'4  as'4 | % 12
      f'4  ges'8 ( [  f'8 ) ]  f'4 | % 13
      \times 2/3  {
        f'8 ^\markup{ \huge \italic {sostenuto} }  ges'8
        as'8
      }
      bes'8.  as'16  ges'8  f'8 \break | % 14
      f'8 es'8 es'2
      | % 15

      \times 2/3  {
        c'8  des'8  es'8
      }
      f'4.  es'8 | % 16
      \time 2/4  | % 16
      des'8 (  [c'8] )
      des'8  c'8 \break | % 17
      es'4 ( des'4 )| % 18
      c'4.   a8  | % 19
      es'2 |
      des'2 | % 21
      c'2 | % 22
      bes2 ( | bes4 ) \bar "|."

    }

    \addlyrics {
    \set stanza = "1. " Гос -- по -- ди, Ти Си всич -- ко
      за ме -- не на зе -- мя -- та. Тук,
      до -- лу, тол -- коз скър --
      би, тъй всич -- ко пус -- то е
      без __  Теб и са -- мо Ти му да
      -- ваш сми -- съл. Ед -- ни -- чък
      Ти ме лю -- биш, зна -- я, са -- мо
      Ти. И аз Теб лю -- бя. __

       \set stanza = "2. "  Го -- спо -- ди, на -- у -- чи ме
      да лю -- бя всич -- ко жи -- во,
      туй, ко -- е -- то Ти съз -- дал Си,
      и да раз -- на -- сям аз на -- вред
      Тво -- я -- та неж -- ност,
      ра -- дост и Лю -- бов.
      Да се на -- у -- ча
      Теб  аз да слу -- жа, да бла -- го --  да -- ря. __
    }

    \header {
      title = \titleFunc #'ref_desc_20 "Молитва" "Molitva"
    }

    \midi{}

  } % score

} % bookpart

% Più mosso
%
