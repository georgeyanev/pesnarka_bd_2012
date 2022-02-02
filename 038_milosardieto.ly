\version "2.20.0"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute {
      \clef treble
      \key g \minor
      \time 3/4
      \tempoFunc "Andante" "4" "66"
      \autoBeamOff
       \partial 4
      \autoBeamOff
      f'8 f'8 | d'4. es'8 f' ([ g' ]) |  f'2 g'8 a' |  bes'4. g'8 g'4 |  f'2 f'8 f' \break |
      c''4. b'8 c'' ([ d'' ]) |c''2 a'8 a' | bes'4 e' g' | f'2 f'8 f' \break |
      d'4. es'8 f' ([ g' ]) | f'2 g'8 a' | bes'4. a'8 bes' ([ c'' ]) | d''2 es''8 es'' \break
      \repeat volta 2 {d''4 c'' c'' bes'2 bes'8 bes' | a'4. a'8 g' ( a' ) |} 
      \alternative { { bes'2 es''8 es'' } {  bes'2 \bar "|." \break } }
    }


     \addlyrics {
      Ми -- ло -- сър -- ди -- е -- то е гра -- ди -- на рай --
      ска, чуд -- но пре -- ме -- не -- на, пъл -- на
      с~ху -- бост май -- ска; бил -- ки и дър -- ве --
      та, в_кра -- со -- та раз -- ви -- ти, с~и -- зо
      -- бил -- на рож -- ба вся -- ко -- га по -- кри
      -- ти, с~и -- зо -- ти.
    }

    \addlyrics {
      Mi -- lo -- sar -- di -- e -- to e gra -- di -- na ray --
      ska, chud -- no pre -- me -- ne -- na, pal -- na
      s~hu -- bost may -- ska; bil -- ki i dar -- ve --
      ta, v_kra -- so -- ta raz -- vi -- ti, s~i -- zo
      -- bil -- na rozh -- ba vsya -- ko -- ga po -- kri
      -- ti, s~i -- zo -- ti.
    }

    \header {
      title = \titleFunc "Милосърдието" "Milosardieto"
    }

    \midi{}

  } % score

  \pageBreak

  \markup \fontsize #bgCoupletFontSize {
    \hspace #15
    \override #`(baseline-skip . ,bgCoupletBaselineSkip)
    \column {
      \line {2. Всичко драго, мило и в Любов живее,}

      \line {"   "и цъфти, и върже, и расте, и зрее.}

      \line {"   "Пролет, лято, есен и през цяла зима –}

      \line {"   "откогато хора на Земята има. (2)}
      \vspace #0.4

      \line {2. Vsichko drago, milo i v Lyubov zhivee,}

      \line {"   "i tsafti, i varzhe, i raste, i zree.}

      \line {"   "Prolet, lyato, esen i prez tsyala zima –}

      \line {"   "otkogato hora na Zemyata ima. (2)}
      \line { " " }

      \line {3. И щом пътник морен мине край градина,}

      \line {"   "всяко живо клонче весело му кима –}

      \line {"   "плодове узрели без корист предлага}

      \line {"   "с непресторна нега и усмивка блага. (2)}
      \vspace #0.4
      \line {3. I shtom patnik moren mine kray gradina,}

      \line {"   "vsyako zhivo klonche veselo mu kima –}

      \line {"   "plodove uzreli bez korist predlaga}

      \line {"   "s neprestorna nega i usmivka blaga. (2)}
      \line { " " }

      \line {4. Бедни и богати, здрави или болни,}

      \line {"   "и по всяко време тука са доволни,}

      \line {"   "че сменяват в Радост грижите, хомота,}

      \line {"   "и с утеха виждат смисъл във живота. (2)}
      \vspace #0.4
      \line {4. Bedni i bogati, zdravi ili bolni,}

      \line {"   "i po vsyako vreme tuka sa dovolni,}

      \line {"   "che smenyavat v Radost grizhite, homota,}

      \line {"   "i s uteha vizhdat smisal vav zhivota. (2)}
      \line { " " }

      \line {5. Затуй, който дири истинска победа,}

      \line {"   "рай такъв прекрасен нека си отгледа;}

      \line {"   "няма да се свърши щастие за него,}

      \line {"   "ще го благославят и Земя, и Небо. (2)}
      \vspace #0.4
      \line {5. Zatuy, koyto diri istinska pobeda,}

      \line {"   "ray takav prekrasen neka si otgleda;}

      \line {"   "nyama da se svarshi shtastie za nego,}

      \line {"   "shte go blagoslavyat i Zemya, i Nebo. (2)}
    }

    \hspace #5
    \override #`(baseline-skip . ,bgCoupletBaselineSkip)
    \column {

    } %column
  } % markup

  \pageBreak

  % include foreign translation(s) of the song
  \include "lyrics_de/038_milosardieto_lyrics_de.ly"

} % bookpart
