\version "2.24.3"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref186
  \tocItem \markup "Мелодия 2"
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
    #'((basic-distance . 9)
       (minimum-distance . 6)
       (padding . 1)
       (stretchability . 12))
  }

  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute {
      \clef treble
      \key des \major
      \time 3/8
      \tempoFunc "Allegro" 4. "48"
      des''8. des''16 c''16 des''16
      | % 2
      es''4 des''8 | % 3
      des''8. c''16 c''16 des''16
      | % 4
      c''4 bes'8  | % 5
      bes'4  as'8 | % 6
      as'4. \break| % 7
      es'4  f'16  ges'16  | % 8
      bes'8.  as'16  as'16 bes'16  | % 9
      as'8.  ges'16  f'16  ges'16 |
      f'8.  es'16  des'16  es'16 | % 11
      des'4. \break | % 12
      as'4  as'8  | % 13
      as'8  g'8  as'8 | % 14
      bes'4  as'8  | % 15
      as'4.| % 16
      des''4 des ''8 | % 17
      des''8 c''8 des''8 \break | % 18
      es''4 des''8  | % 19
      c''8. bes'16  as'16 bes'16 |
      as'4  ges'8   | % 21
      f'8. es'16 des'16  es'16 | % 22
      des'4. |
      es'8  f'8  ges'8 \break| % 24
      as'4 bes'16 c''16  | % 25
      des''4  f'8 | % 26
      as'4  ges'8 |  % 27
      ges'4. | % 28
      bes4  c'16  des'16   | % 29
      f'4  es'8  |
      des'4  c'8  \break | % 31
      es'4  des'8 | % 32
      des'4. |  \bar "||" % 33
      as'8 f''8 f''8 | % 34
      ges''16 f''16 es''16 f''16
      es''16 des''16  | % 35
      as'8 es''8 es''8 | % 36
      es''4.  | % 37
      as'8 es''8 es''8   | \break  % 38
      f''16 es''16 des''16 es''16
      des''16 c''16 | % 39
      des''16 c''16 bes'16 c''16
      bes'16  as'16 |
      as'8 des''8 des''8 | % 41
      des''4.  | \break  % 42
      \bar ".|:-|" as'16 des''16 des''16 des''16
      des''16 des''16  | % 43
      as'16 es''16 es''16 es''16
      es''16 es''16  | % 44
      f''16 es''16 des''16 c''16
      des''16 es''16 | % 45
      des''4. \bar ":|."
    }

    \addlyrics {}

    \header {
      title = \titleFunc #'ref_desc_17 "Мелодия 2" " Melodija 2 – V radostta na denja"
    }

    \midi{}

  } % score


  \label #'ref188
  \tocItem \markup "Мелодия 3 – Когато се денят пробужда"
  \score {
    \include "include/score-layout.ily"

    \new Voice \relative c' {
      \clef treble
      \key d \major
      \time 4/4
      \tempoFunc "Andante" 4 "66"
      \autoBeamOff
      \partial 4
      a4 | d4. cis8 d8 e8 fis8 g8 | a2 fis4 d4 | \break

      b'4. a8 g fis a gis |g?2. g4 | fis4. e8 dis e fis g | \break

      b2 a4 a |d4. e,8 fis8 g8 e8. d16 | d2 r8 a8 b8 cis8 | \break

      d4. cis8 d e fis g | a2 fis4 d4 | \break

      b4. e8 g b e8. d16 | cis2.\fermata a4 | fis'4. d8 a fis b a \break |

      g2 e4 a,4 | b4. a8 gis a e'8 fis | d2 . \bar "|." \break
    }


    \addlyrics {
      Ко -- га -- то се де -- нят про -- буж -- да,
      за -- пя -- ват слън -- че -- ви лъ -- чи.
      От из -- во -- ри -- те на жи -- во -- та
      о -- бил -- но ра -- дост -- та стру -- и.
      И в~то -- я час, тър -- жест -- вен час на ут -- ро -- то,
      ця -- ла -- та при -- ро -- да пей.
      Към вър -- хо -- ве -- те о -- за -- ре -- ни
      по -- ли -- тат на -- ши -- те ду -- ши.}

      \header {
        title = \titleFunc #'ref_desc_17 "Мелодия 3 – Когато се денят пробужда " "Melodija – Kogato se denjat probužda"
      }

      \midi{}

    } % score

    \markup \abs-fontsize #11 {
      \hspace #17
      \override #`(baseline-skip . ,bgCoupletBaselineSkip)
      \column {
        \line {   2. Когато се денят пробужда,}
        \line {   "   " долавяме небесен зов – }
        \line {   "   " вълнува ни и вдъхновява}
        \line {   "   " за светъл и красив живот.}
        \line {   "       " Ще дойде той след бурите, борбите. }
        \line {   "       " Земята ще залее мир.}
        \line {   "       " Могъща сила е доброто,}
        \line {   "       " ний вярваме – ще победи.}
      }

    } % markup

    \markup \empty-two

    \label #'ref189
    \tocItem \markup "Мелодия 4"
    \score {
      \include "include/score-layout.ily"

      \new Voice \absolute {
        \clef treble
        \key g \minor
        \time 3/8
        \tempoFunc "Moderato" 8 "120"
        d''4 bes'8 | % 2
        d''4 bes'8 | % 3
        d''4. | % 4
        g''8  f''8 es''8 | % 5
        es''4 c''8 | % 6
        es''4 c''8 | % 7
        es''4. | % 8
        c''8  d''8  es''8 \break | % 9
        f''4 es''8 |
        es''4 d''8 | % 11
        d''4 c''8 | % 12
        d''4. | % 13
        g'8  a'8 bes'8 | % 14
        bes'4  a'8 \break | % 15
        a'4  g'8 | % 16
        g'4  d'8 | % 17
        g'4. | % 18
        g'8 a'8 bes'8 | % 19
        bes'4  a'8 |
        a'4  g'8 | % 21
        g'4  d'8 | % 22
        g'4. \bar "|."
      }

      \addlyrics {
      }

      \header {
        title = \titleFunc #'ref_desc_17 "Мелодия 4" "Melodija – Ozarenie"
      }

      \midi{}

    } % score

  } % bookpart

  % Più mosso
  %
