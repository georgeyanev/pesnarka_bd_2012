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

  \new Voice \absolute  {
    \clef treble
    \key d \major
    \time 2/4 
     \tempo \markup { % make tempo note smaller
        \concat { "Andante" \normal-text { " (" }
                  \teeny \general-align #Y #DOWN \note {4} #0.8
                  \normal-text { " = 63)" }
        }
      }
    %\tempo "Andante" 4 = 63
    \autoBeamOff
    a'4 a' | b'4. a'8 |  g'8 fis'  \autoBeamOn e' ( fis' ) |\autoBeamOff g'2 | b'4 b' | cis''4. b'8 \break |
    a'8 gis' \autoBeamOn fis' ( gis' ) | a'2 |  a'4 a' | fis''4. e''8 | \autoBeamOff d''8 cis'' \autoBeamOn e'' ( d'' ) |\autoBeamOff cis''2 \break |
    b'4 b' | cis''4. b'8 | g'8 g' b'4 | a'2 | fis'4 a' | e'8 fis' g' a' \break |
    d''4 cis'' \fermata | cis''4 e'' | b'8 cis'' d'' e'' | g''4 fis'' \fermata | e''4 d'' \break |
    cis''8 b' g' b' b'4 a' \fermata | cis''4 b' | a'8 g' e' a' | g'4 fis' \fermata \break | \bar "|."
}
  
  \addlyrics {
    "1. Как" -- то че -- ло -- век съ -- бли -- ча дре -- хи -- те си 
    о -- вех -- те -- ли, за да мо -- же да на  -- де -- не 
    но -- ви дре -- хи, чис -- ти, бе -- ли, тъй Ду -- хът плът -- та о -- 
    ста -- вя в~дру -- га плът да се за -- се -- ли и о --
    ти -- ва да на -- сле -- ди но -- ви ня -- ко -- и пре -- де -- ли.
  }

  \addlyrics {
    "1. Kak" -- to che -- lo -- vek sa -- bli -- cha dre -- hi -- te si 
    o -- veh -- te -- li, za da mo -- zhe da na  -- de -- ne 
    no -- vi dre -- hi, chis -- ti, be -- li, tay Du -- hat plat -- ta o -- 
    sta -- vya v~dru -- ga plat da se za -- se -- li i o --
    ti -- va da na -- sle -- di no -- vi nya -- ko -- i pre -- de -- li.
  }
  \header {
    title = \markup \column \normal-text \fontsize #2.5 {
              \center-align
              \line { Нови дрехи }
              \vspace #-0.6
              \center-align
              \line \fontsize #-3 { Novi drehi }
              \vspace #-0.8
              \center-align
              \line \fontsize #-3 { " " }
            }
  }
  
  \midi{}

} % score

\pageBreak

\markup \fontsize #+2.5 {
    \hspace #3
    \override #'(baseline-skip . 2.4) % affects space between column lines
    \column {
   

\line {   2. Той минава световете}

\line {   "   "и във тях се въплотява -}

\line {   "   "нови дарби да добие,}

\line {   "   "Нов Живот да устроява.}

\line {   "   "Тъй напредва той безкрайно}

\line {   "   "в красота неизразима}

\line {   "   "и достига Светлината - }

\line {   "   "тамо, де блаженство има.}

\line {   "   "}

\line {   3. Тъй прекрасно и премъдро}

\line {   "   "Господ всичко е направил}

\line {   "   "и без устрем и надежда}

\line {   "   "никого не е оставил.}

\line {   "   "И животът е приятен,}

\line {   "   "всекиму се пак той нрави,}

\line {   "   "всичко живо, що въздиша, }

\line {   "   "вечно Господа да слави! }
    }

    \hspace #3
    \override #'(baseline-skip . 2.4)
    \column {
\line {   2. Toy minava svetovete}

\line {   "   "i vav tyah se vaplotyava -}

\line {   "   "novi darbi da dobie,}

\line {   "   "Nov Zhivot da ustroyava.}

\line {   "   "Tay napredva toy bezkrayno}

\line {   "   "v krasota neizrazima}

\line {   "   "i dostiga Svetlinata - }

\line {   "   "tamo, de blazhenstvo ima.}

\line {   "   "}

\line {   3. Tay prekrasno i premadro}

\line {   "   "Gospod vsichko e napravil}

\line {   "   "i bez ustrem i nadezhda}

\line {   "   "nikogo ne e ostavil.}

\line {   "   "I zhivotat e priyaten,}

\line {   "   "vsekimu se pak toy nravi,}

\line {   "   "vsichko zhivo, shto vazdisha, }

\line {   "   "vechno Gospoda da slavi! }
\line {   "   "}
\line {   "   "}
\line {   "   "}
    } %column
} % markup

%\pageBreak

% include foreign translation(s) of the song
\include "lyrics_de/062_novi_drehi_lyrics_de.ly"

} % bookpart
