\version "2.24.3"

% include paper part and global functions
\include "include/globals.ily"

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
      title = \titleFunc #'ref_desc_2 "  Идват дни на радост" "Idvat dni na radost"
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
      "1. Към" Ри -- ла с~мощ -- на ми -- съл ле -- тим ний
      все -- ки ден. __ В~гър -- ди -- те с~туй же -- ла --
      ние жи -- ве -- ем в~свят не -- тлен. "В~гър -" тлен. __
    }

    \header {
      title = \titleFunc #'ref_desc_2 "Към Рила" "Kăm Rila"
    }

    \midi{}

  } % score

  \markup \abs-fontsize #11 {
    \hspace #8
    \override #`(baseline-skip . ,bgCoupletBaselineSkip)
    \column {

      \line { 2. Отново ще се срещнем  }
      \line {   "   " при рилските очи. }
      \line {   "   " Тук нашата цигулка }
      \line {   "   " с нов тон ще зазвучи. }

      \line { " " }
      \line { 3. Душите ни  – цигулки }
      \line {   "   " ще леят красота, }
      \line {   "   " защото с тях ще свири  }
      \line {   "   " доброто, Любовта. }

    }

    \hspace #5
    \override #`(baseline-skip . ,bgCoupletBaselineSkip)
    \column {


      \line { 4. Ще идем ний на Рила, }
      \line {   "   " ще видим Мусала, }
      \line {   "   " безкрайната природа  }
      \line {   "   " и своя мил Баща. }


    }


  } % markup





} % bookpart
