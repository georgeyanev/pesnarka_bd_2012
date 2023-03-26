\version "2.24.0"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref067
  \tocItem \markup "Песен на гласните букви – Pesen na glasnite bukvi"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \relative c' {
      \clef treble
      \key c \major
      \time 7/16
      \tempoFunc "Vivo" 4 "104"
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
      title = \titleFunc " Песен на гласните букви" "Pesen na glasnite bukvi"
    }

    \midi{}

  } % score



  \markup \empty-two

  % include foreign translation(s) of the song
  \include "lyrics_de/067_pesen_na_glasnite_bukvi_lyrics_de.ly"

} % bookpart
