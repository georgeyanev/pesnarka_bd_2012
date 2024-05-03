\version "2.24.3"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref089
  \tocItem \markup "Тъги, скърби – Tăgi, skărbi "
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute  {
      \clef treble
      \key g \major
      \time 6/4
      \tempoFunc "Moderato" 4 "80"
      \override Staff.BarLine.gap = 0.5
      \autoBeamOff


      d''8 d'' e'' d'' d''8 c'' c'' b' b'8 a' a' g' | \bar ":.|.:" \break


      \time 7/4 b' b' c'' a' a' g' g' fis' fis' e' e' d' d' d' | \bar ":|."

      \time 5/4 b d' b d' b d'

      g' fis' e' c' | \break

      c' e' c' e'  c' e' fis' e' d' b  |  \break

      b d' b d' b d' e' d' a a | \break
      a b c' d' e' fis' g' g' g' g' |
      \time 4/4  g' g' g' g' g' g'4.  |  \bar "|."

    }
    \addlyrics {
      Тъ -- ги, скър -- би вди  -- гай, сла  -- гай,

      пра  --  во вър -- ви!

      Не се спъ -- вай, всич -- ко вди -- гай,

      сла -- гай, пра -- во вър -- ви!

      Вър -- ви, вър -- ви, вър -- ви, пра -- во вър -- ви!

      Вър -- ви, вър -- ви, вър -- ви, пра -- во вър -- ви!

      Вър -- ви, вър -- ви, вър -- ви, пра -- во вър -- ви!

      Вър -- ви, вър -- ви, пра -- во вър -- ви!

      Вър -- ви, вър -- ви, пра -- во вър -- ви!
    }

    \addlyrics {
      Tă -- gi, skăr -- bi vdi  -- gaj, sla  -- gaj,

      pra  --  vo văr -- vi!

      Ne se spă -- vaj, vsič -- ko vdi -- gaj,

      sla -- gaj, pra -- vo văr -- vi!

      Văr -- vi, văr -- vi, văr -- vi, pra -- vo văr -- vi!

      Văr -- vi, văr -- vi, văr -- vi, pra -- vo văr -- vi!

      Văr -- vi, văr -- vi, văr -- vi, pra -- vo văr -- vi!

      Văr -- vi, văr -- vi, pra -- vo văr -- vi!

      Văr -- vi, văr -- vi, pra -- vo văr -- vi!
    }

    \header {
      title = \titleFunc "Тъги, скърби" "Tăgi, skărbi"
    }

    \midi{}

  } % score

  \markup \dc-two "D.C." " con ripetizione"
  \markup \italic \dc-one-nobold "attacca „Светъл ден/Svetăl den“"
  %


  \markup \empty-one
  % include foreign translation(s) of the song
  \include "../../lyrics/de/089_tagi_skarbi_lyrics_de.ly"

} % bookpart
