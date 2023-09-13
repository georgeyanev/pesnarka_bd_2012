\version "2.24.2"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref101_2
  \tocItem \markup "Духът ми шепне това – Duhăt mi šepne tova"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"


    \new Voice \absolute{
      \clef treble
      \key c \minor
      \time 2/4
      \tempoFunc "Andante" 4 "60"
      \autoBeamOff

      c'8 ( [ d'8 es'8 c'8 ] | es'2 ) | c'8 ( [ d'8 es'8] ) c'8 | \time 3/4  | as'4 ^\fermata g'2 | \time 5/4 \break

      c''4. b'8 c''8 ( [ as'8 ) ] g'2 | \bar ".|:"
        \time 3/4 g'8 c''8 es''4. d''8 | c''8 g'8 bes'8 ( [ as'8 ) ] g'8 ( [ f'8 ) ] | \time 4/4 \break

        es'4 ( d'8. ) es'16 \tempo "      Fine" c'2
      \bar ":|." \time 3/4 | es'8. f'16 g'4 c'4 | \time 4/4 | as'4 g'8. fis'16 g'2 | \time 5/4 \break

      c''4. ( b'8 ) c''8 as'8 g'2 | \time 4/4 | f'8. ( [ g'16 ) ] es'8. d'16 es'2 | es'8. ( [ f'16 ) ] d'8. es'16 c'2 | \time 3/4 \break

      g'8 c''8 es''4. d''8 | c''8 g'8 bes'8 ( [ as'8 ) ] g'8 ( [ f'8 ) ] | \time 4/4 | es'4 ( d'8. ) es'16 c'2  \bar "|."

    }

    \addlyrics {
      Аз __     във __   Жи --
      во -- та ще бла -- гу -- вам. Ду
      -- хът и ду -- ша -- та ми __  шеп
      -- нат __  то -- ва. И "Ду-" -- хът
      ми шеп -- не то -- ва, шеп -- не
      то -- ва, шеп -- не то -- ва,
      шеп -- не то -- ва. Ду -- хът и
      ду -- ша -- та ми __  шеп -- нат __
      то -- ва.}
     \addlyrics {
      Az __     văv __   Ži --
      vo -- ta šte bla -- gu -- vam. Du
      -- hăt i du -- ša -- ta mi __  šep
      -- nat __ to -- va. I "Du-" -- hăt
      mi šep -- ne to -- va, šep -- ne
      to -- va, šep -- ne to -- va,
      šep -- ne to -- va. Du -- hăt i
      du -- ša -- ta mi __  šep -- nat __
      to -- va.}


        \header {
          title = \titleFunc "Духът ми шепне това" "Duhăt mi šepne tova"
        }

        \midi{}

      } % score

      \markup \dc-two "D.C. al Fine" "con ripetizione"
      

      % include foreign translation(s) of the song
    
      \include "../../lyrics/de/101_duhat_mi_shepne_tova_lyrics_de.ly"

    } % bookpart
