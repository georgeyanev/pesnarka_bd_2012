\version "2.18.2"

\paper {
  print-all-headers = ##t
  print-page-number = ##f 
  left-margin = 2\cm
  right-margin = 2\cm
  ragged-bottom = ##t % do not spread the staves to fill the whole vertical space
}

\header {
  tagline = ##f
}

\bookpart {
\score{
  \layout { 
    indent = 0.0\cm % remove first line indentation
    ragged-last = ##f % do spread last line to fill the whole space
    \context {
      \Score
      \omit BarNumber %remove bar numbers
    } % context
  } % layout

  \new Voice \relative a' {
    \clef treble
    \key d \minor
    \time 4/4 \tempo "Andante sustenuto" 4 = 60
    \repeat volta 2 { 
      a2 a4 a4 | bes2 a4 a4 |  a4 \autoBeamOff a8 a8 d,4 f4 |  a2 g2 |\break
      f2 g4 ( a4 ) | bes2 bes2 | bes2 a4 a4 | a4 a8 a8 d,4 ( f4 ) | \break
      a4 ( bes4 ) a4 ( g4 ) |  f2 e2 | 
    } 
    \alternative {
      { d2. r4 | }
      { d2. a'4 | \bar "||" \break }
    } 
    
    d4 a4 bes4 ( c4 ) | d4 bes4 a4 g4 | bes2 a2 | a2 d,4 f4 | \break
    a2 d,4 f4 | a4 ( bes4 ) a4 a4 | d4 ( a4 ) bes4 ( g4 ) | f2 ( e2 ) | \break
    d2. r4 | bes'2 a2 | g2 f2 |  e4 ( f4 ) g4 a4 | \break
    bes4 ( g4 ) a2 | f2 e2 | d2. r4 | bes'2 a2 | g2 f2 | \break
    e4 ( f4 ) g4 a4 | bes4 ( g4 ) a2 | f2 e2 | d1| \bar "|." \break
  }
  
  \addlyrics {
    Кой -- то жи -- ве -- е под по -- кри -- ва на Все -- виш -- на -- 
    го, ще пре -- би -- ва -- е под сян -- ка -- та на 
    Все -- мо -- гъ -- ща -- го. го. Ще 
    каз -- вам за Гос -- по -- да, ще каз -- вам: Той е при -- 
    бе -- жи -- ще мо -- е и кре -- пост мо -- 
    я, Бог мой, Бог мой, на Не -- го 
    ще се на -- де -- я. Бог мой, Бог мой, 
    на Не -- го ще се на -- де -- я.
  }

  \addlyrics {
    Koy -- to zhi -- ve -- e pod po -- kri -- va na Vse -- vish -- na -- 
    go, shte pre -- bi -- va -- e pod syan -- ka -- ta na 
    Vse -- mo -- ga -- shta -- go. go. Shte 
    kaz -- vam za Gos -- po -- da, shte kaz -- vam: Toy e pri -- 
    be -- zhi -- shte mo -- e i kre -- post mo -- 
    ya, Bog moy, Bog moy, na Ne -- go 
    shte se na -- de -- ya. Bog moy, Bog moy, 
    na Ne -- go shte se na -- de -- ya.
  }

  \header {
    title = "Псалом 91 / Psalom 91"
  }

} % score
} % bookpart
