\version "2.24.0"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute {
      \clef treble
      \key e \major
      \time 3/2
      \tempo "Andante cantabile"
      \autoBeamOff
      b'4  b'4 e''2.  dis''4 | % 258
      b''2.  a''4 \tupletUp  \times 2/3 {
        \once \override Slur.positions = #'(1 . 1) gis''4 (  fis''4 )  e''4
      }
      | % 259
      dis''4  cis''4  dis''4.  dis''8
      fis''2 \break |
      e''2 r2   \tempo "Maastoso" b'2  \bar
      "||"
      \key g \major | % 261
      b'2  b'2  b'2 | % 262
      \time 4/4  |

      \grace { a'16 ([b'16] } c''2) b'2 | a'2 g'4 g'4 | \break

      \time 6/4  | % 264
      fis'2 ( g'2 ) a'2 | % 265
      \time 4/4  | % 265
      g'2 r2 \bar "||"
      \key bes \major | % 266
      d'4 d'4 es'?4. d'8 | % 267
      g'2  bes'2 ^\fermata \break | % 268
      c''2  bes'4  bes'4 | % 269
      a'2 g'4 g'4 |
      bes'2 a'2 | % 271
      g'2 r2 | % 272
      r4 g'4 \times 2/3 {
        d''4  d''4  d''4
      }
      \break | % 273
      \time 6/4  | % 273
      es''2  c''2  c''4  c''4 | % 274
      d''2 g'2 r4 g'4 | % 275
      d''4  c''4 g'4 a'4  c''2
      \break | % 276
      \time 4/4  | % 276
      bes'2. r4 | % 277
      \time 3/4  | % 277
      g'8 ( [ a'8 bes'8 c''8 ) ]
      d''4 | % 278
      \time 4/4  | % 278
      g''4  bes''2 ^\fermata  a''4 \break | % 279
      \time 5/4  | % 279
      g''2  f''4  es''4  d''4 |
      \time 3/2  |
      c''4  bes'4 a'2.  c''4 \break | % 281
      bes'2 ^\fermata \breathe g'4 g'2 ^\fermata
      g'4 | % 282
      g'2. r4 g'4 a'4 | % 283
      g'1 r2 \bar "|."
    }
    \addlyrics {
      И та -- ка съз -- да -- де
      Бог  не -- бе -- то и зе -- мя --
      та, и всич -- ко -- то
      мно -- же -- ство съ -- ще -- ства  във
      тях. И бла -- го -- сло -- ви Бог
      сед -- ми -- я ден и го о -- све --
      ти, за -- що -- то във не -- го си
      по -- чи -- на от всич -- ки -- те
      си де -- ла. И    ви -- дя
      Бог, че всич -- ко, що на -- пра --
      ви, бе до -- бро! А -- ум! А -- ум!
      А -- у -- мен!}
      \addlyrics {
        I ta -- ka saz -- da -- de
        Bog  ne -- be -- to i ze -- mya --
        ta, i vsich -- ko -- to
        mno -- zhe -- stvo sa -- shte -- stva  vav
        tyah. I bla -- go -- slo -- vi Bog
        sed -- mi -- ya den i go o -- sve --
        ti, za -- shto -- to vav ne -- go si
        po -- chi -- na ot vsich -- ki -- te
        si de -- la. I    vi -- dya
        Bog, che vsich -- ko, shto na -- pra --
        vi, be do -- bro! A -- um! A -- um!
        A -- u -- men!}


        \header {
          title = \titleFunc " Седми божествен ден" "Sedmi bozhestven den"
        }

        \midi{}

      } % score
      \pageBreak

      % include foreign translation(s) of the song
      \include "lyrics_de/199_nb_sedmi_bozhestven_den_lyrics_de.ly"
    } % bookpart

    % Più mosso
    %
