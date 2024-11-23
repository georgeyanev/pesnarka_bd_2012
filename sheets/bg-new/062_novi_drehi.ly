\version "2.24.4"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref062
  \tocItem \markup "Нови дрехи"
  \include "include/bookpart-paper.ily"
  \paper {
      print-first-page-number = ##t
      bookpart-level-page-numbering = ##t
  print-page-number = ##t
      first-page-number = #41
}
\score {
    \include "include/score-layout.ily"

    \new Voice \absolute  {
      \clef treble
      \key d \major
      \time 4/4
      \tempoFunc "Andante" 4 "63"
      \autoBeamOff
      a'4 a' b'4. a'8 | g'8 fis' e' ( [ fis' ] ) g'2 | b'4 b' cis''4. b'8 | \break
      a'8 gis'  fis' ([ gis'] )  a'2 | a'4 a' fis''4. e''8 | d''8 cis''  e'' ( [ d''] ) cis''2 \break |
      b'4 b' cis''4. b'8 | g'8 g'  b'4  a'2 | fis'4 a' e'8 fis' g' a' \break |
      d''4 cis''2 r4 | cis''4 e'' b'8 cis'' d'' e'' | g''4 fis''2 r4 | e''4 d'' cis''8 b' g' b' | \break  b'4 a'2 r4 | cis''4 b'  a'8 g' e' a' | g'4 fis'2 r4 \break | \bar "|."
    }

    \addlyrics {
      \set stanza = "1. " Как -- то че -- ло -- век съ -- бли -- ча дре -- хи -- те си
      о -- вех -- те -- ли, за да мо -- же да на  -- де -- не
      но -- ви дре -- хи, чис -- ти, бе -- ли, тъй ду -- хът плът -- та о --
      ста -- вя в~дру -- га плът да се за -- се -- ли и о --
      ти -- ва да на -- сле -- ди но -- ви ня -- ко -- и пре -- де -- ли.
    }

    \header {
      title = \titleFunc #'ref_desc_2 "Нови дрехи" "Novi drehi"
    }

    \midi{}

  } % score
  

  \markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip){
    \fill-line {
      \column {
        \line {
          \bold "2."
          \column {
            "Той минава световете"
            "и във тях се въплътява –"
            "нови дарби да добие,"
            "нов живот да устроява."
            "Тъй напредва той безкрайно"
            "в красота неизразима"
            "и достига светлината –"
            "тамо, де блаженство има."
          }
        }
        \vspace #1
        \line {
          \bold "3."
          \column {
            "Тъй прекрасно и премъдро"
            "Господ всичко е направил"
            "и без устрем и надежда"
            "никого не е оставил."
            "И животът е приятен,"
            "всекиму се пак той нрави,"
            "всичко живо, що въздиша,"
            "вечно Господа да слави!"
          }
        }

      }
    }
  }


} % bookpart
