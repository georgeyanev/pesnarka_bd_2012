
% ****************************************************************
% Start cut-&-pastable-section
% ****************************************************************

#(ly:set-option 'eps-box-padding 3.000000)



\paper {
  indent = 0\mm
  line-width = 160\mm
  % offset the left padding, also add 1mm as lilypond creates cropped
  % images with a little space on the right
  line-width = #(- line-width (* mm  3.000000) (* mm 1))
  line-width = 160\mm - 2.0 * 10.16\mm
  % offset the left padding, also add 1mm as lilypond creates cropped
  % images with a little space on the right
  line-width = #(- line-width (* mm  3.000000) (* mm 1))
}

\layout {

}



% ****************************************************************
% ly snippet:
% ****************************************************************
\sourcefileline 132
SopranoMusic = \relative { a' a a a }
AltoMusic = \relative { f' f f f }
VerseOne = \lyricmode {
  \set stanza = "1."
  Words to verse one
}
VerseTwo = \lyricmode {
  \set stanza = "2."
  Words to verse two
}
VerseThree = \lyricmode {
  \set stanza = "3."
  Words to verse three
}
TenorMusic = \relative { a a a a }
BassMusic = \relative { f f f f }
TwoVoicesPerStaff = ##t
\include "satb.ly"



% ****************************************************************
% end ly snippet
% ****************************************************************



