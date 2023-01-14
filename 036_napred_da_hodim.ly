\version "2.24.0"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute {
      \clef treble
      \key g \major
      \time 2/4
      \tempoFunc "Tempo di marcia" 4 "100"
      \autoBeamOff
      \partial 8


      b8 | e'8. fis'16 g'8 a' | b'4 b'8 b' | e''8 d'' c'' b' | c''4 c''8 c'' \break |
      d''8 c'' b' a' | b'4 b'8 b' | b'8 a' g' fis' | e'4 e'8 e' \break |
      \repeat volta 2 {
        fis'8. fis'16 fis'8 fis' |
        fis'4 fis'8 fis' |
        g'8. g'16 g'8 g' |
        g'4 g'8 g' | \break

        a'8.  a'16 a'8 a' |
        b'4. a'8 |
        b'8 a' g'  fis'8 |
      } \alternative {
        {  e'4. e'8 |}
        {e'4. \bar "|." \break }
      }
    }

    \addlyrics {
      На -- пред
      да хо -- дим сме -- ло в~чер -- то -- зи -- те
      без -- мъл -- вни на тай -- но -- то поз -- на --
      ние, с~Жи -- вот и Си -- ла пъл -- ни. Кат вих
      -- ри над го -- ри -- те с~дух пла -- мен във
      гър -- ди -- те на -- пред да по -- ле -- тим,
      све -- та да об -- но -- вим! Кат вим!}
      \addlyrics {
        Na -- pred
        da ho -- dim sme -- lo v~cher -- to -- zi -- te
        bez -- mal -- vni na tay -- no -- to poz -- na --
        nie, s~Zhi -- vot i Si -- la pal -- ni. Kat vih
        -- ri nad go -- ri -- te s~duh pla -- men vav
        gar -- di -- te na -- pred da po -- le -- tim,
        sve -- ta da ob -- no -- vim! Kat vim!}

        \header {
          title = \titleFunc "Напред да ходим " "Napred da hodim"
        }

        \midi{}

      } % score



      \markup \fontsize #bgCoupletFontSize {
        \hspace #5
        \override #`(baseline-skip . ,bgCoupletBaselineSkip)
        \column {
          \line {  2. Земята с чисти мисли}

          \line {   "   "да оградиме здраво,}

          \line {   "   "и злото всепорочно}

          \line {   "   "да победиме с право.}
             \line { "   "}

          \line { "   " \italic {Припев ... }}
             \line { "   "}


          \line {   3. На слабите да носим}

          \line {   "   "подкрепа и обнова,}

          \line {   "   "на страдущите – милост}

          \line {   "   "и свободата нова.}

   \line { "   "}
          \line { "   " \italic {Припев ...}}
             \line { "   " }

          \line {  4. Във бездната да слезем,}

          \line {   "   "хоругва да поставим}

          \line {   "   "и падналите братя}

          \line {   "   "от мъка да избавим.}

   \line { "   "}
          \line { "   " \italic {Припев ...}}
    

        }

        \hspace #5
        \override #`(baseline-skip . ,bgCoupletBaselineSkip)
        \column {
          \line { 2. Zemyata s chisti misli}

          \line { "   "da ogradime zdravo,}

          \line { "   "i zloto vseporochno}

          \line { "   "da pobedime s pravo.}
           \line { "   "}

          \line { "   " \italic { Refrain ...} }
           \line { "   "}

          \line { 3. Na slabite da nosim}

          \line { "   "podkrepa i obnova,}

          \line { "   "na stradushtite – milost}

          \line { "   "i svobodata nova.}
           \line { "   "}

          \line { "   " \italic { Refrain ...} }
           \line { "   "}

          \line { 4. Vav bezdnata da slezem,}

          \line { "   "horugva da postavim}

          \line { "   "i padnalite bratya}

          \line { "   "ot maka da izbavim.}
           \line { "   "}

          \line { "   " \italic { Refrain ...} }
         
        } %column
      } % markup
      
      

      \pageBreak
      
      

      \markup \fontsize #bgCoupletFontSize {
        \hspace #5
        \override #`(baseline-skip . ,bgCoupletBaselineSkip)
        \column {


          \line {   5. Тогава да отворим}

          \line {   "   "на новий град вратите,}

          \line {   "   "в Иерусалим да влезем –}

          \line {   "   "света на Светлините.}
             \line { "   "}

          \line { "   " \italic  {Припев ...}}
             \line { "   "}

        }

        \hspace #5
        \override #`(baseline-skip . ,bgCoupletBaselineSkip)
        \column {
      

          \line { 5. Togava da otvorim}

          \line { "   "na noviy grad vratite,}

          \line { "   "v Ierusalim da vlezem –}

          \line { "   "sveta na Svetlinite.}
                \line { "   "}

          \line { "   " \italic { Refrain ...} }
        } %column
      } % markup

      % include foreign translation(s) of the song
      \include "lyrics_de/036_napred_da_hodim_lyrics_de.ly"

    } % bookpart
