\version "2.24.3"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref180
  \tocItem \markup "Песен за двете сестри – Pesen za dvete sestri"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute {
      \clef treble
      \key g \major
      \time 5/4
      \tempoFunc "Andante" 4 "66"
      \autoBeamOff
      b'4
      \grace {  a'16 ( [  b'16 ] } \times 2/3 {
        a'8 )
        --  g'8 --  fis'8 --
      }
      a'8  g'8  fis'8.  e'16  e'8. e'16 | % 2
      \time 3/4   % 2
      e'4  d'2 \break | % 3
      \time 4/4   % 3
      fis'8  g'8  a'8  b'8  c''8
      b'8  d''8  c''8 | % 4
      \time 5/4  b'8.  a'16  a'8.  a'16  a'4 g'2 \break | % 5
      b'4
      \grace { a'16 ( [ b'16 ] } \times 2/3 {
        a'8 )
        -- g'8 -- fis'8 --
      }
      a'8 g'8 fis'8. e'16 e'8.
      e'16 | % 6
      \time 3/4  | % 6
      e'4 d'2 \break | % 7
      \time 5/4  | % 7
      c'4. b8 d'8 c'8 b8 a8
      a8. a16 | % 8
      \time 3/4  | % 8
      a4 g4. d'8 | % 9
      \time 2/4  | % 9
      g'4. fis'8 \break |
      fis'8. e'16 e'8. fis'16 | % 11
      \time 3/4  | % 11
      e'4 d'2 | % 12
      \time 2/4  | % 12
      c'8. a16 a8. a16 | % 13
      a4 b4 | % 14
      \time 3/4  | % 14
      a4 g2 \bar "||"
      \break | % 15
      \times 2/3  {
        b8 b8 b8
      }
      d'8 d'8 d'8. d'16 | % 16
      d'4 c'2 | % 17
      \time 2/4  | % 17
      \times 2/3  {
        c'8 c'8 c'8
      }
      c'8. e'16  | % 18
      \time 3/4  | % 18
      e'4 d'4. d'8 | % 19
      \time 2/4 \break | % 19
      d'8 g'4. |
      \times 2/3  {
        g'8 g'8 g'8
      }
      g'8. fis'16  | % 21
      \time 3/4  | % 21
      a'4 g'2 \bar "||"
      \time 2/4  | % 22
      \tempo"Più mosso" g'8. fis'16
      g'8  b'8 | \break % 23
      a'8 g'8 fis'8. e'16 | % 24
      \time 3/4  | % 24
      fis'8 e'8 d'4.  c''8 ^\markup{
        \huge \italic  {largamente}
      }
      | % 25
      \times 2/3  {
        c''8 a'8 a'8
      }
      b'2 | % 26
      a'4 g'2 \bar "|."

    }
    \addlyrics {
      Аз  но -- ся "скръб-" -- та си
      с~ра -- дост във жи -- во -- та;
      тя ми е дру -- гар -- ка бла --
      га, що "доб-" -- ре ме у -- чи. Аз
      но -- ся "скръб-" -- та си
      с~ра -- дост във жи -- во -- та;
      тя ми е дру -- гар -- ка, що ме
      у -- чи. Ма -- кар без -- спир -- но
      и да пъш -- кам, крот -- ко тя "на-"
      -- пред ме во -- ди. И "слад-" -- ки
      ду -- ми ми го -- во -- ри тя за
      "сес-" -- тра си Ра -- дост, ко -- я --
      то "с~ра-" -- дост ще ме по -- срещ
      -- не. Треп -- на пър -- ви път то
      -- газ сър -- це -- то ми за мой --
      та сес -- тра Ра -- дост.
    }

    \addlyrics {
      Az  no -- sja skrăb -- ta si
      s~ra -- dost văv ži -- vo -- ta;
      tja mi e dru -- gar -- ka bla --
      ga, što dob -- re me u -- či. Az
      no -- sja skrăb -- ta si
      s~ra -- dost văv ži -- vo -- ta;
      tja mi e dru -- gar -- ka, što me
      u -- či. Ma -- kar bez -- spir -- no
      i da păš -- kam, krot -- ko tja na
      -- pred me vo -- di. I slad -- ki
      du -- mi mi go -- vo -- ri tja za
      ses -- tra si Ra -- dost, ko -- ja --
      to s~ra -- dost šte me po -- srešt
      -- ne. Trep -- na păr -- vi păt to
      -- gaz săr -- ce -- to mi za moj --
      ta ses -- tra Ra -- dost.
    }


    \header {
      title = \titleFunc "Песен за двете сестри "" Pesen za dvete sestri"
    }

    \midi{}

  } % score

  \pageBreak

  % include foreign translation(s) of the song
  \include "../../lyrics/de/180_pesenta_sa_dvete_sestri_lyrics_de.ly"


} % bookpart

% Più mosso
%
