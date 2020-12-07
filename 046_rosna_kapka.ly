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
   % ragged-last = ##t % do not spread last line to fill the whole space
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
    \key a \minor
    \time 3/4
    % \tempo "Larghetto" 4 = 58
      \tempo \markup { % make tempo note smaller
      \concat { "Larghetto " \normal-text { "(" }
          \teeny \general-align #Y #DOWN \note #"4" #0.8
          \normal-text { " = 58)" }
      }
    }
    \partial 4
    \autoBeamOff
 
     e'8 e' a'4 b' c''8 b' |  a'4 a' b'8 b' | c''4 c'' d''8 c'' \break | % 5

     b'4 a' e''8 e'' | e''4 d'' c''8 d'' | e''2 c''8 c'' | c''4 b' c''8 b' \break |

     a'2 e''8 d'' \repeat volta 2 {| c''4 c'' d''8 c'' |  b'4 b' c''8 b' \break | 
                              
     a'4 gis' a'8 b' | }  \alternative { { c''4 b' a'8 b' | c''4 d'' e''8 f'' | e''2 e''8 d''  \break |  }                            
  
    { c''4 b' c''8 b'8 | a'4 gis'4 a'8 b'8 | a'2.| \bar "|." } }
  }
  
  \addlyrics {
    Рос -- на кап -- ко, свят ла -- зу -- рен, чист, кра -- сив и тих, без -- 
    бу -- рен, мир на рай -- ски -- я Жи -- вот, мир на рай -- ски -- я Жи -- 
    вот! В~те -- бе, кап -- ко, ви -- кам всич -- ки бра -- тя 
    ми -- ли и се -- стрич -- ки, да ти ста -- не -- ме на -- род. В~те -- бе,
    стрич -- ки, да ти ста -- не -- ме на -- род.  
  }

\addlyrics {
    Ros -- na kap -- ko, svyat la -- zu -- ren, chist, kra -- siv i tih, bez -- 
    bu -- ren, mir na ray -- ski -- ya ZHi -- vot, mir na ray -- ski -- ya ZHi -- 
    vot! V~te -- be, kap -- ko, vi -- kam vsich -- ki bra -- tya 
    mi -- li i se -- strich -- ki, da ti sta -- ne -- me na -- rod. V~te -- be,
    strich -- ki, da ti sta -- ne -- me na -- rod.  
  }
  
  \header {
    title = \markup \column \normal-text \fontsize #2.5 {
              \center-align
              \line { Росна капка }
              \vspace #-0.6
              \center-align
              \line \fontsize #-3 { Rosna kapka }
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
      \line { 2. Всяка сутрин във росата }
      \line {   "   " ще си къпеме сърцата, }

\line {   "   " като слънчеви лъчи; (2)}

\line {   "   " и ще пеем нови песни}

\line {   "   " със мелодии чудесни,}

\line {   "   " сводът красен да ечи.}

\line {   "   " и ще пеем нови песни}

\line {   "   " със мелодии чудесни,}

\line {   "   " сводът красен да ечи.}
\line{" "}

\line {   3.  И тъй чисти, в бели дрехи,}

\line {   "   " и препасани с доспехи}

\line {   "   " на Великата Любов, (2)}

\line {   "   " ново царство ще направим,}

\line {   "   " Бога нашего да славим}

\line {   "   " всеки ден — во век-веков.}

\line {   "   " ново царство ще направим,}

\line {   "   " Бога нашего да славим }

\line {   "   " всеки ден — во век-веков. }
    }

    \hspace #5
    \override #'(baseline-skip . 2.4)
    \column {
      \line { 2. Vsyaka sutrin vav rosata }
      \line {   "   " shte si kapeme sartsata, }

\line {   "   " kato slanchevi lachi; (2)}

\line {   "   " i shte peem novi pesni}

\line {   "   " sas melodii chudesni,}

\line {   "   " svodat krasen da echi.}

\line {   "   " i shte peem novi pesni}

\line {   "   " sas melodii chudesni,}

\line {   "   " svodat krasen da echi.}
\line{" "}

\line {   3.  I tay chisti, v beli drehi,}

\line {   "   " i prepasani s dospehi}

\line {   "   " na Velikata Lyubov, (2)}

\line {   "   " novo tsarstvo shte napravim,}

\line {   "   " Boga nashego da slavim}

\line {   "   " vseki den — vo vek-vekov.}

\line {   "   " novo tsarstvo shte napravim,}

\line {   "   " Boga nashego da slavim }

\line {   "   " vseki den — vo vek-vekov. }
    } %column
} % markup

\pageBreak

% include foreign translation(s) of the song
\include "lyrics_de/046_rosna_kapka_lyrics_de.ly"

} % bookpart
