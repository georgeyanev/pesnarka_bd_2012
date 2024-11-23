\version "2.24.4"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref099
  \tocItem \markup "Малкият извор"
  \include "include/bookpart-paper.ily"
  \paper {
      print-first-page-number = ##t
      bookpart-level-page-numbering = ##t
  print-page-number = ##t
      first-page-number = #82
}
\score {
    \include "include/score-layout.ily"


    \new Voice \absolute  {
      \clef treble
      \key d \major
      \time 2/4
      \tempoFunc "Allegretto" 4 "108"
      \autoBeamOff

      d'4 fis'4 | a'8 g'8 fis'8 g'8| a'4 ( b' ) | a'2 |b'8. b'16 b'8 b'8 | \break

      d''4 b'4 |  \time 3/4 a'8. b'16  a'2 | b'8 a'8 g'8 fis'8 a'8 g'8 | \time 2/4 fis'4 d'4 | \break

      \time 3/4 e'8 e'8 fis' fis' g'8 g' | \time 2/4 a' a' a'4 | b'8 a' g' fis' \break

      \time 3/4 a'8 g' fis' e' d'4  |  \bar ".|:"
      \time 2/4 e'8 e' e'4 | fis'8 fis'  fis'4 | g'8 g'  g'4 |\break

      a'8 a' b' a' | g' fis'  a'4 | fis'8 fis' a'8 g'|  fis' e'  d'4| \break

      e'8 e' e' e'| e' fis'  g'4 | e'8 fis' g'4 | b'8 b'8  b'8 a'8 \break |

      g'8 fis'8 a'4 | fis'8 fis' a'8 g'| fis' e' d'4 | \bar ":|."

    }

    \addlyrics {
      Све -- тъл лъч от го -- ре сли  --  за
      мал -- ки -- те цве -- тя да о -- за -- ри,
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

    \header {
      title = \titleFunc #'ref_desc_10 "Малкият извор" "Malkiyat izvor"
    }

    \midi{}

  } % score
  \markup \dc-two "D.C.""con ripetizione"


} % bookpart
