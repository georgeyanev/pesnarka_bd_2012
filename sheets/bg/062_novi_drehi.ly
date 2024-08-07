\version "2.24.4"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref062
  \tocItem \markup "Нови дрехи"
  \include "include/bookpart-paper.ily"
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
      "1. Как" -- то че -- ло -- век съ -- бли -- ча дре -- хи -- те си
      о -- вех -- те -- ли, за да мо -- же да на  -- де -- не
      но -- ви дре -- хи, "чис-" -- ти, бе -- ли, тъй ду -- хът "плът-" -- та о --
      ста -- вя в~дру -- га плът да се за -- се -- ли и о --
      ти -- ва да на -- сле -- ди но -- ви ня -- ко -- и пре -- де -- ли.
    }

    \header {
      title = \titleFunc #'ref_desc_2 "Нови дрехи" "Novi drehi"
    }

    \midi{}

  } % score

  \markup \empty-one

  \markup \fontsize #bgCoupletFontSize {
    \hspace #20
    \override #`(baseline-skip . ,bgCoupletBaselineSkip)
    \column {

      \line {   2. Той минава световете}

      \line {   "   "и във тях се въплътява –}

      \line {   "   "нови дарби да добие,}

      \line {   "   "нов живот да устроява.}

      \line {   "   "Тъй напредва той безкрайно}

      \line {   "   "в красота неизразима}

      \line {   "   "и достига светлината – }

      \line {   "   "тамо, де блаженство има.}

      \line {   "   "}

      \line {   3. Тъй прекрасно и премъдро}

      \line {   "   "Господ всичко е направил}

      \line {   "   "и без устрем и надежда}

      \line {   "   "никого не е оставил.}

      \line {   "   "И животът е приятен,}

      \line {   "   "всекиму се пак той нрави,}

      \line {   "   "всичко живо, що въздиша, }

      \line {   "   "вечно Господа да слави! }
    }

  } % markup



  % include foreign translation(s) of the song


} % bookpart
