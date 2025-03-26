\version "2.24.4"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref068
  \tocItem \markup "Що е същността"
\paper {
  print-all-headers = ##t
  print-page-number = ##t
  print-first-page-number = ##t


  % put page numbers on the top and change the font style.
  oddHeaderMarkup = \markup
  \fill-line {
    ""
    \unless \on-first-page-of-part \fromproperty #'header:instrument
    \if \should-print-page-number \abs-fontsize #7 { \number \fromproperty #'page:page-number-string }
  }
  %% evenHeaderMarkup would inherit the value of
  %% oddHeaderMarkup if it were not defined here
  evenHeaderMarkup = \markup
  \fill-line {
    \if \should-print-page-number \abs-fontsize #7 { \number \fromproperty #'page:page-number-string }
    \unless \on-first-page-of-part \fromproperty #'header:instrument
    ""
  }

  oddFooterMarkup = \markup ""

  evenFooterMarkup = ""
  left-margin = 1.5\cm
  right-margin = 1.5\cm
  top-margin = 1\cm
  bottom-margin = 1.2\cm
  ragged-bottom = ##t % do not spread the staves to fill the whole vertical space
  top-markup-spacing.basic-distance = 0\mm % margin between page number and system for the first page
  top-system-spacing.basic-distance = 10\mm % margin between page number and system for the other pages

  % change distance between staves
  system-system-spacing =
  #'((basic-distance . 16)
     (minimum-distance . 6)
     (padding . 3)
     (stretchability . 12))
}

\header {
  tagline = ##f
}

  \score {
  \layout {
  indent = 0.5\cm % remove first line indentation
  ragged-last = ##f % do spread last line to fill the whole space
  \override Staff.BarLine.thick-thickness = #4 %make the end and repeat bars thiner
  \override Score.VoltaBracket.font-size = #-1.7 % make the repeat number fontsize smaller
  
  \context {
    \Score
    \override MetronomeMark.font-size = #1.4 % increase the tempo fontsize
    \override TupletNumber.font-size = #0.4 % increase the triol number
  } % context

  \context {
    % change staff size
    \Staff
    \override StaffSymbol.thickness = #0.5
    \override BarLine.hair-thickness = #1
  }
    \context {
    % adjust space between staff and lyrics and between the two lyric lines l
    \Lyrics
    \override LyricHyphen.minimum-length = #0.5 %force a hyphen
    \override LyricHyphen.minimum-distance = #1 %force a hyphen
    %\override StanzaNumber.font-series = #'normal % make stanza number font normal
        \override VerticalAxisGroup.nonstaff-relatedstaff-spacing = #'(
                                                                    (basic-distance . 4.5)
                                                                    (padding . 1.5)
                                                                    )
    \override VerticalAxisGroup.nonstaff-nonstaff-spacing = #'((minimum-distance . 3))
    includeGraceNotes = ##t
  }
}

    \new Voice \absolute {
      \clef treble
      \key b \minor
      \time 6/4
      \tempoFunc "Largo" 4 "40"
      \partial 4
      \autoBeamOff

      b8. cis'16| d'8 fis'4. eis'8 fis'8 g'8 fis'4. fis'8 b'8| d''4. d''8 cis''4 b'2 fis'8. b'16 | \break

      \time 5/4  a'8 g'4. e'8. fis'16 g'8 fis'4. | \time 6/4 fis'8 e'8 d'4 cis'4 b2 fis'8. b'16 \time 5/4 | \break

      \time 5/4  a'8 g'4. e'8. fis'16 g'8 fis'4. | \time 5/4 fis'8 e'8 d'4 cis'4 b2 | \break

      \time 5/4 d'4. d'8 cis'4 b2 | cis'2 b8 ais8 b4. r8 | \break

      \bar ".|:-||"

      \time 4/4 b4 cis'4 d'4 b4 | \time 3/4 d'4 fis'2 | \time 4/4 e'4 fis' g' e' | \time 3/4 g'4 b'2  \break


      \time 6/4 b'4 cis''4 d'' b' g' e' | g' b' a' g' fis' b | \break

      cis'8 d' fis' e' d'4 cis' b2 | fis'4 b' d'' b' g' e' |\break

      g'4 b'4 a'4 g'4 fis'4 b |  cis'8 d' fis' e' d'4 cis'4 b2 | \break



      \time 3/4


      \bar ":|.|:"  b8. cis'16 d'8 fis'4. | e'8. fis'16 g'8 fis'4. | fis'8 b'8 d''4. b'8| \break

      \time 4/4 cis''4. ais'8 b'4. r8 | \time 3/4 fis'8. b'16 a'8 g'4. | e'8. fis'16 g'8 fis'4. | \break

      \time 5/4	fis'8 e' d'4 cis' b4. r8 \bar ":|." | \time 4/4 d'8. d'16 cis'4 b2 | \time 5/4 cis'2 b8 ais8 b2 |  \bar "|." \break


    }

    \addlyrics {
      Във у -- ма ми ми -- съл чу -- ка, все -- ки час ме пи -- та
      що в~жи -- во -- та е ре -- ал -- но, що е същ -- ност -- та,
      що в~жи -- во -- та е ре -- ал -- но, що е същ -- ност -- та.
      А ду -- хът ми шеп  -- не та  -- ка:

      \set stanza = "1. " Слън  -- це  -- то, що гре -- е, птич -- ка -- та, що пе -- е,

      всич -- ко, що жи -- ве -- е, стра -- да и коп -- не -- е,

      и -- зя -- вя -- ва  същ -- ност -- та;   всич -- ко, що жи -- ве -- е, стра -- да и коп -- не -- е,

      и -- зя -- вя -- ва същ -- но -- ста.

      Кра  -- со  -- та  -- та, Ис  -- ти  -- на  -- та, Лю -- бов  -- та и Мъд  -- рост  -- та,

      туй е Гос  -- под на Зе  -- мя  -- та, туй е същ  -- ност  -- та! Днес ду  -- хът ми шеп  -- не та  -- ка.
    }

    \addlyrics {
      " " " " " " " " " " " " " " " "

      " " " " " " " " " " " " " " " "

      " " " " " " " " " " " " " " " " " "

      " " " " " " " " " " " " " " " " " " " " " " " " " " " "

      " " " " " " " " " " " " " " " " " " \set stanza = "2. " И -- ди при цве -- тя -- та, в~по -- ле -- то, в~го -- ра -- та,
      гле -- дай кра -- со -- та -- та, ди -- шай а -- ро -- ма -- та, там ще ви -- диш същ -- ност  -- та;
      гле -- дай кра -- со -- та -- та, ди -- шай а -- ро -- ма -- та, там ще ви -- диш същ -- ност  -- та.

      " " " " " " " " " " " " " " " " " "

      " " " " " " " " " " " " " " " " " "
    }

    \addlyrics {
      " " " " " " " " " " " " " " " "

      " " " " " " " " " " " " " " " "

      " " " " " " " " " " " " " " " " " "

      " " " " " " " " " " " " " " " " " " " " " " " " " " " "

      " " " " " " " " " " " " " " " " " " \set stanza = "3. " Пог -- лед  -- ни не -- бе -- то и пи -- тай сър -- це -- то,
      в~таз кра -- со -- та див -- на и мъд -- рост все -- мир -- на не ви -- дя ли същ -- ност -- та;  в~таз кра -- со -- та див -- на и мъд -- рост все -- мир -- на не ви -- дя ли същ -- ност -- та.

      " " " " " " " " " " " " " " " " " "

      " " " " " " " " " " " " " " " " " "
    }

    \addlyrics {
      " " " " " " " " " " " " " " " "

      " " " " " " " " " " " " " " " "

      " " " " " " " " " " " " " " " " " "

      " " " " " " " " " " " " " " " " " " " " " " " " " " " "

      " " " " " " " " " " " " " " " " " "     \set stanza = "4. " Кo --  га май -- ка неж -- на за рож -- ба се жерт -- ва,
      в~таз о -- бич при -- мер -- на и лю -- бов без -- мер -- на
      ти ще ви -- диш същ -- ност -- та;
      в~таз о -- бич при -- мер -- на и лю -- бов без -- мер -- на
      ти ще ви -- диш същ -- ност -- та.

      " " " " " " " " " " " " " " " " " "

      " " " " " " " " " " " " " " " " " "
    }

    \header {
      title = \titleFunc #'ref_desc_4 "Що е същността" "Što e săštnostta"
    }

    \midi{}

  } % score

  \markup \vspace #4


  \label #'ref055_2
  \tocItem \markup "Ти Си проявената Любов"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute  {
      \clef treble
      \key e \minor
      \time 4/4
      \tempoFunc "Adagio" 4 "56"
      \autoBeamOff
      b4 e' g' b' | \time 3/4  a'4 g' fis'8. e'16 |
      fis'2 fis'4 |

      a'4 g' fis' \break |

      e'2 c''4 |

      \time 4/4  b'8. a'16 g'8. a'16 b'4. g'8   |
      \time 3/4  fis'8. a'16 g'4 fis' \break|  e'2 c''4   |

      \time 4/4  b'8. a'16 g'8. a'16 b'4. g'8 | \time 3/4  fis'8. a'16 g'4 fis' | e'2 r4 \bar "|."
    }

    \addlyrics {
      Ти Си про -- я -- ве -- на -- та Лю -- бов към мен, Гос -- по --
      ди. Ду -- ша -- та ми коп -- ней за Твой -- та чис -- то --
      та. Ду -- ша -- та ми коп -- ней за Твой -- та свет -- ли -- на.
    }

    \header {
      title = \titleFunc #'ref_desc_4 " Ти Си проявената Любов" "Ti Si projavenata Ljubov"
    }

    \midi{}

  } % score
  \markup \dc-one "D.C."

} % bookpart
