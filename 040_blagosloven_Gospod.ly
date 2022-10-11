\version "2.22.1"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute {
      \clef treble
      \omit Score.TimeSignature
      \cadenzaOn % allows custom bar lines
      \key d \minor
      \tempoFunc "Andante" 4 "56/58"
      \autoBeamOff
      \autoBeamOff

      c'4 f'8. g'16 a'4 d'' c'' a' c''2 | \bar "!" c''4 c'' c'' c''4. d''8 c''2 r4 | \bar "!" \break
      g'4 g'8. g'16 g'4 a' bes'2 bes' | \bar "!" bes'4 d'' d'' d'' c''4. bes'8 a'2 | \bar "!" \break
      g'4 g' g' g' g'4. a'8 bes'2 | \bar "!" a'4 a' a' a' a'4. bes'8 c''2 | \bar "!" \break
      d''4 d'' d'' d''8 ([f'']) \fermata e''4. d''8 c''2 | \bar "!" g'4 g' g' g'8 ([ bes' ]) \fermata a'4. g'8 f'2 | \bar "|."
    }
    \addlyrics {
      Бла -- го --
      сло -- вен Гос -- под Бог наш на всич -- ки ве
      -- ко -- ве; бла -- го -- сло -- вен Ба -- ща наш
      на Свет -- ли -- те ду -- хо -- ве, на Свет --
      ли -- те ду -- хо -- ве, на Свет -- ли -- те ду
      -- хо -- ве, на Свет -- ли -- те ду -- хо -- ве,
      на Свет -- ли -- те ду -- хо -- ве.}
      \addlyrics {
        Bla -- go --
        slo -- ven Gos -- pod Bog nash na vsich -- ki ve
        -- ko -- ve; bla -- go -- slo -- ven Ba -- shta nash
        na Svet -- li -- te du -- ho -- ve, na Svet --
        li -- te du -- ho -- ve, na Svet -- li -- te du
        -- ho -- ve, na Svet -- li -- te du -- ho -- ve,
        na Svet -- li -- te du -- ho -- ve.
      }

      \header {
        title = \titleFunc "Благословен Господ" "Blagosloven Gospod"
      }

      \midi{}

    } % score

    \markup \dc-one "D.C."
    \markup \empty-three

    % include foreign translation(s) of the song
    \include "lyrics_de/040_blagosloven_Gospod_lyrics_de.ly"

  } % bookpart
