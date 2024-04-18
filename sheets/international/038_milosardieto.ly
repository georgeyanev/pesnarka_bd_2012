\version "2.24.3"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref038
  \tocItem \markup "Милосърдието – Milosărdieto"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute {
      \clef treble
      \key bes \major
      \time 3/4
      \tempoFunc "Andante" 4 "66"
      \autoBeamOff
      \partial 4
      \autoBeamOff
      f'8 f'8 | d'4. es'8 f' ([ g' ]) |  f'2 g'8 a' |  bes'4. g'8 g'4 |  f'2 f'8 f' \break |
      c''4. b'8 c'' ([ d'' ]) |c''2 a'8 a' | bes'4 e' g' | f'2 f'8 f' \break |
      d'4. es'8 f' ([ g' ]) | f'2 g'8 a' | bes'4. a'8 bes' ([ c'' ]) | d''2 es''8 es'' \break
      \repeat volta 2 {d''4 c'' c'' bes'2 bes'8 bes' | a'4. a'8 g' ( [a'] ) |}
      \alternative { { bes'2 es''8 es'' } {  bes'2 \bar "|." \break } }
    }

    \addlyrics {
      Ми -- ло -- сър -- ди -- е -- то е гра -- ди -- на рай --
      ска, чуд -- но пре -- ме -- не -- на, пъл -- на
      с~ху -- бост май -- ска. Бил -- ки и дър -- ве --
      та, "в~кра-" -- со -- та раз -- ви -- ти, с~и -- зо
      -- бил -- на рож -- ба вся -- ко -- га по -- кри
      -- ти, с~и -- зо -- ти.
    }


    \addlyrics {
      Mi -- lo -- săr -- di -- e -- to e gra -- di -- na raj --
      ska, čud -- no pre -- me -- ne -- na, păl -- na
      s~hu -- bost maj -- ska. Bil -- ki i dăr -- ve --
      ta, "v~kra-" -- so -- ta raz -- vi -- ti, s~i -- zo
      -- bil -- na rož -- ba vsja -- ko -- ga po -- kri
      -- ti, s~i -- zo -- ti.
    }


    \header {
      title = \titleFunc "Милосърдието" "Milosărdieto"
    }

    \midi{}

  } % score

  \markup \empty-two

  \markup \abs-fontsize #10 {
    \hspace #20
    \override #`(baseline-skip . ,bgCoupletBaselineSkip)
    \column {
      \line {2. Всичко драго, мило и в любов живее,}

      \line {"   "и цъфти, и върже, и расте, и зрее  –}

      \line {"   "пролет, лято, есен и през цяла зима,}

      \line {"   "откогато хора на Земята има. (2)}
      \vspace #0.5

      \line {2. Vsičko drago, milo i v ljubov živee,}

      \line {"   "i căfti, i vărže, i raste, i zree  –}

      \line {"   "prolet, ljato, esen i prez cjala zima,}

      \line {"   "otkogato hora na Zemjata ima. (2)}
      \vspace #0.5

      \line {3. И щом пътник морен мине край градина,}

      \line {"   "всяко живо клонче весело му кима –}

      \line {"   "плодове узрели без корист предлага}

      \line {"   "с непресторна нега и усмивка блага. (2)}
      \vspace #0.5
      \line {3. I štom pătnik moren mine kraj gradina,}

      \line {"   "vsjako živo klonče veselo mu kima –}

      \line {"   "plodove uzreli bez korist predlaga}

      \line {"   "s neprestorna nega i usmivka blaga. (2)}
      \vspace #0.5

      \line {4. Бедни и богати, здрави или болни }

      \line {"   "и по всяко време тука са доволни, }

      \line {"   "че сменяват в радост грижите, хомота }

      \line {"   " и с утеха виждат смисъл във живота. (2) }


    }


  } % markup

  \pageBreak

  \markup \fontsize #bgCoupletFontSize {
    \hspace #20
    \override #`(baseline-skip . ,bgCoupletBaselineSkip)
    \column {
      \line {4. Bedni i bogati, zdravi ili bolni }

      \line {"   "i po vsjako vreme tuka sa dovolni, }

      \line {"   "če smenjavat v radost grižite, homota }

      \line {"   " i s uteha viždat smisăl văv života. (2) }
      \vspace #0.5

      \line {5. Затуй, който дири истинска победа,}

      \line {"   "рай такъв прекрасен нека си отгледа!}

      \line {"   "Няма да се свърши щастие за него,}

      \line {"   "ще го благославят и Земя, и Небо. (2)}
      \vspace #0.5
      \line {5. Zatuj, kojto diri istinska pobeda,}

      \line {"   "raj takăv prekrasen neka si otgleda!}

      \line {"   "Njama da se svărši štastie za nego,}

      \line {"   "šte go blagoslavjat i Zemja, i Nebo. (2)}
    }


  } % markup


  \markup \empty-two

  % include foreign translation(s) of the song
  \include "../../lyrics/de/038_milosardieto_lyrics_de.ly"

} % bookpart
