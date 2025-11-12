\version "2.24.4"

\include "include/globals.ily"

\bookpart {
  \label #'ref130
  \tocItem \markup "Езикът на живата природа"

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
    #'((basic-distance . 12.8)
       (minimum-distance . 6)
       (padding . 1)
       (stretchability . 12))
  }
  \score {
    \include "include/score-layout.ily"
    \new Voice \absolute {
      \clef treble
      \key f \major
      \time 3/4
      \tempoFunc "Andante" 4 "63"
      \autoBeamOff
      c'4 ( \once \omit TupletBracket
      \times 4/5  {
        c'16 ) ( [  d'16  e'16  f'16
        g'16 ]
      }
      a'8 ) a'8  |

      a'4. ( g'8   a'8 [  g'8
      ] ) |
      f'8 ( [ e'8 ])
      f'8 ( [  e'8  ] )  d'8 ( [  c'8]) |
      d'2. \break |
      e'4. f'8  g'8 ( [
      a'8  ])
      \time 2/4 f'8 g'8 e'8  f'8 |
      e'2 | % 6
      g'4.  e'8 |
      f'8  e'8
      d'8 ( [  c'8 ]) | d'2 \break |
      a'4.  g'8 | c''8 ( [  bes'8 ]) a'8  g'8 |
      g'8 ( [ a'16   g'16]
      f'8  [ e'8 ] ) |

      f'8 g'8 e'4 ( |e'2) |
      g'8  g'4  f'8 |  \break
      e'8  f'8 e'8  c'8 | d'2 |   % 13
      \time 5/4  | \bar "||" % 13
      \tempo "        Largamente" c'4 ( f'4 )
      e'4  e'2 | % 14
      c'4 (  f'4 )  e'4  e'2 | % 15
      \time 2/4  | % 15
      g'4.  f'16 ( [  e'16 ]) \break | % 16
      f'8 ( [  e'8 ] ) f'8 ( [  e'8 ] )| % 17
      d'2 \bar "||"
      \tempo "Più mosso"
      \key g \minor | % 18
      g'8  a'8  g'4 | % 19
      \time 3/4 fis'4  es'4. ( d'8 ) |
      es'8  fis'8  es'4. ( d'8 )| \break % 21
      es'8 ( [  d'8 ])   c'2   |   % 22
      \time 2/4 c'4.  d'16  es'16 | % 23
      fis'4  g'4|  fis'4
      es'8 ( [  d'8 ])  | c'2 | % 25
      a'4 bes'8 a'8  \break  | % 26
      g'4  c''4 ^\fermata  | % 27
      \slurDown \stemUp bes'16 (
      [a'16 bes'16  a'16])
      \slurNeutral \stemNeutral
      g'8 ( [  fis'8 ] )| % 28
      g'2  | % 29
      bes'2 |  d''4  bes'4 |
      bes'4 ( a'8 [  g'8  ] ) a'2  \break | % 31
      cis''4. (  d''16 [  cis''16 ] |
      bes'8 [  a'8 ] ) % 32
      g'8 ( [  a'8 ] ) a'2 |
      bes'8  bes'8  cis''4 | % 34
      bes'4 \prall  a'4 |  \break % 35
      \time 3/4  | % 35
      \times 2/3  {
        bes'8  a'8  g'8
      }
      g'2 | \time 2/4 d'8  d'8
      g'4 ( | a'2 ) |   % 37
      c''8  bes'8  a'8 ( [  g'8 ]) |
      \time 3/4  | % 38
      a'4  a'2  | \break
      \time 2/4  | % 39
      g'8.  g'16  fis'4 |
      es'2 | % 41
      fis'8  es'8  d'4 | % 42
      d'2 | % 43
      c'8  d'16 ( [  es'16 ] ) f'4 | % 44
      fis'8 es'8  d'4 | % 46
      \time 3/4  | \break  % 46
      \once \omit TupletBracket
      \times 2/3  {
        es'8 ( [  d'8  c'8 ])
      }
      d'2 | % 47
      \time 2/4  | % 47
      c'8 ( [  d'8 ])  es'8  c'8  | % 48
      \time 3/4  | % 48
      d'4  d'2 | % 49
      \time 4/4  | % 49
      g'8  fis'4  g'8
      a'8 g'4. \break | % 51
      es'8  fis'8  es'4.  c'8
      d'4 |  es'8 ([ fis'8 ])
      \times 2/3  {
        g'8 ( [  es'8  fis'8 ] )
      } d'2 | \bar "||" \break
      \key g \major \time 7/4 | % 54
      d'4 (  g'4 )  d'4  \bar "!" b8. c'16 d'4  d'2 | % 56
      e'4 ( a'4.)   g'8  \bar "!" fis'2  g'2 \caesura \bar "||" \break
      \time 2/4  | % 58
      \tempo "Vivo" d'8 b'4  d''8 | % 59
      \tupletUp \times 2/3  {
        c''8   c''8  b'8
      } \tupletNeutral
      c''8 d''8  |
      b'2 | % 61
      b'8  a'4  g'8 | \break % 62
      g'8  fis'8  fis'8  e'8 | % 63
      e'2 | % 64
      c''8  e'4  e'8 | % 65
      e'8  d'8  d'8  c''8 | \break % 66
      b'2 | % 67
      b'8  a'4  g'8  | % 68
      fis'8  g'8  a'8  b'8 |  % 69
      g'2 |
      c''8  e'4  e'8 | \break % 71
      e'8  d'8  d'8  c''8 | % 72
      b'2  | % 73
      e'8  e'4. |   % 74
      e'8  fis'8  g'8  g'8 \break | % 75
      g'2  | % 76
      e''8  a'4  b'8 | % 77
      c''8   b'8  c''8  d''8 | % 78
      b'2 |  % 79
      b'8  a'4  g'8 |\break
      fis'8  g'8  a'8  b'8 | % 81
      g'2 | % 82
      fis'8  e'4  d'8 |
      d'8  d'8  d'8  g'8 | \break % 84
      g'2 | % 85
      \tempo "Largamente"
      \time 3/4  | % 85
      c''4  e'4.  e'8 | % 86
      e'4 d'2 | % 87
      c''8 b'8 a'8  g'8
      a'8  b'8  | % 88
      g'2. |  \break % 89
      \time 4/4  | % 89
      b'4 g'4  e'4
      d'4 |
      e'8.  fis'16  g'2.   | % 91
      \time 3/4 b'4 d''4  b'4 | \time 2/4  e''4. d''8 |  \break | % 92
      c''8 ( [  b'8 ])  c''8 ( [
      d''8 ]) | b'2 | % 93
      b4.  c'8  d'2 | % 94
      a4. b8  c'4
      e'4 | % 95
      d'4  c'4  b2 \bar "|."
    }

    \addlyrics {
      Стра --  шен
      бе --   ше __  вя -- тъ
      -- рът, що раз -- друс -- ва --
      ше го -- ра -- та. Стра -- шен
      бе и си -- лен. Всич -- ки -- те __
      лис -- та шу --
      мо -- ля -- ха, шу -- мя -- ха и се
      мо -- ле -- ха: „Спри,  вет --
      ре, спри,  вет -- ре, во -- лен
      раз -- ви -- гор! Не ни
      ли жа -- лиш?  По -- спри, не __
      ду -- хай! Е -- два през та
      -- зи го -- ди -- на ту --
      ка сме -- дош -- ли на
      гос -- ти. Не ду -- хай, вет --
      ре, ще пад --
      нем, ще ни се стро -- шат ре --
      бър -- ца -- та“. -- „Ой ви вас, __
      мал -- ки лис -- тен -- ца,
      за вас аз чух от -- да -- ле -- ко
      и дой -- дох да ви на -- ви
      --  дя, да __  по -- и -- гра --
      я и ви по -- ду -- хам, да -- ре --
      не да ви до -- не --  са.
      Слу -- шай -- те то -- га -- ва
      мой -- та пе -- сен: След ме --
      не той ве -- че прис -- ти -- "га -" дру
      -- гар ми ве -- рен, дре -- бен
      дъжд. Той ще по -- ле -- е по --
      ле -- то, ще го при -- гот -- ви
      за и -- гри. Прах да се, лис --
      ти, не вди -- га при тез иг -- ри
      ве -- се -- ли. От -- го -- ре слън
      -- це ще пек -- не, да ни о --
      гре -- е, за -- топ -- ли; да си
      по -- троп -- нем то -- га  -- ва,
      да си по -- хап  -- нем, чис
      -- та во -- да да пи  -- ем,
      с~ра -- дост да се раз -- де --
      лим. На -- но -- во да се срещ
      -- нем  пак и доб -- ре с~о
      -- бич да се раз -- бе -- рем.“}

      \header {
        title = \titleFunc #'ref_desc_9 "Езикът на живата природа" "Ezikăt na živata priroda"
      }

      \midi{}

    }



  } % bookpart
