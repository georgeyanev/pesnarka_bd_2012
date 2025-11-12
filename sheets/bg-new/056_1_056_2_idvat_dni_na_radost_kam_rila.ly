\version "2.24.4"

% include paper part and global functions
\include "include/globals.ily"

"rightBraces056" = \markup {
  \column {
    % repeat braces
    \translate #'(0 . -8 )
    \right-brace #22
  }
  \column {
    % repeat numbers
    \translate #'(0 . -8.5 )
    2
  }
}

\bookpart {
  \label #'ref056_1
  \tocItem \markup "Идват дни на радост"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute  {
      \clef treble
      \key d \minor
      \time 3/4
      \autoBeamOff
      \tempoFunc "Andante" 4 "66"
      a'8. a'16 a'4. bes'8 | a'4 g'2 | g'8. g'16 g'4. a'8 | \break
      g'4 f'2 | e'8. e'16 e'4. f'8 | e'4 d'2 | \break
      e'8 f'8 g'8 bes'4 bes'8 | a'4 g'4 f'8. f'16 | e'4 d'2 | \bar ":|."
    }

    \addlyrics {
      Ид -- ват дни на ра -- дост, ид -- ват дни на
      ра -- дост, ид -- ват дни на ра -- дост
      за о -- ни -- я, ко -- и -- то слу -- жат Бо -- гу.
    }

    \header {
      title = \titleFunc #'ref_desc_10 "  Идват дни на радост" "Idvat dni na radost"
    }

    \midi{}

  } % score




  \label #'ref056_2
  \tocItem \markup "Към Рила"

  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute  {
      \clef treble
      \key e \minor
      \time 3/4
      \tempoFunc "Tempo di valzer" 2. "54"
      \partial 4 b4 | e'2 g'4 | c''2 b'4 | b'2. | b'2 b4 | e'2 g'4 | \break
      c''2 b'4 | b'2. ( | b'2 ) b'4 |
      \repeat volta 2 {
        a'2 c''4 | b'2 a'4 | g'2. \break
        e'2 g'4 | b2 b4 | g'2 fis'4
      }
      \alternative {
        { e'2. ( | e'2 ) b'4 | }
        { e'2. ( | e'2 ) \bar "|." }
      }
    }

    \addlyrics {
      \set stanza = "1. " Към Ри -- ла с~мощ -- на ми -- съл ле -- тим ний
      все -- ки ден. __ В~гър -- ди -- те с~туй же -- ла --
      ние жи -- ве -- ем в~свят не -- тлен. В~гър -- тлен. __
    }

    \header {
      title = \titleFunc #'ref_desc_11 "Към Рила" "Kăm Rila"
    }

    \midi{}

  } % score

  \markup \abs-fontsize #11  \override #`(baseline-skip . ,bgCoupletBaselineSkip){
    \fill-line {
      \hspace #0.1
      \column {
        \line {
          \bold "2."
          \column {
            "Отново ще се срещнем"
            "при рилските очи."
            "Тук нашата цигулка"
            "с нов тон ще зазвучи."
          } \"rightBraces056"
        }

      }
      \hspace #0.1
      % adds horizontal spacing between columns
      \column {
        \line {
          \bold "3."
          \column {
            "Душите ни  – цигулки"
            "ще леят красота,"
            "защото с тях ще свири"
            "доброто, Любовта."
          } \"rightBraces056"
        }
        % adds vertical spacing between verses

      }\hspace #0.1
    }
  }


  \markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip){

    \fill-line {
      \column {
        \vspace #1
        \line {
          \bold "4."
          \column {
            "Ще идем ний на Рила,"
            "ще видим Мусала,"
            "безкрайната природа"
            "и своя мил Баща."
          } \"rightBraces056"
        }
      }
    }
  }
} % bookpart
