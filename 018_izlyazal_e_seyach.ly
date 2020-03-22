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
    ragged-last = ##f % do spread last line to fill the whole space
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
    \key c \major
    \time 3/4 
    \tempo \markup { % make tempo note smaller
      \concat { "Moderato " \normal-text { "(" }
          \teeny \general-align #Y #DOWN \note #"4" #0.8
          \normal-text { " = 144)" }
      }
    }
    
    \partial 4 g'4| e''2 d''4| c''2 b'4|d''2 c''4| b'2. (|a'2.) g'2. (| \break
 
    g'4 ) r4 g'4 | a'2 a'4 | b'2 b'4 | c''2 d''4 | e''2.~ e''4 r4 e'' | \break
 
    \repeat volta 2 { 
      g''2 f''4 | e''2 d''4 | d''2 c''4 | e''2.| d''2. ( |d''4) r4 g'4| a'2 g'4| \break
  
      c''2 b'4 | 
    }  
    \alternative {  
      {  c''2 d''4| e''2. (| e''4 ) r4  e''4| }  
      { e''2 d''4 | c''2. (| c''4 )  r4 g'4  | \bar "||" \break }  
    } 
  
  \repeat volta 2 {  
    \tempo \markup { % make tempo note smaller
      \concat { "Più mosso " \normal-text { "(" }
          \teeny \general-align #Y #DOWN \note #"4" #0.8
          \normal-text { " = 184)" }
      }
    }
    \bar ".|:" c''2 c''4 | c''4 ( b'4 ) c''4 | d''2 c''4 | b'2. (| b'4 ) r4 b'4 | a'2 a'4 | \break
     a'4 ( g'4 ) a'4 | b'2 a'4 | g'2. ( | g'4 ) r4 a'4 | a'2 a'4 | c''4 ( b'4) a'4 | a'2 e'4 |  \break
  }  
  \alternative {  
    {  f'2. (|  f'4 )  r4 f'4 | f'2 f'4 | f'4 ( e'4 ) f'4 | g'2 f'4 |e'2. (| e'4 ) r4 g'4   \break }
    {  f'2. (|  f'4 ) r4 g'4 | g'2 g'4 | a'2 
    \override Score.RehearsalMark #'outside-staff-priority = #599
    \mark\markup\normalsize\bold { "rit." } % places rit. below alternative bracket
       a'4 | \stemUp b'2 b'4 | c''2. ( | c''2 s4) | \bar "|." \pageBreak } }
  }
 
  \addlyrics {
    Из -- ля -- зъл е се -- яч да се -- е __
    пре -- крас -- но бла -- го нов Жи -- вот. И 
    се -- е той и ти -- хо пе -- е пред все -- ки
    дом и все -- ки род, и все -- ки род: Без --
    це -- нен дар е Лю -- бов -- та, кра --  си -- во
    чув -- ство О -- бич -- та и бла -- го де -- ло Ми -- лост -- 
    та, о -- би -- лен из -- вор Мъ -- дрост -- та. Без --
    та о -- би -- лен из -- вор Мъ -- дрост -- та.
  }

  \addlyrics {
    Iz -- lya -- zal e se -- yach da se -- e __
    pre -- kras -- no bla -- go nov ZHi -- vot. I 
    se -- e toy i ti -- ho pe -- e pred vse -- ki
    dom i vse -- ki rod, i vse -- ki rod: Bez --
    tse -- nen dar e Lyu -- bov -- ta, kra --  si -- vo
    chuv -- stvo O -- bich -- ta i bla -- go de -- lo Mi -- lost -- 
    ta, o -- bi -- len iz -- vor Ma -- drost -- ta. Bez --
    ta o -- bi -- len iz -- vor Ma -- drost -- ta.
  }


  \header {
    title = \markup \column \normal-text \fontsize #2.5 {
              \center-align
              \line { Излязъл е сеяч }
              \vspace #-0.6
              \center-align
              \line \fontsize #-3 { Izlyazal e seyach }
              \vspace #-0.8
              \center-align
              \line \fontsize #-3 { " " }
            }
  }
  
  \midi{}

} % score

\markup \fontsize #+2 {
    \hspace #1
    \override #'(baseline-skip . 2.4) % affects space between column lines
    \column {
      \line { 1. Излязъл е сеяч да сее }
      \line {   "   " прекрасно благо – нов живот. }  
      \line {   "   " И сее той, и тихо пее }
      \line {   "   " пред всеки дом и всеки род: } 
 
      \line { " " }
      \line { "   " \italic {Припев: } }
      \line {  "   " Безценен дар е Любовта, }
      \line { "   " красиво чувство – обичта, }
      \line { "   " и благо дело – милостта, }
      \line {  "   " обилен извор – мъдростта.“}
 
      \line { " " }
      \line { 2. И който чуе, в миг потръпва }
      \line {   "   " от тоя благ и мил напев; }  
      \line {   "   " и просиява, и възкръсва, }
      \line {   "   " и благославя тоз посев. } 
      
      \line { " " }
      \line { "   " \italic {Припев ...} }
      
      \line { " " }
      \line { 3. Любов Вселената облива, }
      \line {   "   " от обич грее всяка твар, }  
      \line {   "   " живот в живота се прелива – }
      \line {   "   " тук няма вече млад и стар. } 
      \line { " " }
      \line { "   " \italic {Припев ...} }
    }
    \hspace #7
    \override #'(baseline-skip . 2.4)
    \column {
      \line { 1. Izlyazal e seyach da see }
      \line {   "   " prekrasno blago – nov zhivot. }  
      \line {   "   " I see toy, i tiho pee }
      \line {   "   " pred vseki dom i vseki rod: } 
 
      \line { " " }
      \line { "   " \italic {Refrain: } }
      \line {  "   " Beztsenen dar e Lyubovta, }
      \line { "   " krasivo chuvstvo – obichta, }
      \line { "   " i blago delo – milostta, }
      \line {  "   " obilen izvor – madrostta.“}
 
      \line { " " }
      \line { 2. I koyto chue, v mig potrapva }
      \line {   "   " ot toya blag i mil napev; }  
      \line {   "   " i prosiyava, i vazkrasva, }
      \line {   "   " i blagoslavya toz posev. } 
      
      \line { " " }
      \line { "   " \italic {Refrain ...} }
      
      \line { " " }
      \line { 3. Lyubov Vselenata obliva, }
      \line {   "   " ot obich gree vsyaka tvar, }  
      \line {   "   " zhivot v zhivota se preliva – }
      \line {   "   " tuk nyama veche mlad i star. } 
      \line { " " }
      \line { "   " \italic {Refrain ...} }    }
}

\pageBreak

% include foreign translation(s) of the song
\include "lyrics_de/018_izlyazal_e_seyach_lyrics_de.ly"

} % bookpart
