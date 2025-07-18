\version "2.24.4"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
    \label #'ref067
    \tocItem \markup "Песен на гласните букви"
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
        \set stanza = "1. " a -- a -- a  a -- a -- a  a -- a -- a  a -- a -- a
        a -- a -- a  a -- a -- a __  a -- a -- a  a -- a -- a
        a -- a -- a __   a -- a -- a  a -- a -- a  a -- a -- a __ a __
      }

      \addlyrics {
        \set stanza = "2. " o -- o -- o  o -- o -- o  o -- o -- o  o -- o -- o
        o -- o -- o  o -- o -- o __  o -- o -- o  o -- o -- o
        o -- o -- o __   o -- o -- o  o -- o -- o  o -- o -- o __ o __
      }

      \addlyrics {
        \set stanza = "3. " у -- у -- у  у -- у -- у  у -- у -- у  у -- у -- у
        у -- у -- у  у -- у -- у __  у -- у -- у  у -- у -- у
        у -- у -- у __   у -- у -- у  у -- у -- у  у -- у -- у __ у __
      }

      \addlyrics {
        \set stanza = "4. " а -- о -- у  а -- о -- у  а -- о -- у  а -- о -- у
        а -- о -- у  а -- о -- у __  а -- о -- у  а -- о -- у
        а -- о -- у __   а -- о -- у  а -- о -- у  а -- о -- у __ а __
      }

      \addlyrics {
        \set stanza = "5. " a -- a -- a  a -- a -- a  a -- a -- a  a -- a -- a
        a -- a -- a  a -- a -- a __  a -- a -- a  a -- a -- a
        a -- a -- a __   a -- a -- a  a -- a -- a  a -- a -- a __ a __
      }

      \addlyrics {
        \set stanza = "6. " e -- e -- e  e -- e -- e  e -- e -- e  e -- e -- e
        e -- e -- e  e -- e -- e __  e -- e -- e  e -- e -- e
        e -- e -- e __   e -- e -- e  e -- e -- e  e -- e -- e __ e __
      }

      \addlyrics {
        \set stanza = "7. " и -- и -- и  и -- и -- и  и -- и -- и  и -- и -- и
        и -- и -- и  и -- и -- и __  и -- и -- и  и -- и -- и
        и -- и -- и __   и -- и -- и  и -- и -- и  и -- и -- и __ и __
      }

      \addlyrics {
        \set stanza = "8. " а -- е -- и  а -- е -- и  а -- е -- и  а -- е -- и
        а -- е -- и  а -- е -- и __  а -- е -- и  а -- е -- и
        а -- е -- и __   а -- е -- и  а -- е -- и  а -- е -- и __ а __
      }

      \header {
        title = \titleFunc #'ref_desc_17 " Песен на гласните букви" "Pesen na glasnite bukvi"
      }

      \midi{}

    } % score


  } % bookpart

  % Più mosso
  %
