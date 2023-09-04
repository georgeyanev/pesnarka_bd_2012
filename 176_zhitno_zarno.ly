\version "2.24.1"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref176
  \tocItem \markup "Житно зърно – Žitno zărno "
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \relative c' {
      \clef treble
      \key c \minor
      \time 4/4
      \tempoFunc "Moderato" 4 "72"
      \autoBeamOff
      \partial 4
      c4 | c2 d4 es | c g'2 g4^\markup { \large \italic "sosten."} | bes8 as g f as2^\markup { \large \italic "a tempo"} | g2. g4 | \break

      c,4. c8 d2 (| d4) d^\markup { \large \italic "sosten."} f8 es d c | d4 d2 d4 |\break

      f8.^\markup { \large \italic "a tempo"} f16 g8. g16 c4. \fermata c8 | \time 3/4 bes as g f as4 \fermata | g2 f4 | \break

      f4. g8 es4 | c2 d4 | d2 b4 | c2 c4 | \repeat volta 2 {

        \tempoFunc "Allegro vivace" 2. "50"
        c8 -> d es d c b | |\break

        c -> d es d c  b | c -> d es d c 4 | \break

        g'2. (|g4) f f8 g8 | as g f e f g | \break

        as8 g f e f g | as g f4 c'4 | c2. (| c4) c c | \break

        f -> es d | es -> d c | b -> c d | c2. ( | c4)  c c  | \break

        f -> es d | g -> es c | b c d |
      }
      \alternative {
        {
          c2. ( | c4)  r4 c,4  |
        }  {c'2. \bar "||"  \break }
      }


      \time 4/4
      \tempoFunc "Moderato" 4 "72"
      \bar ".|:-||" c4. g8 bes as g f | as2 g4. f8 | f g es2 d4 | c2 r4
      \bar ":|."
    }

    \addlyrics {
      Бях жи -- те -- но зър -- но, за -- ро -- ве -- но в~зе -- мя -- та.

      Във сън дъл -- бок, __ Жи -- во -- та не поз -- на -- вах.

      Но дой -- де лъч, при мен до -- стиг -- на Свет -- ли -- на -- та

      и ме съ -- бу -- ди със сво -- я зов.

      От жи -- те -- но "зър-" -- но аз ста -- нах мал -- ка птич -- ка,

      в~въз -- ду -- ха да хвър -- кам. __

      Днес -- ка за пър -- ви път, до -- бре пре -- ме -- не -- на,

      на ло -- зе -- на "пръч-" -- ка кац -- нах __ и от слад -- ко -- то гроз -- де

      за пръв път хап -- нах, __ и от слад -- ко -- то гроз -- де

      за пръв път хап -- нах. __ От нах.

      Кол -- ко "ху-" -- бав е жи -- во -- тът, то -- га -- ва си ка -- зах.}
      \addlyrics {
        Bjah ži -- te -- no zăr -- no, za -- ro -- ve -- no "v~ze-" -- mja -- ta.

        Văv săn dăl -- bok, __ Ži -- vo -- ta ne poz -- na -- vah.

        No doj -- de lăč, pri men do -- stig -- na Svet -- li -- na -- ta

        i me să -- bu -- di săs svo -- ja zov.

        Ot ži -- te -- no zăr -- no az sta -- nah mal -- ka ptič -- ka,

        v~văz -- du -- ha da hvăr -- kam. __

        Dnes -- ka za păr -- vi păt, do -- bre pre -- me -- ne -- na,

        na lo -- ze -- na prăč -- ka kac -- nah __ i ot slad -- ko -- to groz -- de

        za prăv păt hap -- nah, __ i ot slad -- ko -- to groz -- de

        za prăv păt hap -- nah. __ Ot nah.

        Kol -- ko "hu-" -- bav e ži -- vo -- tăt, to -- ga -- va si ka -- zah.}

        \header {
          title = \titleFunc "Житно зърно" "Žitno zărno"
        }

        \midi{}

      } % score



      % include foreign translation(s) of the song
      \include "lyrics_de/176_zhitno_zarno_lyrics_de.ly"

    } % bookpart

    % Più mosso
    %
