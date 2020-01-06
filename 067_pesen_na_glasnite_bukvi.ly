\version "2.18.2"

\paper {
  print-all-headers = ##t
  print-page-number = ##t
  left-margin = 2\cm
  right-margin = 2\cm
  ragged-bottom = ##f % do not spread the staves to fill the whole vertical space
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

  \new Voice \relative c' {
    \clef treble
    \key c \major
    \time 7/16 \tempo "Vivo"
    \autoBeamOff
    c8 e8 g8. | g8 c8 g8. | c,8 e8 g8. | g8 c8 g8. | \break
    c,8 d8 e8. | d8 e8  \acciaccatura {d16[e16]} d8([c16]) | g'8 g8 g8. | c,8 d8 e8. | \break 
    d8 e8 \acciaccatura {d16[e16]} d8([c16]) | g'8 g8 g8. | c,8 d8 e8. | d8 e8 \acciaccatura {d16[e16]} d8([c16]) | c8~ c8~ c8. | \bar "|." \break
  }
    
  \addlyrics {
   "1. a" -- a -- a  a -- a -- a  a -- a -- a  a -- a -- a 
    a -- a -- a  a -- a -- a  a -- a -- a  a -- a -- a 
    a -- a -- a  a -- a -- a  a -- a -- a  a -- a -- a a
  }

  \addlyrics {
    "2. o" -- o -- o  o -- o -- o  o -- o -- o  o -- o -- o 
    o -- o -- o  o -- o -- o  o -- o -- o  o -- o -- o 
    o -- o -- o  o -- o -- o  o -- o -- o  o -- o -- o o
  }

  \addlyrics {
    "3. у" -- у -- у  у -- у -- у  у -- у -- у  у -- у -- у 
    у -- у -- у  у -- у -- у  у -- у -- у  у -- у -- у 
    у -- у -- у  у -- у -- у  у -- у -- у  у -- у -- у у
  }

  \addlyrics {
    "4. а" -- о -- у  а -- о -- у  а -- о -- у  а -- о -- у 
    а -- о -- у  а -- о -- у  а -- о -- у  а -- о -- у 
    а -- о -- у  а -- о -- у  а -- о -- у  а -- о -- у а
  }

  \addlyrics {
    "5. a" -- a -- a  a -- a -- a  a -- a -- a  a -- a -- a 
    a -- a -- a  a -- a -- a  a -- a -- a  a -- a -- a 
    a -- a -- a  a -- a -- a  a -- a -- a  a -- a -- a a
  }

  \addlyrics {
    "6. e" -- e -- e  e -- e -- e  e -- e -- e  e -- e -- e 
    e -- e -- e  e -- e -- e  e -- e -- e  e -- e -- e 
    e -- e -- e  e -- e -- e  e -- e -- e  e -- e -- e e
  }

  \addlyrics {
    "7. и" -- и -- и  и -- и -- и  и -- и -- и  и -- и -- и 
    и -- и -- и  и -- и -- и  и -- и -- и  и -- и -- и 
    и -- и -- и  и -- и -- и  и -- и -- и  и -- и -- и и
  }

  \addlyrics {
    "8. а" -- е -- и  а -- е -- и  а -- е -- и  а -- е -- и 
    а -- е -- и  а -- е -- и  а -- е -- и  а -- е -- и 
    а -- е -- и  а -- е -- и  а -- е -- и  а -- е -- и а
  }

  \header {
    title = "Песен на гласните букви / Pesen na glasnite bukvi"
  }

  \midi {
  }
} % score
} % bookpart
