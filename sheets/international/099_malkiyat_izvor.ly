\version "2.24.2"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref099
  \tocItem \markup "Малкият извор – Malkijat izvor"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"


    \new Voice \absolute  {
      \clef treble
      \key d \major
      \time 2/4
      \tempoFunc "Allergetto" 4 "108"
      \autoBeamOff

      d'4 fis'4 | a'8 g'8 fis'8 g'8| a'4 ( b' ) | a'2 |b'8. b'16 b'8 b'8 | \break

      \time 3/4 d''4 b'4 a'8. b'16 | \time 2/4 a'2 | \time 3/4 b'8 a'8 g'8 fis'8 a'8 g'8 | \time 2/4 fis'4 d'4 | \break

      e'8 e'8 fis' fis' | \time 3/4 g'8 g' a' a' a'4| \time 2/4 b'8 a' g' fis' \break

      a'8 g' fis' e' | d'4 e'8 e' | \repeat volta 2 {
        e'4 fis'8 fis' | fis'4 g'8 g' |\break

        g'4 a'8 a' | b' a' g' fis' | a'4 fis'8 fis' |  a'8 g' fis' e' | \break

        d'4 e'8 e' | e' e' e' fis' | g'4 e'8 fis' | \break

        g'4 b'8 b'8 | b'8 a'8 g'8 fis'8 | a'4 fis'8 fis' | \break

        a'8 g' fis' e' |
      } \alternative { { d'4 e'8 e'8 } { d'2 } } \bar "|."

    }

    \addlyrics {
      Све -- тъл лъч от го -- ре сли  --  за,
      мал -- "ки-" -- те цве -- тя да о -- за -- ри;
      бли -- зо из -- вор -- че из -- ви -- ра,
      ле -- ко бли -- ка, шуш  -- не, шу -- мо -- ли
      и цве -- тя -- та веч -- но ве -- се -- ли.
      Ве -- се -- ли, ве -- се -- ли, ве -- се -- ли,
      бли -- ка, шуш -- не, ве -- се -- ли,
      бли -- ка, шуш -- не, ве -- се -- ли,
      бли -- ка, шуш -- не, ве -- се -- ли,
      ве -- се -- ли, ле -- ко бли  -- ка, шу --  мо -- ли
      и цве -- тя -- та ве -- се -- ли. Ве -- се -- ли.
    }

    \addlyrics {
      Sve -- tăl lăč ot go -- re sli  --  za,
      mal -- ki -- te cve -- tja da o -- za -- ri;
      bli -- zo iz -- vor -- če iz -- vi -- ra,
      le -- ko bli -- ka, šuš  -- ne, šu -- mo -- li
      i cve -- tja -- ta več -- no ve -- se -- li.
      Ve -- se -- li, ve -- se -- li, ve -- se -- li,
      bli -- ka, šuš -- ne, ve -- se -- li,
      bli -- ka, šuš -- ne, ve -- se -- li,
      bli -- ka, šuš -- ne, ve -- se -- li,
      ve -- se -- li, le -- ko bli  -- ka, šu --  mo -- li
      i cve -- tja -- ta ve -- se -- li. Ve -- se -- li.
    }


    \header {
      title = \titleFunc "Малкият извор" "Malkiyat izvor"
    }

    \midi{}

  } % score
  \markup \dc-two "D.C.""con ripetizione"

  %

  % include foreign translation(s) of the song
  \pageBreak
  \include "../../lyrics/de/099_malkijat_izvor_lyrics_de.ly"

} % bookpart
