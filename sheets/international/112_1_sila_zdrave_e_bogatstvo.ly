\version "2.24.3"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref112_1
  \tocItem \markup "Сила, здраве е богатство – Sila, zdrave e bogatstvo"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"


    \new Voice \relative c' {
      \clef treble
      \key g \major
      \time 3/4
      \tempoFunc "Moderato" 4 "92"
      \autoBeamOff

      \repeat volta 2 {
        d8. d16 e8 fis8 g8 a8 | b4 g2 | e8. e16 e8 e8 a8 g8 | \break



        fis4 d2 |  c'8. c16 c8 b8 d8 c8 | b4 g2 | b8. c16 d4 d4 | \break

        c8. b16 c4 a4 |    d,8. d16 e8 e8 fis8 d8
        \override Score.MetronomeMark.outside-staff-priority = #99
      } \alternative {
        { | g4 \tempo "         Fine" g2 | \break }
        {
          \time 4/4 g4 g2

          \override Score.MetronomeMark.outside-staff-priority = #99
          %\override Score.MetronomeMark.X-extent=#'(-4.5 . 0)
          \tempoFunc "Andante" 4 "60"

          e8. e16
        }
      }

      \bar "||" \time 3/4  a4 g4 fis8. e16


      \time 2/4  e4. ( fis8 ) \break

      | \time 3/4  d2 b'8. b16 | c4 e,4 fis8. d16 | \time 4/4 \stemUp b'2 ( \afterGrace a2 { b16[ a] )} |
      \time 3/4  |
      g2. \bar "|."


    }



    \addlyrics {
      Си -- ла,
      здра -- ве е бо -- гат -- ство, си -- ла, здра --
      ве е бо -- гат -- ство, си -- ла, здра -- ве е
      бо -- гат -- ство, е "бо-" -- гат -- ство, е бо --
      гат -- ство, си -- ла, здра -- ве е бо -- гат --
      ство. гат -- ство за жи -- во -- та на ду -- ша
      -- та, за жи -- во -- та на ду -- ша -- та.
    }
    \addlyrics {
      Si -- la,
      zdra -- ve e bo -- gat -- stvo, si -- la, zdra --
      ve e bo -- gat -- stvo, si -- la, zdra -- ve e
      bo -- gat -- stvo, e "bo-" -- gat -- stvo, e bo --
      gat -- stvo, si -- la, zdra -- ve e bo -- gat --
      stvo. gat -- stvo za ži -- vo -- ta na du -- ša
      -- ta, za ži -- vo -- ta na du -- ša -- ta.
    }

    \header {
      title = \titleFunc "Сила, здраве е богатство" "Sila, zdrave e bogatstvo"
    }

    \midi{}

  } % score
  \markup \empty-one

  \markup \dc-two "D.C. al Fine" "senza ripetizione"


  % include foreign translation(s) of the song

  \markup \vspace #3


  \include "../../lyrics/de/112_1_sila_zdrave_sa_bogatstvo_lyrics_de.ly"

} % bookpart
