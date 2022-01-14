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
    \time 3/4 
    \tempo \markup {
        % make tempo note smaller
        \concat {
          "Moderato" \normal-text { " (" }
          \teeny \general-align #Y #DOWN \note {4} #0.8
          \normal-text { " = 112)" }
        }
    }
 
    a'2 a'4| fis''2 e''4| d''2 b'4 | a'2 fis'4 | e'2 e'4 | cis'2 a4 | \break
 
    d'2 fis'4 | a'2 r4| a'2 a'4| b'2 cis''4 | d''2 e''4| fis''2.| \break
            
    d''2. |  b'2 b'4| a'2 g'4 | fis'2 e'4 | d'2. | g'2 b'4 | d''2 b'4| \break
 
    a'2 a'4 | fis'2 d'4 | d''2 d''4 | cis''2 b'4 | a'2 cis''4 | d''2. | b'2 b'4 |  \break
 
    e''2 d''4 | cis''2 b'4 | a'2 fis'4 | a'2 g'4 | fis'2 e'4 | g'2 cis'4| d'2. | \bar "|." \break
  }
  
  \addlyrics {
    "1. Но" -- ви хи -- мни на И -- су -- са да за -- пе -- ем
    в~то -- я час, Бо -- жи Син е Той пред -- ве -- 
    чен на Не -- бе -- то и във нас.  Наш У -- чи -- тел,
    наш во -- ди -- тел, ис -- тин -- ски -- ят наш Жи -- вот, Не -- го --
    во -- то креп -- ко И -- ме да се сла -- ви в~род и род.    
  }

  \addlyrics {
    "1. No" -- vi hi -- mni na I -- su -- sa da za -- pe -- em
    v~to -- ya chas, Bo -- zhi Sin e Toy pred -- ve -- 
    chen na Ne -- be -- to i vav nas.  Nash U -- chi -- tel,
    nash vo -- di -- tel, is -- tin -- ski -- yat nash Zhi -- vot, Ne -- go --
    vo -- to krep -- ko I -- me da se sla -- vi v~rod i rod.    
  }

  
  \header {
    title = \markup \column \normal-text \fontsize #2.5 {
              \center-align
              \line { На Христа запейте }
              \vspace #-0.6
              \center-align
              \line \fontsize #-3 { Na Hrista zapeyte  }
              \vspace #-0.8
              \center-align
              \line \fontsize #-3 { " " }
            }
  }
  
  \midi{}

} % score

\pageBreak

\markup \fontsize #+2.5 {
    \hspace #4.2
    \override #'(baseline-skip . 2.4) % affects space between column lines
    \column {
 \line {   2.  На Христа запейте химни  }

 \line {   "   " нови в тоз тържествен час, }

 \line {   "   " Той е Божи Син, изпратен }

 \line {   "   " на Земята зарад нас. }

 \line {   "   " Той живота Си положи }

 \line {   "   " от греха да ни спаси, }

 \line {   "   " като смъртник в гроба слезе }

 \line {   "   " мъртвите да възкреси. }
   \line {   "   "}

 \line {   3.  И когато се прослави, }

 \line {   "   " нов завет ни даде Той, }

 \line {   "   " най-великия от всички, }

 \line {   "   " Любовта – закона Свой. }

 \line {   "   " Благовествува и рече: }

 \line {   "   " „Вий сте Мои, Aз Съм ваш, }

 \line {   "   " хората са всички братя, }

 \line {   "   " Бог Отец е татко наш. }
    
    \line {   "   "}

 \line {  4.  Един друг се залюбете, }

 \line {   "   " тъй се служи на Отца; }

 \line {   "   " и Отец ви всички люби, }

 \line {   "   " като Негови Деца. }

 \line {   "   " Аз съм жив хляб от Небето, }

 \line {   "   " аз съм истинска лоза, }

 \line {   "   " Словото Ми опазете, }

 \line {   "   " заживейте в Любовта! }
    \line {   "   "}

 \line {   5.  Само в нея е живота, }

 \line {   "   " нейна е радостта, }

 \line {   "   " тя създава всяко благо, }

 \line {   "   " тя едничка, Любовта.“ }

 \line {   "   " Тъй ни учеше тогава,  }

 \line {   "   " тъй ни шепне и сега, }

 \line {   "   " и възкръсват ми в душата }

 \line {   "   " тези Негови Слова. }
    }

    \hspace #5
    \override #'(baseline-skip . 2.4)
    \column {
 \line {   2.  Na Hrista zapeyte himni  }

 \line {   "   " novi v toz tarzhestven chas, }

 \line {   "   " Toy e Bozhi Sin, izpraten }

 \line {   "   " na Zemyata zarad nas. }

 \line {   "   " Toy zhivota Si polozhi }

 \line {   "   " ot greha da ni spasi, }

 \line {   "   " kato smartnik v groba sleze }

 \line {   "   " martvite da vazkresi. }
   \line {   "   "}

 \line {   3.  I kogato se proslavi, }

 \line {   "   " nov zavet ni dade Toy, }

 \line {   "   " nay-velikia ot vsichki, }

 \line {   "   " Lyubovta – zakona Svoy. }

 \line {   "   " Blagovestvuva i reche: }

 \line {   "   " „Viy ste Moi, Az Sam vash, }

 \line {   "   " horata sa vsichki bratya, }

 \line {   "   " Bog Otets e tatko nash. }
    
    \line {   "   "}

 \line {  4.  Edin drug se zalyubete, }

 \line {   "   " tay se sluzhi na Ottsa; }

 \line {   "   " i Otets vi vsichki lyubi, }

 \line {   "   " kato Negovi Detsa. }

 \line {   "   " Az sam zhiv hlyab ot Nebeto, }

 \line {   "   " az sam istinska loza, }

 \line {   "   " Slovoto Mi opazete, }

 \line {   "   " zazhiveyte v Lyubovta! }
    \line {   "   "}

 \line {   5.  Samo v neya e zhivota, }

 \line {   "   " neyna e radostta, }

 \line {   "   " tya sazdava vsyako blago, }

 \line {   "   " tya ednichka, Lyubovta.“ }

 \line {   "   " Tay ni ucheshe togava,  }

 \line {   "   " tay ni shepne i sega, }

 \line {   "   " i vazkrasvat mi v dushata }

 \line {   "   " tezi Negovi Slova. }
     } %column
} % markup

\pageBreak

% include foreign translation(s) of the song
\include "lyrics_de/060_na_Hrista_zapeyte_lyrics_de.ly"

} % bookpart
