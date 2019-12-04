\version "2.18.2"

\paper {
  print-all-headers = ##t
  print-page-number = ##f 
  left-margin = 2\cm
  right-margin = 2\cm
  ragged-bottom = ##t % do not spread the staves to fill the whole vertical space
}

\header {
  tagline = ##f
}

\bookpart {
\score{
  \layout { 
    indent = 0.0\cm % remove first line indentation
    ragged-last = ##f % do spread last line to fill the whole space
    \context {
      \Score
      \omit BarNumber %remove bar numbers
    } % context
  } % layout

  \new Voice \absolute  {
  \clef treble
  \key d \minor
  \time 4/4 \tempo "Andante" 4 = 92
  \autoBeamOff
  \partial 4.
  
  a8 d'8 e'8 |f'4 e'4 f'4 e'4 |d'4 a'4 ~ a'8 a'8 bes'8 a'8 \break |   
  d''4 a'4 bes'4 a'4 |\time 3/4  g'4 a'2 | \time 4/4  g'4 a'8 g'8 f'4. e'8 \break
  g'4 f'2 f'4 |  e'4. d'8 f'4. e'8 | e'4 d'2 r8 \tempo "Più vivo" a8 | \bar "||" \time 2/4 \break
  d'8 e'8 f'8 g'8 | \time 4/4  a'4 a'2 a'4 | bes'4 a'4 d''4. a'8 \break |
  bes'4 a'4 ~ a'8 g'8 a'8 g'8 |  \time 6/4  f'4. e'8 g'4 f'2 f'4 | \time 4/4  e'4. d'8 f'4. e'8 \break |
  e'4 d'4 ~ d'8 d''8 d''8 e''8 | \time 6/4  f''4. e''8 e''4 d''2 c''4 \break
  \time 4/4  bes'4. a'8 a'4. g'8 |  \time 3/4  a'4 a'2 | \time 5/4  c''4. c''8 d''4 g'2 \break |
  f'4. g'8 a'4 a'4. d'8 | f'4. d'8 f'4 e'2 | d'4. a8 d'4 d'2 \bar "|." \pageBreak
  }
  
  \addlyrics {
  Из -- гря -- ва ве -- че ден тър -- же -- ствен, пред -- ре -- че 
   -- ни -- ят ден Бо -- же -- ствен, на дни --
  те ди -- а -- де -- ма, със свет -- ли -- на го
  -- ля -- ма. Е -- ла -- те да жи -- ве -- ем във
  Лю -- бов -- та чу -- дес -- на. Е -- ла -- те
  да при -- е -- мем таз бла -- го -- дат не --
  бес -- на, е -- ла -- те да при -- е -- мем таз
  бла -- го -- дат не -- бес -- на, що жи -- во --
  та об -- но -- вя -- ва и веч -- но тя го под
  -- мла -- дя -- ва.  
  }

  \addlyrics {
  Iz -- grya -- va ve -- che den tar -- zhe -- stven, pred -- re -- che 
   -- ni -- yat den Bo -- zhe -- stven, na dni --
  te di -- a -- de -- ma, sas svet -- li -- na go
  -- lya -- ma. E -- la -- te da zhi -- ve -- em vav
  Lyu -- bov -- ta chu -- des -- na. E -- la -- te
  da pri -- e -- mem taz bla -- go -- dat ne --
  bes -- na, e -- la -- te da pri -- e -- mem taz
  bla -- go -- dat ne -- bes -- na, shto zhi -- vo --
  ta ob -- no -- vya -- va i vech -- no tya go pod
  -- mla -- dya -- va.  
  }

  \header {
    title = "Изгрява ден тържествен / Izgryava den tarzhestven"
  }

} % score

\markup {  \vspace #1.9 }

\markup {
    \hspace #1
    \fontsize #+1 {
    \column {
      \line { 1. Изгрява вече ден тържествен, }
\line {   "   " предреченият ден Божествен, }
\line {   "   " на дните диадема}
\line {   "   " със светлина голяма. }

\line { " " }
       \line { "   " \italic {Припев: } }
\line {   "   " Елате да живеем }
\line {   "   " във Любовта чудесна! }
\line {   "   " Елате да приемем}
\line {   "   " таз благодат небесна, }
\line {   "   " що живота обновява}
\line {   "   " и вечно тя го подмладява! }
 
 \line { " " }
\line { 2. И носи радост за душата, }
\line {   "   " и прогласява свободата}
\line {   "   " и мир с Любов пресвята}
\line {   "   " за всички на Земята. }
\line {   "   " Елате да живеем... }

\line { " " }
       \line { "   " \italic {Припев: } }
       
 \line { " " }
\line {  3.  О, ден прекрасен, вечно благо, }
\line {   "   " кому за тебе не е драго? }
\line {   "   " За всичките години}
\line {   "   " по-скоро обнови ни! }
\line {   "   " Елате да живеем... }

\line { " " }
       \line { "   " \italic {Припев: } }

     
    }
    
   \hspace #10 {
    
    \column  {
       
     \line { 1. Izgrjava vetsche den tyrshestven, }
\line {   "   " predretschenijat den Boshestven, }
\line {   "   " na dnite diadema}
\line {   "   " sys svetlina goljama. }

\line { " " }
       \line { "   " \italic {Refrain } }
\line {   "   " Elate da shiveem }
\line {   "   " vyv Ljubovta tschudesna! }
\line {   "   " Elate da priemem}
\line {   "   " taz blagodat nebesna, }
\line {   "   " shho shivota obnovjava}
\line {   "   " i vetschno tja go podmladjava! }
 
 \line { " " }
\line { 2. I nosi radost za duschata, }
\line {   "   " i proglasjava svobodata}
\line {   "   " i mir s Ljubov presvjata}
\line {   "   " za vsitschki na Zemjata. }
\line {   "   " Elate da shiveem... }

\line { " " }
       \line { "   " \italic {Refrain: } }
       
 \line { " " }
\line {   3.  O, den prekrasen, vetschno blago, }
\line {   "   " komu za tebe ne e drago? }
\line {   "   " Za vsitschkite godini}
\line {   "   " po-skoro obnovi ni! }
\line {   "   " Elate da shiveem... }

\line { " " }
       \line { "   " \italic {Refrain: } }
    }    
    }
    }
}
 

} % bookpart
