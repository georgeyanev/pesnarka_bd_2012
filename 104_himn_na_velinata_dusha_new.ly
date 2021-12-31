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
      % ragged-last = ##t % do not spread last line to fill the whole space
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
      \time 3/4
      \tempo \markup {
        % make tempo note smaller
        \concat {
          "Moderato " \normal-text { "(" }
          \teeny \general-align #Y #DOWN \note #"4" #0.8
          \normal-text { " = 72 / 80)" }
        }
      }
      \autoBeamOff
      a2 d'4 | e'2 fis'8 [ (e'8) ]| d'2. | e'2 fis'4 | g'2. | \break

      a'4 g'4 fis'4 | e'2. | e'2. | g'2. | b'4 cis''4 b'4 | b'2. | a'2. | \break

      fis'2. | a'4 (g'4) e'4 | e'2. | d'2 \fermata   \tempo \markup {
        % make tempo note smaller
        \concat {
          "Più mosso " \normal-text { "(" }
          \teeny \general-align #Y #DOWN \note #"4" #0.8
          \normal-text { " = 88)" }
        }
      }  fis'4  | a'2 a'4 | b'2 fis'4 | \break

      a'2. | a'2 a'4 | b'2 b'4 | b'2 ( cis''4 ) | a'2. ( | a'4 ) r4 a'4 | \break

      d''2 b'4 | b'2 ( cis''4 ) | a'2. |\tempo "Meno mosso" fis'2 fis'4  | g'2 e'4 | e'2 fis'4 | \break

      d'2.  \bar "||" \tempo \markup {
        % make tempo note smaller
        \concat {
          "a tempo " \normal-text { "(" }
          \teeny \general-align #Y #DOWN \note #"4" #0.8
          \normal-text { " = 80)" }
        }
      }
      
      a2 a4 | d'2 ( e'4 ) | fis'2 ( g'4 ) | a'2 \fermata a'4 | b'2 a'4 | \break

      a'2. | fis'2. |\tempo \markup {
        % make tempo note smaller
        \concat {
          "Più mosso " \normal-text { "(" }
          \teeny \general-align #Y #DOWN \note #"4" #0.8
          \normal-text { " = 88)" }
        }
      } b'2 a'4 | fis'2 g'4 | a'2. | g'2 fis'4 | \break

      g'2 b'4 | a'2. | a'2 a'4 | d''2 b'4 | a'2. | a'2 a'4 | \break

      d''2 b'4 | b'2 ( cis''4 ) | a'2 g'4 |fis'2  fis'4 |
      g'2^\markup\normalsize\bold { "rit." }   e'4 | e'2 ( fis'4 ) | \break
      d'2. | fis'2^\markup{ \bold {a tempo} } fis'4 | fis'2. | fis'4 ( g'4 )  a'4 | b'2 fis'4 |a'2.   \break
      | % 61
      g'2 ^\fermata a4 \mark \markup { \musicglyph "scripts.segno" }  \bar "||"
      a2  d'4 | % 63
      e'2. | % 64
      e'4 (  fis'4 )  g'4 | % 65
      fis'2 ^\fermata  fis'4 | % 66
      fis'2  g'4 \break | % 67
      a'2. | % 68
      b'2  g'4 | % 69
      g'2  a'4 |
      fis'2 ^\fermata  b'4 | % 71
      b'2  b'4 | % 72
      d''2. \break | % 73
      cis''2  b'4 | % 74
      b'2 (  cis''4 ) | % 75
      a'2  g'4 | % 76
      fis'2 (  e'4 ) ^\markup{ \bold {rit} } | % 77
      \tempo "              Fine" d'2. \bar "|."
      \break | % 78
      fis'2 ^\markup{ \bold {a tempo} }  g'4 | % 79
      a'2  a'4 |
      a'4 (  b'4 )  a'4 | % 81
      fis'2  g'4 \break | % 82
      a'2. | % 83
      d''2. | % 84
      cis''2. | % 85
      b'2 (  cis''4 ) | % 86
      b'2. \break | % 87
      a'2  fis'4 | % 88
      a'2  g'4 | % 89
      fis'2  e'4 |
      d'2  a4 \bar "|."
    }

    \addlyrics {
      Гре -- е Слън -- це -- то, свет -- ло е

      на -- вся -- къ -- де,  об -- ви -- та е Зе -- мя -- та със то -- пла дре -- ха.

      Съ -- буж -- да всич  --  ко жи -- во,

      те -- че во -- да -- та, рас -- те тре -- ва -- та,

      све -- жест лъ -- ха на -- всъ -- де.

      Вси -- чко се дви -- жи, пъл -- зи и ла -- зи,

      хвър -- кат пти -- ци -- те, бя -- гат сър -- ни -- те,

      ве -- е вя -- тъ -- рът, а чо -- век -- ът сто -- и

      и ми -- сли що да пра -- ви.

      Чу -- ва се ра -- дост -- на -- та пе -- сен:

      „Ве -- лик си Ти, Го -- спо -- ди,

      ве -- ли -- ки са Тво -- и -- те де -- ла,

      ве -- ли -- ко е И -- ме -- то Ти над вси -- чко!

      Ти ца -- риш във Си -- ла и Жи -- вот,

      във Зна -- ни -- е, Мъд -- рост,

      Ис -- ти -- на, Лю -- бов.“ "„Ве - "

    }
    \addlyrics {
       Gre -- e Slan -- tse -- to, svet -- lo e

      na -- vsya -- ka -- de,  ob -- vi -- ta e Ze -- mya -- ta sas to -- pla dre -- ha.

      Sa -- buzh -- da vsich  --  ko zhi -- vo,

      te -- che vo -- da -- ta, ras -- te tre -- va -- ta,

      sve -- zhest la -- ha na -- vsa -- de.

      Vsi -- chko se dvi -- zhi, pal -- zi i la -- zi,

      hvar -- kat pti -- tsi -- te, bya -- gat sar -- ni -- te,

      ve -- e vya -- ta -- rat, a cho -- vek -- at sto -- i

      i mi -- sli shto da pra -- vi.

      Chu -- va se ra -- dost -- na -- ta pe -- sen:

      „Ve -- lik si Ti, Go -- spo -- di,

      ve -- li -- ki sa Tvo -- i -- te de -- la,

      ve -- li -- ko e I -- me -- to Ti nad vsi -- chko!

      Ti tsa -- rish vav Si -- la i Zhi -- vot,

      vav Zna -- ni -- e, Mad -- rost,

      Is -- ti -- na, Lyu -- bov.“ "„Ve - "
      }

      \header {
        title = \markup \column \normal-text \fontsize #2.5 {
          \center-align
          \line { Химн на Великата Душа }
          \vspace #-0.6
          \center-align
          \line \fontsize #-3 { Himn na velikata dusha }
          \vspace #-0.8
          \center-align
          \line \fontsize #-3 { " " }
        }
      }

      \midi{}

    } % score



  \markup \halign #-16 \raise #3 \override #'(baseline-skip . 2) {
    \column  {
      \line \right-align {
        \bold  { "D.S. al Fine" }
      }
      \line { " " }
    }
  }

  \pageBreak

    % include foreign translation(s) of the song
    \include "lyrics_de/104_himn_na_velikata_dusha_lyrics_de.ly"

  } % bookpart
