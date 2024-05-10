\version "2.24.3"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref074
  \tocItem \markup "Блага дума – Blaga dum "
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"
    \new Staff = main \absolute {
      \clef treble
      \key g \major
      \time 5/4
      \tempoFunc "Moderato" 4 "88"
      \autoBeamOff

      <<
        { d'8 d'8 g'8 g' g' a' b'4 b' | }
        \new RhythmicStaff \with {
          \override VerticalAxisGroup.default-staff-staff-spacing =
          #'((basic-distance . 5.5)
             (padding . -30))
          \remove "Time_signature_engraver"
          alignAboveContext = #"main"
          fontSize = #-1.7
          \override StaffSymbol.staff-space = #(magstep -2)
          \override StaffSymbol.thickness = #(magstep -2)
          firstClef = ##f
        }
        {
          \autoBeamOff  d'8.^\markup { \large \italic "ossia по К. Икономов/nach K. Ikonomov"}

          d'16 g'8. g'16 g'8. a'16 b'4 b'4 |
        }
      >>

      d''8 c''8 c''8 b' c'' b' a'4 a' \break |

      \time 6/4  b'8. b'16 b'4 b' c''8. c''16 c''4 c'' | d''8 c''8 b'8 a' b' a' g'4 g'2 \break |

      \time 5/4  e''8 d''8 c''8 b' d'' c'' b'4 b' | c''8 b'8 a'8 g' a' b' c''4 c'' \break |

      \time 6/4  d''8. c''16 d''4 b' b'8. c''16 d''4 d'' | d''8 c''8 b'8 a' b' a' g'4 g'2 \break |

      \time 5/4  b'8 a'8 g'8 fis' g' e' d'4 d' | g'8 g'8 a'8 a' b' b' b'4 b' \break |

      \time 6/4  c''8. c''16 c''4 c'' d''8. d''16 d''4 d'' | d''8 c''8 b'8 a' b' a' g'4 g'2 \break |

      \time 5/4  c''8 e'8 e'8 d' d' d' d'4 d' | d'8 d'8 e'8 fis' g' a' g'4 g' | \break

      \time 6/4  a'8. a'16 a'4 a' b'8. b'16 b'4 b' | c''8 b'8 a'8 g' b' a' g'4 g'2 \break |


      \repeat volta 2 {
        d'8 d'8 c''4. b'8 a'8 g'8 a'4 g' | \time 5/4  fis'8. e'16 fis'8. e'16 fis'8. e'16 e'4 d' \break |

        \time 6/4  e'4 e' fis' fis' g' g' | a'8. a'16 a'8 g' b' a' g'4 g'2 \break |

        \time 5/4  b'8. b'16 b'8 b' b' c'' d''4 d'' | e''8. d''16 c''8 b' d'' c'' b'4 b' \break |

        c''8. b'16 a'8 g' a' b' c''4 c'' | \time 6/4  d''8. c''16 b'8 a' b' a' g'4 g'2 \break |
      }
    }

    \addlyrics {
      Бла -- га ду
      -- ма на ус -- та -- "та      –" туй е "клю-" -- чът на
      сър -- ца -- та, на "сър-" -- ца -- та, на "сър-" --
      ца -- та, туй е "клю-" -- чът на сър -- ца -- та.
      Ми -- ли пог -- лед на о -- чи -- "те –" туй е --
      зик е на ду -- ши -- те, на "ду-" -- ши -- те, на
      "ду-" -- ши -- те, туй е -- зик е на ду -- ши --
      те. Неж -- но "чув-" -- ство про -- я -- ве -- но,
      вся -- ко зло е раз -- то -- пе -- но, раз -- "то-"
      -- пе -- но, раз -- "то-" -- пе -- но, вся -- ко зло
      е раз -- то -- пе -- но. Сил -- на во -- ля у --
      вен -- ча -- ва вся -- ко де -- ло и про -- я --
      ва, вся -- ко де -- ло, вся -- ко де -- ло, вся
      -- ко де -- ло и про -- я -- ва. "Лю-" -- "бов-" -- та
      със тях "съ-" -- граж -- да тоз "жи-" -- вот, що тук
      се раж -- да, раж -- да, раж -- да, раж -- да,
      тоз "жи-" -- вот, що тук се раж -- да, тоз "жи-" --
      вот, що тук се раж -- да, тоз "жи-" -- вот, що
      тук се раж -- да, тоз "жи-" -- вот, що тук се раж
      -- да, тоз "жи-" -- вот, що тук се раж -- да.
    }


    \addlyrics {
      Bla -- ga du
      -- ma na us -- ta -- "ta      –" tuj e klju -- čăt na
      săr -- ca -- ta, na săr -- ca -- ta, na săr --
      ca -- ta, tuj e klju -- čăt na săr -- ca -- ta.
      Mi -- li pog -- led na o -- či -- "te –" tuj e --
      zik e na du -- ši -- te, na du -- ši -- te, na
      du -- ši -- te, tuj e -- zik e na du -- ši --
      te. Než -- no čuv -- stvo pro -- ja -- ve -- no,
      vsja -- ko zlo e raz -- to -- pe -- no, raz -- to
      -- pe -- no, raz -- "to-" -- pe -- no, vsja -- ko zlo
      e raz -- to -- pe -- no. Sil -- na vo -- lja u --
      ven -- ča -- va vsja -- ko de -- lo i pro -- ja --
      va, vsja -- ko de -- lo, vsja -- ko de -- lo, vsja
      -- ko de -- lo i pro -- ja -- va. Lju -- bov -- ta
      săs tjah să -- graž -- da toz ži -- vot, što tuk
      se raž -- da, raž -- da, raž -- da, raž -- da,
      toz ži -- vot, što tuk se raž -- da, toz ži --
      vot, što tuk se raž -- da, toz ži -- vot, što
      tuk se raž -- da, toz ži -- vot, što tuk se raž
      -- da, toz ži -- vot, što tuk se raž -- da.

    }

    \header {
      title = \titleFunc "Блага дума" "Blaga dum"
    }

    \midi{}

  } % score


  \markup \vspace #3

  % include foreign translation(s) of the song
  \include "../../lyrics/de/074_blaga_duma_lyrics_de.ly"

} % bookpart
