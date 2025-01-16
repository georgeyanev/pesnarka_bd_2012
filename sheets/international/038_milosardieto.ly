\version "2.24.4"

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
      \set stanza = "1." Ми -- ло -- сър -- ди -- е -- то е гра -- ди -- на рай --
      ска, чуд -- но пре -- ме -- не -- на, пъл -- на
      с~ху -- бост май -- ска. Бил -- ки и дър -- ве --
      та, в~кра -- со -- та раз -- ви -- ти, с~и -- зо
      -- бил -- на рож -- ба вся -- ко -- га по -- кри
      -- ти, с~и -- зо -- ти.
    }


    \addlyrics {
      \set stanza = "1." Mi -- lo -- săr -- di -- e -- to e gra -- di -- na raj --
      ska, čud -- no pre -- me -- ne -- na, păl -- na
      s~hu -- bost maj -- ska. Bil -- ki i dăr -- ve --
      ta, v~kra -- so -- ta raz -- vi -- ti, s~i -- zo
      -- bil -- na rož -- ba vsja -- ko -- ga po -- kri
      -- ti, s~i -- zo -- ti.
    }


    \header {
      title = \titleFunc "Милосърдието " "Milosărdieto"
    }

    \midi{}

  } % score

  \markup \empty-two

 
  \markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip) {
    \fill-line {

      \column {
        \vspace #1
        \line {
          \bold "2."
          \column {
            "Всичко драго, мило и в любов живее,"
            "и цъфти, и върже, и расте, и зрее  –"
            "пролет, лято, есен и през цяла зима,"
            "откогато хора на земята има. (2)"
          }
        }

        \vspace #1
        \line {
          \bold "3."
          \column {
            "И щом пътник морен мине край градина,"
            "всяко живо клонче весело му кима –"
            "плодове узрели без корист предлага"
            "с непресторна нега и усмивка блага. (2)"
          }
        }

        \vspace #1
        \line {
          \bold "4."
          \column {
            "Бедни и богати, здрави или болни"
            "и по всяко време тука са доволни,"
            "че сменяват в радост грижите, хомота"
            "и с утеха виждат смисъл във живота. (2)"
          }
        }
        \vspace #1

        \line {
          \bold "5."
          \column {
            "Затуй, който дири истинска победа,"
            "рай такъв прекрасен нека си отгледа!"
            "Няма да се свърши щастие за него,"
            "ще го благославят и земя, и небо. (2)"
          }
        }
      }

      % adds horizontal spacing between columns
      \column {
        % adds vertical spacing between verses

        \vspace #1

        \line {
          \bold "2."
          \column {
            "Vsičko drago, milo i v ljubov živee,"
            "i căfti, i vărže, i raste, i zree  –"
            "prolet, ljato, esen i prez cjala zima,"
            "otkogato hora na zemjata ima. (2)"
          }
        }

        \vspace #1

        \line {
          \bold "3."
          \column {
            "I štom pătnik moren mine kraj gradina,"
            "vsjako živo klonče veselo mu kima –"
            "plodove uzreli bez korist predlaga"
            "s neprestorna nega i usmivka blaga. (2)"
          }
        }
        \vspace #1

        \line {
          \bold "4."
          \column {
            "Bedni i bogati, zdravi ili bolni"
            "i po vsjako vreme tuka sa dovolni,"
            "če smenjavat v radost grižite, homota"
            "i s uteha viždat smisăl văv života. (2)"
          }
        }
        \vspace #1
        \line {
          \bold "5."
          \column {
            "Zatuj, kojto diri istinska pobeda,"
            "raj takăv prekrasen neka si otgleda!"
            "Njama da se svărši štastie za nego,"
            "šte go blagoslavjat i zemja, i nebo. (2)"
          }
        }
      }
    }
  }

  \pageBreak

  % include foreign translation(s) of the song
  \include "../../lyrics/de/038_milosardieto_lyrics_de.ly"

} % bookpart
