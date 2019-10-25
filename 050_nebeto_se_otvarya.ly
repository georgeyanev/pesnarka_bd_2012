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

  \new Voice \absolute  {
    \clef treble
    \key c \major
    \time 3/4 \tempo "Moderato" 4 = 88
    \partial 4 g'4 | e'2 f'4 | g'2 g'4 | a'2. | g'2 g'4 | c''2 d''4 | e''2 d''4 | \break
    d''2. | c''2 g'4 | \repeat volta 2 { e''2 e''4 | d''2 cis''4 | d''2. | \break
    a'2 c''4 | b'2 b'4 | b'4 ( a'4 ) b'4 | d''2. | } \alternative {
      { c''2 g'4 | } 
      { c''2  s4 } 
    } \bar "|."
  }
  
  \addlyrics {
    Не -- бе -- то се от -- ва -- ря и Ан -- ге -- ли -- те
    пе -- ят. И мол -- ни -- и бле -- стя -- 
    щи тъ -- ми и здрач пи -- ле -- ят. И ят.
  }

  \addlyrics {
    Ne -- be -- to se ot -- va -- rya i An -- ge -- li -- te
    pe -- yat. I mol -- ni -- i ble -- stya -- 
    shti ta -- mi i zdrach pi -- le -- yat. I yat.
  }

  \header {
    title = "Небето се отваря / Nebeto se otvarya"
  }

} % score

\markup { \hspace #20 \vspace #10
   \fontsize #+5 {
     Missing text here ...
   }
}

} % bookpart
