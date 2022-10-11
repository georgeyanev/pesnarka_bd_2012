\version "2.22.1"

% include paper part and global functions
\include "include/globals.ily"
"rightBraces049" = \markup {
  \column {
    % repeat braces
    \translate #'(0 . -5.5 )
    \right-brace #20

    \translate #'(0 . -10.0 )
    \right-brace #20

    \translate #'(0 . -10.0 )
    \right-brace #20

    \translate #'(0 . -10.0 )
    \right-brace #20
  }
  \column {
    % repeat numbers
    \translate #'(0 . -6.1 )
    2

    \translate #'(0 . -12.0 )
    2

    \translate #'(0 . -12.0 )
    2

    \translate #'(0 . -12.0 )
    2
  }
}

\bookpart {
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute  {
      \clef treble
      \key g \minor
      \time 2/4
      \tempoFunc "Tempo di marcia" 4 "112"
      \autoBeamOff
      \autoBeamOff

      bes'4. a'8 | c''8 bes' a' g' |  g'2 |  f'2 | a'4. g'8 \break |
      a'8 g' es' g' |  f'2 |  d'2 \repeat volta 2 {
        es'4. es'8 | g'8 g' f' e' \break |
        f'2 | bes'2 d''4. bes'8 | f'8 f' d'' d'' | c''2  bes'2 |\break
      }
    }

    \addlyrics {
      Ний сме сла -- вей -- че -- та гор -- ски, с~пес -- ни
      сла -- вим Не -- бе -- са -- та, чув -- ства роб -- ски, гри -- жи
      хор -- ски с~пес -- ни го -- ним от Зе -- мя -- та.
    }

    \addlyrics {
      Niy sme sla -- vey -- che -- ta gor -- ski, s~pes -- ni
      sla -- vim Ne -- be -- sa -- ta, chuv -- stva rob -- ski, gri -- zhi
      hor -- ski s~pes -- ni go -- nim ot Ze -- mya -- ta.
    }

    \header {
      title = \titleFunc "Ний сме славейчета горски " "Niy sme slaveycheta gorski "
    }

    \midi{}

  } % score

  \markup \fontsize #bgCoupletFontSize {
    \hspace #1
    \override #`(baseline-skip . ,bgCoupletBaselineSkip)
    \column {

      \line { 2.  Наш'те песни са ронливи,}

      \line {   "   " те ни носят радост вечно; }

      \line {   "   "  хем са живи, хем игриви}

      \line {   "   " кат поточе бързотечно.}
      \line {   "   " }

      \line {   3. Ето, чуйте как се лее}

      \line {   "   " песента ни в тишината,}

      \line {   "   " и се лее, и люлее}

      \line {   "   " като струя във душата.}
      \line {   "   " }

      \line {   4. От гласа ни тих и строен}

      \line {   "   " всяко зло ще се прокуди;}

      \line {   "   "новий воин, млад, достоен, }

      \line {   "   " с песните си ще пробудим.}
      \line {   "   " }

      \line {   5. Пейте, пейте, мили птички,}

      \line {   "   "тъй се истински живее,}

      \line {   "   "пейте, пейте дружно всички – }

      \line {   "   " целий свят със вас да пее! }
    } \"rightBraces049"

    \hspace #5
    \override #`(baseline-skip . ,bgCoupletBaselineSkip)
    \column {
      \line { 2.  Nash'te pesni sa ronlivi,}

      \line {   "   " te ni nosyat radost vechno; }

      \line {   "   "  hem sa zhivi, hem igrivi}

      \line {   "   " kat potoche barzotechno.}
      \line {   "   " }

      \line {   3. Eto, chuyte kak se lee}

      \line {   "   " pesenta ni v tishinata,}

      \line {   "   " i se lee, i lyulee}

      \line {   "   " kato struya vav dushata.}
      \line {   "   " }

      \line {   4. Ot glasa ni tih i stroen}

      \line {   "   " vsyako zlo shte se prokudi;}

      \line {   "   "noviy voin,  mlad, dostoen, }

      \line {   "   " s pesnite si shte probudim.}
      \line {   "   " }

      \line {   5. Peyte, peyte, mili ptichki,}

      \line {   "   "tay se istinski zhivee,}

      \line {   "   "peyte, peyte druzhno vsichki – }

      \line {   "   " tseliy svyat sas vas da pee! }
    } %column
    \"rightBraces049"
  } % markup

  \pageBreak

  % include foreign translation(s) of the song
  \include "lyrics_de/049_slaveycheta_gorski_lyrics_de.ly"

} % bookpart
