\version "2.24.2"

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
  \label #'ref049
  \tocItem \markup "Славейчета горски – Slavejčeta gorski"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute  {
      \clef treble
      \key bes \major
      \time 2/4
      \tempoFunc "Tempo di marcia" 4 "112"
      \autoBeamOff

      bes'4. a'8 | c''8 bes' a' g' |  g'2 |  f'2 \break | 
       a'4. g'8  | a'8 g' es' g' |  f'2 |   d'2 | \break
      \bar ".|:-||" 
        es'4. es'8 | g'8 g' f' e' | f'2 | bes'2 | \break
        
        d''4. bes'8 | f'8 f' d'' d'' | c''2  bes'2 | \break
      \bar ":|."
    }

    \addlyrics {
      Ний сме сла -- вей -- че -- та гор -- ски, с~пес -- ни
      сла -- вим Не -- бе -- са -- та, чув -- ства роб -- ски, гри -- жи
      хор -- ски с~пес -- ни го -- ним от Зе -- мя -- та.
    }

     \addlyrics {
      Nij sme sla -- vej -- če -- ta gor -- ski, s~pes -- ni
      sla -- vim Ne -- be -- sa -- ta, čuv -- stva rob -- ski, gri -- ži
      hor -- ski s~pes -- ni go -- nim ot Ze -- mja -- ta.
    }


    \header {
      title = \titleFunc "Славейчета горски " "Slavejčeta gorski "
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

      \line { 2.  Naš'te pesni sa ronlivi,}

      \line {   "   " te ni nosjat radost večno; }

      \line {   "   "  hem sa živi, hem igrivi}

      \line {   "   " kat potoče bărzotečno.}
      \line {   "   " }

      \line {   3. Eto, čujte kak se lee}

      \line {   "   " pesenta ni v tišinata,}

      \line {   "   " i se lee, i ljulee}

      \line {   "   " kato struja văv dušata.}
      \line {   "   " }

      \line {   4. Ot glasa ni tih i stroen}

      \line {   "   " vsjako zlo šte se prokudi;}

      \line {   "   "novij voin, mlad, dostoen, }

      \line {   "   " s pesnite si šte probudim.}
      \line {   "   " }

      \line {   5. Pejte, pejte, mili ptički,}

      \line {   "   "tăj se istinski živee,}

      \line {   "   "pejte, pejte družno vsički – }

      \line {   "   " celij svjat săs vas da pee! }
    } %column
    \"rightBraces049"
  } % markup

  \pageBreak

  % include foreign translation(s) of the song
  \include "lyrics_de/049_slaveycheta_gorski_lyrics_de.ly"

} % bookpart
