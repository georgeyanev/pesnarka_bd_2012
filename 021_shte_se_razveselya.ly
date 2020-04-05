\version "2.18.2"

\paper {
  #(set-paper-size "a5")
}

\bookpart {
\paper {
  print-all-headers = ##t
  print-page-number = ##t
  print-first-page-number = ##t

  % put page numbers on the bottom
  oddHeaderMarkup = \markup ""
  evenHeaderMarkup = \markup ""
  oddFooterMarkup = \markup
    \fill-line {
      ""
      \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string
    }
  evenFooterMarkup = \markup
    \fill-line {
      \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string
      ""
    }

  left-margin = 1.5\cm
  right-margin = 1.5\cm
  top-margin = 1.6\cm
  bottom-margin = 1.2\cm
  ragged-bottom = ##t % do not spread the staves to fill the whole vertical space

  % change lyrics and titles font (affects notes also)
  fonts =
    #(make-pango-font-tree
     "Times New Roman"
     "DejaVu Sans"
     "DejaVu Sans Mono"
     (/ (* staff-height pt) 3.6))

  % change distance between staves
  system-system-spacing =
    #'((basic-distance . 12)
       (minimum-distance . 6)
       (padding . 1)
       (stretchability . 12))
}

\header {
  tagline = ##f
}

\score{
  \layout { 
    indent = 0.0\cm % remove first line indentation
    ragged-last = ##f % do not spread last line to fill the whole space
    \context {
      \Score
      \omit BarNumber %remove bar numbers
    } % context

    \context { % change staff size
      \Staff
      fontSize = #+0 % affects notes size only
      \override StaffSymbol #'staff-space = #(magstep -3)
      \override StaffSymbol #'thickness = #0.5
      \override BarLine #'hair-thickness = #1
      %\override StaffSymbol #'ledger-line-thickness = #'(0 . 0)
    }

    \context { % adjust space between staff and lyrics and between the two lyric lines
      \Lyrics
      \override VerticalAxisGroup.nonstaff-relatedstaff-spacing = #'((basic-distance . 4.5))
      \override VerticalAxisGroup.nonstaff-nonstaff-spacing = #'((minimum-distance . 2))
    }
  } % layout

  \new Voice \absolute  {
    \clef treble
    \key d \minor
    \time 2/4 
    \tempo \markup { % make tempo note smaller
      \concat { "Largo " \normal-text { "(" }
          \teeny \general-align #Y #DOWN \note #"4" #0.8
          \normal-text { " = 54)" }
      }
    }  
    \autoBeamOff
      a'4 d''4 | a'4 d''8. e''16 | \time 3/4 d''2 a'4 | \time 2/4 bes'4. ( d''8 ) | a'2 | g'4. ( a'8 ) | \break

f'4 e'4 | d'4 cis'4 | d'2 | \repeat volta 2 { a'4 d''8. e''16 | f''2 | e''4 d''4  \break

cis''4 d''8. bes'16 | a'2 | g'4. ( a'8 ) | f'2 | e'4 cis'4 | } \alternative { {d'2 } {\time 3/4 d'2 a'4} } \break

d''4 c''4 bes'8 a'8 | g'8([a'8]) f'4^- e'4 | \time 2/4 d'8([e'8]) f'4 | e'8 d'8 cis'8 e'8 | \break

\time 3/4 d'2 d''8 ([e''8]) | f''4 e''4 d''4 | \time 4/4 c''4 bes'4 a'8 g'8 a'8([bes'8]) | \time 3/4 a'2 d''8 ([e''8]) | \break

f''4 e''4 d''4 | \time 4/4 c''4 bes'4 a'8 g'8 a'8 ([bes'8]) | \time 2/4 a'2 | c''4 b'8 c'' | \break

d''4 f'4 | bes'4 a'4 | a'4 gis'4 | a'2 | d''4 cis''8 d''8 | e''4 a'4 | bes'4 a'4 | \pageBreak

a'4. ( d''8 ) | d''2 | d''4 e''4 | \tempo "rit." f''4 e''4 | d''2 | d''2 | \tempo "a tempo" d''4 c''8 bes'8 | a'4 g'4 | \break

f'4 e'4 | d'4 a4 | d'4 e'4 | f'4 e'4 | d'2 | d'2 | d''4 c''8\noBeam bes'8 | \break

a'4 g'4 | f'4 e'4 | d'4 a4 | d'4 e'4 | f'4 e'4 | d'2 | d'2 | \bar "|."

  }
  
 \addlyrics {
Ще се раз -- ве -- се -- ля пре -- мно -- го за --
ра -- ди Гос -- по -- да, ду -- ша -- та ми ще се 
за -- ра -- ду -- ва в~Бо -- га мо -- е -- го, го: За --
що -- то ме о -- бле -- че в~o -- деж -- ди на спа -- се -- ни --
е, за -- гър -- на ме в~ман -- ти -- я на прав -- да, за -- 
гър -- на ме в~ман -- ти -- я на прав -- да, ка -- то же --
них, у -- кра -- сен със ве -- нец, ка -- то не -- вес -- та, на -- ки -- 
те -- на със ут -- ва -- ри -- те си, ка -- то не -- вес -- та,
на -- ки -- те -- на със ут -- ва -- ри -- те си, ка -- то де --
ви -- ца, пре -- из -- бра -- на от дру -- гар -- ки -- те си.
  }

  \addlyrics {
Shte se raz -- ve -- se -- lya pre -- mno -- go za --
ra -- di Gos -- po -- da, du -- sha -- ta mi shte se 
za -- ra -- du -- va v~Bo -- ga mo -- e -- go, go: Za --
shto -- to me o -- ble -- che v~o -- dezh -- di na spa -- se -- ni --
e, za -- gar -- na me v~man -- ti -- ya na prav -- da, za -- 
gar -- na me v~man -- ti -- ya na prav -- da, ka -- to zhe --
nih, u -- kra -- sen sas ve -- nets, ka -- to ne -- ves -- ta, na -- ki -- 
te -- na sas ut -- va -- ri -- te si, ka -- to ne -- ves -- ta,
na -- ki -- te -- na sas ut -- va -- ri -- te si, ka -- to de --
vi -- tsa, pre -- iz -- bra -- na ot dru -- gar -- ki -- te si.  
  }

  
  \header {
    title = \markup \column \normal-text \fontsize #2.5 {
              \center-align
              \line { Ще се развеселя }
              \vspace #-0.6
              \center-align
              \line \fontsize #-3 { Shte se razveselya }
              \vspace #-0.8
              \center-align
              \line \fontsize #-3 { " " }
            }
  }
  
  \midi{}

} % score


%\pageBreak

\markup \column \normal-text {
  \line {" "}
  \line {" "}
  \line {" "}
}

% include foreign translation(s) of the song
\include "lyrics_de/021_ste_se_razveselja_lyrics_de.ly"

} % bookpart
