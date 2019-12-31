\version "2.18.2"

\paper {
  print-all-headers = ##t
  print-page-number = ##f 
  left-margin = 2\cm
  right-margin = 2\cm
  ragged-bottom = ##t % do not spread the staves to fill the whole vertical space
}

\header {
  tagline = ##f
}

\bookpart {
\score{
  \layout { 
    indent = 0.0\cm % remove first line indentation
    ragged-last = ##f % do spread last line to fill the whole space
    \context {
      \Score
      \omit BarNumber %remove bar numbers
    } % context
  } % layout

  \new Voice \absolute  {
    \clef treble
    \key d \major
    \time 2/4 \tempo "Andante" 4 = 63
    \autoBeamOff
    a'4 a' | b'4. a'8 |  g'8 fis'  \autoBeamOn e' ( fis' ) |\autoBeamOff g'2 | b'4 b' | cis''4. b'8 \break |
    a'8 gis' \autoBeamOn fis' ( gis' ) | a'2 |  a'4 a' | fis''4. e''8 | \autoBeamOff d''8 cis'' \autoBeamOn e'' ( d'' ) |\autoBeamOff cis''2 \break |
    b'4 b' | cis''4. b'8 | g'8 g' b'4 | a'2 | fis'4 a' | e'8 fis' g' a' \break |
    d''4 cis'' \fermata | cis''4 e'' | b'8 cis'' d'' e'' | g''4 fis'' \fermata | e''4 d'' \break |
    cis''8 b' g' b' b'4 a' \fermata | cis''4 b' | a'8 g' e' a' | g'4 fis' \fermata \break | \bar "|."
}
  
  \addlyrics {
    Как -- то че -- ло -- век съ -- бли -- ча дре -- хи -- те си 
    о -- вех -- те -- ли, за да мо -- же да на  -- де -- не 
    но -- ви дре -- хи, чис -- ти, бе -- ли, тъй Ду -- хът плът -- та о -- 
    ста -- вя в~дру -- га плът да се за -- се -- ли и о --
    ти -- ва да на -- сле -- ди но -- ви ня -- ко -- и пре -- де -- ли.
  }

  \addlyrics {
    Kak -- to che -- lo -- vek sa -- bli -- cha dre -- hi -- te si 
    o -- veh -- te -- li, za da mo -- zhe da na  -- de -- ne 
    no -- vi dre -- hi, chis -- ti, be -- li, tay Du -- hat plat -- ta o -- 
    sta -- vya v~dru -- ga plat da se za -- se -- li i o --
    ti -- va da na -- sle -- di no -- vi nya -- ko -- i pre -- de -- li.
  }

  \header {
    title = "Нови дрехи / Novi drehi"
  }

} % score

\markup { \hspace #20 \vspace #10
   \fontsize #+5 {
     Missing text here ...
   }
}


} % bookpart
