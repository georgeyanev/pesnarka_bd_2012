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

      \context {
        % change staff size
        \Staff
        fontSize = #+0 % affects notes size only
        \override StaffSymbol #'staff-space = #(magstep -3)
        \override StaffSymbol #'thickness = #0.5
        \override BarLine #'hair-thickness = #1
        %\override StaffSymbol #'ledger-line-thickness = #'(0 . 0)
      }

      \context {
        % adjust space between staff and lyrics and between the two lyric lines
        \Lyrics
        \override VerticalAxisGroup.nonstaff-relatedstaff-spacing = #'((basic-distance . 4.5))
        \override VerticalAxisGroup.nonstaff-nonstaff-spacing = #'((minimum-distance . 2))
      }
    } % layout

    \new Voice \absolute {
      \clef treble
      \key d \major
      \time 6/4
      \tempo \markup {
        % make tempo note smaller
        \concat {
          "Largo " \normal-text { "(" }
          \teeny \general-align #Y #DOWN \note #"4" #0.8
          \normal-text { " = 40)" }
        }
      }
      \partial 4
      \autoBeamOff

      b8. fis'16| d'8 fis'4. eis'8 fis'8 g'8 fis'4. fis'8 b'8| d''4. d''8 cis''4 b'2 fis'8. b'16 | \break

      \time 5/4  a'8 g'4. e'8. fis'16 g'8 fis'4. | \time 6/4 fis'8 e'8 d'4 cis'4 b2 fis'8. b'16 \time 5/4 | \break

      \time 5/4  a'8 g'4. e'8. fis'16 g'8 fis'4. | \time 5/4 fis'8 e'8 d'4 cis'4 b2 | \break

      \time 5/4 d'4. d'8 cis'4 b2 | cis'2 b8 ais8 b4. r8 | \break

      \time 4/4 b4 cis'4 d'4 b4 | \time 3/4 d'4 fis'2 | \time 4/4 e'4 fis' g' e' | \time 3/4 g'4 b'2  \break

      \time 6/4 b'4 cis''4 d'' b' g' e' | g' b' a' g' fis' b | \break

      cis'8 d' fis' e' d'4 cis' b2 | fis'4 b' d'' b' g' e' |\break

      g'4 b'4 a'4 g'4 fis'4 b |  cis'8 d' fis' e' d'4 cis'4 b2 | \break

      \time 3/4 b8. cis'16 d'8 fis'4. | e'8. fis'16 g'8 fis'4. | fis'8 b'8 d''4. b'8| \break

      \time 4/4 cis''4. ais'8 b'4. r8 | \time 3/4 fis'8. b'16 a'8 g'4. | e'8. fis'16 g'8 fis'4. | \break

      \time 5/4	fis'8 e' d'4 cis' b4. r8| \time 4/4 d'8. d'16 cis'4 b2 | \time 5/4 cis'2 b8 ais8 b2 | \break


    }

    \addlyrics {
      Във у -- ма ми ми -- съл чу -- ка, все -- ки час ме пи -- та,
      що в'жи -- во -- та е ре -- ал -- но, що е същ -- но -- ста,
      що в'жи -- во -- та е ре -- ал -- но, що е същ -- но -- ста.
      А Ду -- хът ми шеп  -- не та  -- ка:

      Слън  -- це  -- то що гре -- е птич -- ка -- та, що пе -- е,

      всич -- ко що жи -- ве -- е, стра -- да и коп -- не -- е,

      из -- я -- вя -- ва  същ -- ност -- та,   всич -- ко що жи -- ве -- е, стра -- да и коп -- не -- е,

      из -- я -- вя -- ва същ -- но -- ста.

      Кра  -- со  -- та  -- та, Ис  -- ти  -- на  -- та, Лю -- бов  -- та и Мъд  -- рост  -- та,

      туй е Гос  -- под на зе  -- мя  -- та, туй е същ  -- но  -- ста! Днес ду  -- хът ми шеп  -- не та  -- ка.
    }

    \addlyrics {
      Vav u -- ma mi mi -- sal chu -- ka, vse -- ki chas me pi -- ta,
      shto v'zhi -- vo -- ta e re -- al -- no, shto e sasht -- no -- sta,
      shto v'zhi -- vo -- ta e re -- al -- no, shto e sasht -- no -- sta.

      A Du -- hat mi shep  -- ne ta  -- ka:

      Slan  -- tse  -- to shto gre -- e ptich -- ka -- ta, shto pe -- e,

      vsich -- ko shto zhi -- ve -- e, stra -- da i kop -- ne -- e,

      iz -- ya -- vya -- va  sasht -- nost -- ta,   vsich -- ko shto zhi -- ve -- e, stra -- da i kop -- ne -- e,

      iz -- ya -- vya -- va sasht -- no -- sta.

      Kra  -- so  -- ta  -- ta, Is  -- ti  -- na  -- ta, Lyu -- bov  -- ta i Mad  -- rost  -- ta,

      tuy e Gos  -- pod na ze  -- mya  -- ta, tuy e sasht  -- no  -- sta! Dnes du  -- hat mi shep  -- ne ta  -- ka.

      A Du -- hat mi shep  -- ne ta  -- ka:

    }

    \header {
      title = \markup \column \normal-text \fontsize #2.5 {
        \center-align
        \line { Що е същността }
        \vspace #-0.6
        \center-align
        \line \fontsize #-3 { Shto e sashtnostta }
        \vspace #-0.8
        \center-align
        \line \fontsize #-3 { " " }
      }
    }

    \midi{}

  } % score



  \pageBreak

  % include foreign translation(s) of the song
  %\include "lyrics_de/024_blagoslavyay_lyrics_de.ly"

} % bookpart
