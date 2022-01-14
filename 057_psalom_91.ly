\version "2.22.0"

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

 \new Voice \relative a' {
    \clef treble
    \key d \minor
    \time 4/4 
     \tempo \markup {
        % make tempo note smaller
        \concat {
          "Andante sostenuto" \normal-text { " (" }
          \teeny \general-align #Y #DOWN \note {4} #0.8
          \normal-text { " = 60)" }
        }
      }
    \repeat volta 2 { 
      a2 a4 a4 | bes2 a4 a4 |  a4 \autoBeamOff a8 a8 d,4 f4 |  a2 g2 |\break
      f2 g4 ( a4 ) | bes2 bes2 | bes2 a4 a4 | a4 a8 a8 d,4 ( f4 ) | \break
      a4 ( bes4 ) a4 ( g4 ) |  f2 e2 | 
    } 
    \alternative {
      { d2. r4 | }
      { d2. a'4 | \bar "||" \break }
    } 
    
    d4 a4 bes4 ( c4 ) | d4 bes4 a4 g4 | bes2 a2 | a2 d,4 f4 | \break
    a2 d,4 f4 | a4 ( bes4 ) a4 a4 | d4 ( a4 ) bes4 ( g4 ) | f2 ( e2 ) | \break
    d2. r4 | bes'2 a2 | g2 f2 |  e4 ( f4 ) g4 a4 | \break
    bes4 ( g4 ) a2 | f2 e2 | d2. r4 | bes'2 a2 | g2 f2 | \break
    e4 ( f4 ) g4 a4 | bes4 ( g4 ) a2 | f2 e2 | d1| \bar "|." \break
  }
  
  \addlyrics {
    Кой -- то жи -- ве -- е под по -- кри -- ва на Все -- виш -- на -- 
    го, ще пре -- би -- ва -- е под сян -- ка -- та на 
    Все -- мо -- гъ -- ща -- го. го. Ще 
    каз -- вам за Гос -- по -- да, ще каз -- вам: Той е при -- 
    бе -- жи -- ще мо -- е и кре -- пост мо -- 
    я, Бог мой, Бог мой, на Не -- го 
    ще се на -- де -- я. Бог мой, Бог мой, 
    на Не -- го ще се на -- де -- я.
  }

  \addlyrics {
    Koy -- to zhi -- ve -- e pod po -- kri -- va na Vse -- vish -- na -- 
    go, shte pre -- bi -- va -- e pod syan -- ka -- ta na 
    Vse -- mo -- ga -- shta -- go. go. Shte 
    kaz -- vam za Gos -- po -- da, shte kaz -- vam: Toy e pri -- 
    be -- zhi -- shte mo -- e i kre -- post mo -- 
    ya, Bog moy, Bog moy, na Ne -- go 
    shte se na -- de -- ya. Bog moy, Bog moy, 
    na Ne -- go shte se na -- de -- ya.
  }
  
  \header {
    title = \markup \column \normal-text \fontsize #2.5 {
              \center-align
              \line { Псалм 91 }
              \vspace #-0.6
              \center-align
              \line \fontsize #-3 { Psalm 91 }
              \vspace #-0.8
              \center-align
              \line \fontsize #-3 { " " }
            }
  }
  
  \midi{}

} % score

\pageBreak

\markup \fontsize #+2.5 {
    \hspace #1
    \override #'(baseline-skip . 2.4) % affects space between column lines
    \column {
     
    }

    \hspace #5
    \override #'(baseline-skip . 2.4)
    \column {
    
    } %column
} % markup



% include foreign translation(s) of the song
\include "lyrics_de/057_psalom_91_lyrics_de.ly"

} % bookpart
