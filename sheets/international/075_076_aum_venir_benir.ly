\version "2.24.4"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref075
  \tocItem \markup "Аум – Aum"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute {

      \clef treble
      \key c \major
      \time 3/4
      \tempoFunc "Andante" 4 "60"
      \autoBeamOff
      \partial 4

      g4 |  c'2 g4 | e'2 c'4 | g'2. |  f'2. | e'2. | d'2. | c'2 \fermata s4 | \bar "|."
    }

    \addlyrics {
      А -- ум, А
      -- ум, А -- ум, Ом, Ом, Ау -- мен.
    }


    \addlyrics {
      A -- um, A
      -- um, A -- um, Om, Om, Au -- men.
    }

    \header {
      title = \titleFunc "Аум" "Aum"
    }

    \midi{}

  } % score

  \markup \empty-two
  \markup \dc-one "2 D.C."
  \markup \italic \dc-one-nobold "(песентта се изпълнява три пъти / Das Lied wird drei Mal gesungen)"


  \markup \empty-three
  % include foreign translation(s) of the song

  \label #'ref076
  \tocItem \markup "Венир Бенир – Venir Benir"

  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute {
      \clef treble
      \key d \minor
      \time 3/4
      \tempoFunc "Andante" 4 "58"
      \autoBeamOff

      \partial 4
      d'4 | f'2 g'4 | a'2 a'4 | d''2 c''4 | bes'2 a'8. g'16 \break |

      a'2 g'8. a'16 | bes'2 a'8. e'16 | f'2 e'8. f'16 | g'4 ( a' ) e'8. f'16 |  d'2 f'8. e'16 \break |

      \repeat volta 2 { d'2 e'8. f'16 | g'2 ~ g'8 e' | g'4. f'8 e' [( f' )] |} \alternative { { d'2 f'8. e'16  | } { d'2 \break \bar "|."} }
    }

    \addlyrics {
      Ве -- нир Бе
      -- нир, Би -- хар Бе -- нум Ил -- би -- ют, Ил
      бе -- зут Ом би -- ют. Ил бе -- зут __ Ом би --
      ют. Зун ме -- зун, зун ме -- зун, __ Би -- ном ту
      ме -- то. Зун ме -- то.
    }

    \addlyrics {
      Ve -- nir Be
      -- nir, Bi -- har Be -- num Il -- bi -- jut, Il
      be -- zut Om bi -- jut. Il be -- zut __ Om bi --
      jut. Zun me -- zun, zun me -- zun, __ Bi -- nom tu
      me -- to. Zun me -- to.
    }


    \header {
      title = \titleFunc "Венир Бенир" "Venir Benir"
    }

    \midi{}

  } % score

  \markup \empty-one
  \markup \dc-two "D.C." "con ripetizione "


} % bookpart


