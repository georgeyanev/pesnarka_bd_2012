\version "2.18.2"

\paper {
  #(set-paper-size "a5")
}

"rightBraces047" = \markup {
  \column { % repeat braces
    \translate #'(0 . -3.1 )
    \right-brace #44

    \translate #'(0 . -5.2 )
    \right-brace #44

    \translate #'(0 . -7.6 )
    \right-brace #44

    \translate #'(0 . -5.2 )
    \right-brace #44

  }
  \column { % repeat numbers
    \translate #'(0 . -3.7 )
    2
    
    \translate #'(0 . -9.3 )
    2

    \translate #'(0 . -11.9 )
    2

    \translate #'(0 . -9.7 )
    2
  }
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
        \override VerticalAxisGroup.nonstaff-relatedstaff-spacing = #'(
          (basic-distance . 4.5)
          (padding . 1)
        )
        \override VerticalAxisGroup.nonstaff-nonstaff-spacing = #'((minimum-distance . 2))
      }
    } % layout

    \new Voice \absolute  {
      \clef treble
      \key f \major
      \time 3/8 
      %\tempo "Allegretto" 8 = 112
      \tempo \markup { % make tempo note smaller
        \concat { "Allegretto" \normal-text { " (" }
                  \teeny \general-align #Y #DOWN \note #"8" #0.8
                  \normal-text { " = 112)" }
        }
      }
      \autoBeamOff

      f''16. e''32 d''8 bes' | a'16. g'32 a'8 f' | d'16. e'32 f'8 g' | a'4 a'8 \break |
      f''16. e''32 d''8 bes' | a'16. g'32 a'8 f' | e'16. bes'32 a'8 cis' | d'8 d' r | \bar ":|." \break
      \repeat volta 2 { 
        \bar ":|.|:"
        a'4 d''8 | cis''4 e''8 | d''4 bes'8 | a'4 g'8 | a'4 d''8 | cis''4 e''8 | d''4. |  d''4. \break | % 17
        a'4 bes'8 | a'4 d''8 | cis''4 bes'8 |  a'4 g'8 | f'4 a'8 | e'4 a'8 |  d'4. | d'4. } \break |
    }
  
    \addlyrics {"1. Аз" съм бя -- ло ко -- ки -- че
                Всред тре -- ви -- те гор -- с -- ки,
                сра -- меж -- ли -- во кат мо -- ми -- че
                от пог -- ле -- ди хор -- ски. Зла ме ма -- ще -- ха съ -- бу -- ди
                с~сне -- га, вет -- ро -- ве -- те.  
                Всич -- ко жи -- во да се чу -- ди,
                че съм ран -- но цве -- те.}
    \addlyrics {"1. Az" sam bya -- lo ko -- ki -- che
                Vsred tre -- vi -- te gor -- s -- ki,
                sra -- mezh -- li -- vo kat mo -- mi -- che
                ot pog -- le -- di hor -- ski. Zla me ma -- shte -- ha sa -- bu -- di
                s~sne -- ga, vet -- ro -- ve -- te.  
                Vsich -- ko zhi -- vo da se chu -- di,
                che sam ran -- no tsve -- te.}
  
                \header {
                  title = \markup \column \normal-text \fontsize #2.5 {
                    \center-align
                    \line { Аз съм бялото кокиче }
                    \vspace #-0.6
                    \center-align
                    \line \fontsize #-3 { Az sam byaloto kokiche }
                    \vspace #-0.8
                    \center-align
                    \line \fontsize #-3 { " " }
                  }
                }
  
                \midi{}

    } % score


    \markup \fontsize #+2.5 {
      \hspace #2
      \vspace #1
      \override #'(baseline-skip . 2.4) % affects space between column lines
      \column {
        \line {    2. Радост нова ви показвам }
        \line {   "   " с чашка ранобудна }  
        \line {   "   " и за пролетта разказвам }
        \line {   "   " приказчица чудна. } 
      
        \line {  "     " Че след мене теменужка  }
        \line {   "     " у вас ще гостува, }  
        \line {   "     " че със тая мила дружка }
        \line {   "     " славей ще се чува. } 
      
        \line { " " }
        \line { 3. Че агънца ще заблеят  }
        \line {   "   " в ливади зелени, }  
        \line {   "   " че орачи ще засеят }
        \line {   "   " ниви наторени. } 
      
        \line { "     " Златни класове ще зреят  }
        \line {   "     " в тези чудни ниви, }  
        \line {   "     " Ангели ще славят Бога }
        \line {   "     " с песни най-красиви. } 
      }
      \"rightBraces047"
      \hspace #6
      \override #'(baseline-skip . 2.4)
      \column {
         \line {    2. Radost nova vi pokazvam }
        \line {   "   " s chashka ranobudna }  
        \line {   "   " i za proletta razkazvam }
        \line {   "   " prikazchitsa chudna. } 
      
        \line {  "     " Che sled mene temenuzhka  }
        \line {   "     " u vas shte gostuva, }  
        \line {   "     " che sas taya mila druzhka }
        \line {   "     " slavey shte se chuva. } 
      
        \line { " " }
        \line { 3. Che agantsa shte zableyat  }
        \line {   "   " v livadi zeleni, }  
        \line {   "   " che orachi shte zaseyat }
        \line {   "   " nivi natoreni. } 
      
        \line { "     " Zlatni klasove shte zreyat  }
        \line {   "     " v tezi chudni nivi, }  
        \line {   "     " Angeli shte slavyat Boga }
        \line {   "     " s pesni nay-krasivi. } 
      } %column
      \"rightBraces047"
    } % markup

    \pageBreak

    % include foreign translation(s) of the song
    \include "lyrics_de/047_az_sam_byaloto_kokiche_lyrics_de.ly"

  } % bookpart
