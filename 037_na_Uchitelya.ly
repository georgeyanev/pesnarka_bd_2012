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

    \new Voice \absolute  {
    \clef treble
    \key e \minor
    \time 3/4 
    \tempo \markup { % make tempo note smaller
      \concat { "Lento " \normal-text { "(" }
        \teeny \general-align #Y #DOWN \note #"4" #0.8
        \normal-text { " = 50)" }
      }
    }  
    \partial 4
    \autoBeamOff
    e'8 fis'8 | g'4 e'4 b'8 a'8 | g'4 fis'4 e'8 fis'8 | g'4 e'4 g'8 a'8 |  b'2 e''8  e''8 \break
    d''4 c''4 b'8 b'8 | a'4 g'4 fis'8 g'8 | b'4 a'4 g'8 a'8 | b'2 e''8 e''8 \break
    | d''4 c''4 b'8 b'8 | a'4 g'4 fis'8 g'8 | b'4 a'4 g'8 fis'8 | e'2 \bar "|."\break
  }
  
 \addlyrics {
    На У --  чи -- те -- ля по -- ко -- рен аз ще слу -- жа
    до кон -- ца. Той за мен е път от -- во --
    рен, що ме во -- ди към От -- ца. Той за мен
    е път от -- во -- рен, що ме во -- ди към От -- ца.
  }

  \addlyrics {
    Na U --  chi -- te -- lya po -- ko -- ren az shte slu -- zha
    do kon -- tsa. Toy za men e pat ot -- vo --
    ren, shto me vo -- di kam Ot -- tsa. Toy za men
    e pat ot -- vo -- ren, shto me vo -- di kam Ot -- tsa.
  }
  
  \header {
    title = \markup \column \normal-text \fontsize #2.5 {
              \center-align
              \line { На Учителя }
              \vspace #-0.6
              \center-align
              \line \fontsize #-3 { Na Uchitelya}
              \vspace #-0.8
              \center-align
              \line \fontsize #-3 { " " }
            }
  }
  
  \midi{}

} % score

\markup \fontsize #+2.5 {
    \hspace #1
    \override #'(baseline-skip . 2.4) % affects space between column lines
    \column {
       \line { 2.  Господи, Ти мой Учител, }
      \line {   "   " в стъпките си ме води, }  
      \line {   "   " и кат мощен покровител }
      \line {   "   " всякога към мен бъди. } 
      \line { " " }
      \line { 3. Дай ми Твойта Мъдрост свята }
      \line {   "   " и Божествена Любов – }  
      \line {   "   " за любов към всички братя }
      \line {   "   " винаги да съм готов. } 
      \line { " " }
      \line { 4. И във дни на изпитание }
      \line {   "   " Ти бъди ми канара; }  
      \line {   "   " тъй за Тебе ще живея }
      \line {   "   " и за Тебе ще умра. } 
      \line { " " }
      \line { 5. И когато стана жител }
      \line {   "   " на невидимия свят, }  
      \line {   "   " о, любезни мой Учител,  }
      \line {   "   " дай ми Твойта благодат! } 
    }

    \hspace #5
    \override #'(baseline-skip . 2.4)
    \column {
         \line { 2.  Gospodi, Ti moy Uchitel, }
      \line {   "   " v stapkite si me vodi, }  
      \line {   "   " i kat moshten pokrovitel }
      \line {   "   " vsyakoga kam men badi. } 
      \line { " " }
      \line { 3. Day mi Tvoyta Madrost svyata }
      \line {   "   " i Bozhestvena Lyubov – }  
      \line {   "   " za lyubov kam vsichki bratya }
      \line {   "   " vinagi da sam gotov. } 
      \line { " " }
      \line { 4. I vav dni na izpitanie }
      \line {   "   " Ti badi mi kanara; }  
      \line {   "   " tay za Tebe shte zhiveya }
      \line {   "   " i za Tebe shte umra. } 
      \line { " " }
      \line { 5. I kogato stana zhitel }
      \line {   "   " na nevidimiya svyat, }  
      \line {   "   " o, lyubezni moy Uchitel,  }
      \line {   "   " day mi Tvoyta blagodat! } 
    } %column
} % markup

\pageBreak

% include foreign translation(s) of the song
\include "lyrics_de/037_na_Uchitelya_lyrics_de.ly"

} % bookpart
