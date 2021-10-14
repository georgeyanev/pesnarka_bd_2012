\version "2.20.0"

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
      %ragged-last = ##t % do not spread last line to fill the whole space
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
      \key d\major
      \time2/4
      \tempo \markup {
        % make tempo note smaller
        \concat {
          "Moderato " \normal-text { "(" }
          \teeny \general-align #Y #DOWN \note #"4" #0.8
          \normal-text { " = 84)" }
        }
      }
      \autoBeamOff
      a4 -> d'4 -> | % 2
      d'4 -> d'8. -> e'16 | % 3
      fis'2 -> | % 4
      fis'4 -> fis'4 -> | % 5
      fis'4 -> fis'8. -> g'16 | % 6
      a'2 \break |

      b'4 e'4 | % 8
      e'4 e'8. fis'16 | % 9
      d'4. a8 | \barNumberCheck #10
      \time 3/4  e'8 d'8 cis'8 a8 e'8 cis'8 \break | % 11
      \time 2/4  d'4. fis'8 | % 12
      \time 3/4  a'8 g'8 fis'8 \tempo "poco rit." e'8 b8 cis'8
      | % 13
      \time 2/4  d'2 | % 14
      \tempo "a tempo" a8. a16 b8 cis'8 \break | % 15
      d'8 e'8 fis'4 | % 16
      a'8 a'8 a'8 b'8 | % 17
      a'4 a'4 | % 18
      b'8 a'8 g'8 fis'8 | % 19
      e'2 \break |
      g'8. g'16 g'8 g'8 | % 21
      g'8 g'8 g'4 | % 22
      a'8 g'8 fis'8 e'8 | % 23
      fis'4 fis'4 \break | % 24
      a8 a8 b8 cis'8 | % 25
      d'4 d'4 | % 26
      d''4. cis''8 | % 27
      cis''8 b'8 b'8 cis''8 \break | % 28
      a'8 a'8 a'8 a'8 | % 29
      a'4 a'4 |
      a'8 g'8 fis'8 e'8 | % 31
      d'4. fis'8 | % 32
      a'4. g'8 \break | % 33
      fis'8 e'8 e'8 fis'8 | % 34
      d'4. fis'8 | % 35
      a'4. g'8 | % 36
       \tempo "rall" fis'8 e'8 b8 cis'8 | % 37
      d'2  \bar "|."
    }

    \addlyrics {Аз   ще   се 
   под  --  мла  --  дя,   ти   ще   се   под  --  мла  --  диш, 
   той   ще   се   под  --  мла  --  ди   то  --  ва   ми   каз  --
   ва   Лю  --  бов  --  та,   то  --  ва   ми   каз  --  ва   Лю  --
   бов  --  та.   Ний,   ко  --  и  --  то   след  --  ва  --  ме 
   пъ  --  тя   на   Доб  --  ро  --  то,   ще   се   под  --  мла  --
   дим;   вий,   ко  --  и  --  то   след  --  ва  --  те   пъ  --
   тя   на   До  --  бро  --  то,   ще   се   под  --  мла  --  ди  --
   те;   те,   ко  --  и  --  то   след  --  ват   пъ  --  тя   на 
   До  --  бро  --  то,   ще   се   под  --  мла  --  дят   то  --
   ва   ни   каз  --  ва   Лю  --  бов  --  та,   то  --  ва   ни 
   каз  --  ва   Лю  --  бов  --  та. }
    \addlyrics {Az shte se pod --
  mla --  dya,  ti shte se pod -- mla --  dish,  toy shte se pod --
  mla -- di to -- va mi kaz -- va Lyu -- bov --  ta,  to -- va mi kaz
  -- va Lyu -- bov --  ta.   Niy,  ko -- i -- to sled -- va -- me pa
  -- tya na Dob -- ro --  to,  shte se pod -- mla --  dim;   viy,  ko
  -- i -- to sled -- va -- te pa -- tya na Do -- bro --  to,  shte se
  pod -- mla -- di --  te;   te,  ko -- i -- to sled -- vat pa -- tya
  na Do -- bro --  to,  shte se pod -- mla -- dyat to -- va ni kaz --
  va Lyu -- bov --  ta,  to -- va ni kaz -- va Lyu -- bov --  ta. }

    \header {
      title = \markup \column \normal-text \fontsize #2.5 {
        \center-align
        \line { Подмладяване }
        \vspace #-0.6
        \center-align
        \line \fontsize #-3 {Podmladyavane }
        \vspace #-0.8
        \center-align
        \line \fontsize #-3 { " " }
      }
    }

    \midi{}

  } % score



  \pageBreak

  % include foreign translation(s) of the song
 \include "lyrics_de/119_podmladyavane_lyrics_de.ly"

} % bookpart
