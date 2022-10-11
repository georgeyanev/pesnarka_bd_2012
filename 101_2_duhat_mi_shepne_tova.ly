\version "2.22.1"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"


    \new Voice \absolute{
      \clef treble
      \key es \major
      \time 2/4
      \tempoFunc "Andante" 4 "60"
      \autoBeamOff

      c'8 ( [ d'8 es'8 c'8 ] | es'2 ) | c'8 ( [ d'8 es'8] ) c'8 | \time 3/4  | as'4 ^\fermata g'2 | \time 5/4 \break

      c''4. b'8 c''8 ( [ as'8 ) ] g'2 | \repeat volta 2 {
        \time 3/4 g'8 c''8 es''4. d''8 | c''8 g'8 bes'8 ( [ as'8 ) ] g'8 ( [ f'8 ) ] | \time 4/4 \break

        es'4 ( d'8. ) es'16 \tempo "      Fine" c'2
      } \time 3/4 | es'8. f'16 g'4 c'4 | \time 4/4 | as'4 g'8. fis'16 g'2 | \time 5/4 \break

      c''4. ( b'8 ) c''8 as'8 g'2 | \time 4/4 | f'8. ( [ g'16 ) ] es'8. d'16 es'2 | es'8. ( [ f'16 ) ] d'8. es'16 c'2 | \time 3/4 \break

      g'8 c''8 es''4. d''8 | c''8 g'8 bes'8 ( [ as'8 ) ] g'8 ( [ f'8 ) ] | \time 4/4 | es'4 ( d'8. ) es'16 c'2  \bar "|."

    }

    \addlyrics {
      Аз     във   Жи --
      во -- та ще бла -- гу -- вам. Ду
      -- хът и ду -- ша -- та ми  шеп
      -- нат  то -- ва. И Ду -- хът
      ми шеп -- не то -- ва, шеп -- не
      то -- ва, шеп -- не то -- ва,
      шеп -- не то -- ва. Ду -- хът и
      ду -- ша -- та ми  шеп -- нат
      то -- ва.}
      \addlyrics {
        Az     vav   Zhi --
        vo -- ta shte bla -- gu -- vam. Du
        -- hat i du -- sha -- ta mi  shep
        -- nat  to -- va. I Du -- hat
        mi shep -- ne to -- va, shep -- ne
        to -- va, shep -- ne to -- va,
        shep -- ne to -- va. Du -- hat i
        du -- sha -- ta mi  shep -- nat
        to -- va.}


        \header {
          title = \titleFunc "Духът ми шепне това" "Duhat mi shepne tova"
        }

        \midi{}

      } % score

      \markup \dc-two "D.C." "con ripetizione"
      \markup \empty-two

      % include foreign translation(s) of the song
    
      \include "lyrics_de/101_duhat_mi_shepne_tova_lyrics_de.ly"

    } % bookpart
