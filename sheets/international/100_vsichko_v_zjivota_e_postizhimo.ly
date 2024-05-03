\version "2.24.3"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref100
  \tocItem \markup "Всичко в живота е постижимо – Vsičko v života e postižimo"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"


    \new Voice \absolute  {
      \clef treble
      \key c \major
      \time 4/4
      \tempoFunc "Moderato" 4 "76"
      \autoBeamOff

      \autoBeamOff

      c'4 e'8. f'16 g'4 e' | a'4 g'8. e'16 g'4 g' \break |

      g'4 f'8. e'16 f'4 a' | \time 5/4  g'4 g'8. fis'16 g'2 c''4 | \time 2/4  b'4 a'8 b' \break |

      \time 4/4  c''4 c''2 c''4 \repeat volta 2 {
        g'4 e'8. f'16 g'4 g' | a'4 g'8 ( [e'] ) f'4 d' | \break

        d'4 d'8 e' f'4 a' g'2 e'8 d' e' f' | \time 2/4  g'2 | \break

        \time 5/4  a'4 g' a'8 b' c''2 | \time 4/4  d''8 [( c'' )] b' [( a' )] g'2 \break

        d'8  [( e' )] f' [( e' )] g' [( f' )] e' d'
      } \alternative { { | c'2 r4 c''4 | } {c'2. r4 } } \bar "|."
    }

    \addlyrics {
      Всич -- ко
      "в~жи-" -- во -- та е пос -- ти -- жи -- мо, ко --
      га -- то вре -- ме -- то е "доб-" -- ро и ний сме
      ра -- зум -- ни. За -- що -- то "доб-" -- ро -- то
      е ос -- но -- ва, а ра -- зум -- ност -- "та   –"
      цел, с~ко -- и -- то Ду -- хът гра -- ди бъд --
      ни -- ни, бъд -- ни -- ни, ве -- ли -- ки бъд --
      ни -- ни. За -- ни.
    }

    \addlyrics {
      Vsič -- ko
      v~ži -- vo -- ta e pos -- ti -- ži -- mo, ko --
      ga -- to vre -- me -- to e dob -- ro i nij sme
      ra -- zum -- ni. Za -- što -- to dob -- ro -- to
      e os -- no -- va, a ra -- zum -- nost -- "ta   –"
      cel, s~ko -- i -- to Du -- hăt gra -- di băd --
      ni -- ni, băd -- ni -- ni, ve -- li -- ki băd --
      ni -- ni. Za -- ni.
    }



    \header {
      title = \titleFunc "Всичко в живота е постижимо" "Vsičko v života e postižimo"
    }

    \midi{}

  } % score

  % \markup \dc-two "D.C." "con repitione"


  % include foreign translation(s) of the song

  \markup \vspace #3

  \include "../../lyrics/de/100_vsichko_v_zhivota_e_postizhimo_lyrics_de.ly"

} % bookpart
