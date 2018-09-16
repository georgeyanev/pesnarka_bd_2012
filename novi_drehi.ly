


melody = \absolute  {
  \clef treble
  \key d \major
  \time 2/4 \tempo "Andante" 4 = 63
  
  \autoBeamOff
 
 a'4 a' | b'4. a'8 |  g'8 fis'  \autoBeamOn e' ( fis' ) |\autoBeamOff g'2 | b'4 b' | cis''4. b'8 \break |

a'8 gis' \autoBeamOn fis' ( gis' ) | a'2 |  a'4 a' | fis''4. e''8 | \autoBeamOff d''8 cis'' \autoBeamOn e'' ( d'' ) |\autoBeamOff cis''2 \break |

b'4 b' | cis''4. b'8 | g'8 g' b'4 | a'2 | fis'4 a' | e'8 fis' g' a' \break |

d''4 cis'' \fermata | cis''4 e'' | b'8 cis'' d'' e'' | g''4 fis'' \fermata | e''4 d'' \break |

 cis''8 b' g' b' b'4 a' \fermata | cis''4 b' | a'8 g' e' a' | g'4 fis' \fermata \break |

}

text = \lyricmode { Как -- то
  че -- ло -- век съ -- бли -- ча дре -- хи -- те
  си о -- вех -- те -- ли, за да мо -- же да на
  -- де -- не но -- ви дре -- хи, чис -- ти, бе --
  ли, тъй Ду -- хът плът -- та о -- ста -- вя
  в_дру -- га плът да се за -- се -- ли и о --
  ти -- ва да на -- сле -- ди но -- ви ня -- ко --
  и пре -- де -- ли.

 
 
}

textL = \lyricmode { Kak -- to
  tsche -- lo -- vek sy -- bli -- tscha dre -- chi -- te
  si o -- vech -- te -- li, sa da mo -- she da na
  -- de -- ne no -- vi dre -- chi, tschis -- ti, be --
  li, tyj Du -- chyt plyt -- ta o -- sta -- vja
  v_dru -- ga plyt da se sa -- se -- li i o --
  ti -- va da na -- sle -- di no -- vi nja -- ko --
  i pre -- de -- li.
 
 
}

\score{
 \header {
  title = \markup { \fontsize #-3 "Небето се отваря / Nebeto se otvaria" }
  %subtitle = \markup \center-column { " " \vspace #1 } 
  
  tagline = " " %supress footer Music engraving by LilyPond 2.18.0—www.lilypond.org
 % arranger = \markup { \fontsize #+1 "Контекстуализация: Йордан Камджалов / Contextualization: Yordan Kamdzhalov" }
  %composer = \markup \center-column { "Бейнса Дуно / Beinsa Duno" \vspace #1 } 

}
  <<
    \new Voice = "one" {
      
      \melody
    }
    \new Lyrics \lyricsto "one" \text
    \new Lyrics \lyricsto "one" \textL
  >>
 
}