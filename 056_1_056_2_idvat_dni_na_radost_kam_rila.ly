\version "2.24.0"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute  {
      \clef treble
      \key d \minor
      \time 3/4
      \autoBeamOff
      \tempoFunc "Andante" 4 "66"
      \repeat volta 2 {

        a'8. a'16 a'4. bes'8 | a'4 g'2 | g'8. g'16 g'4. a'8 | \break
        g'4 f'2 | e'8. e'16 e'4. f'8 | e'4 d'2 | \break
        e'8 f'8 g'8 bes'4 bes'8 | a'4 g'4 f'8. f'16 | e'4 d'2 |
      }
    }

    \addlyrics {
      И -- дват дни на Ра -- дост, и -- дват дни на
      Ра -- дост, и -- дват дни на Ра -- дост
      за о -- ни -- я, ко -- и -- то слу -- жат Бо -- гу.
    }

    \addlyrics {
      I -- dvat dni na Ra -- dost, i -- dvat dni na
      Ra -- dost, i -- dvat dni na Ra -- dost
      za o -- ni -- ya, ko -- i -- to slu -- zhat Bo -- gu.
    }


    \header {
      title = \titleFunc "  Идват дни на радост" "Idvat dni na radost"
    }

    \midi{}

  } % score

  % include foreign translation(s) of the song
  \markup \empty-two
  \include "lyrics_de/056_1_idvat_dni_na_radost_lyrics_de.ly"

  \markup \empty-two

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
        { e'2. ( | e'2 ) s4 \bar "|." }
      }
    }

    \addlyrics {
      "1. Към" Ри -- ла с~мощ -- на ми -- съл ле -- тим ний
      все -- ки ден. В~гър -- ди -- те с~туй же -- ла --
      ние жи -- ве -- ем в~свят не -- тлен. В~гър -- тлен.
    }

    \addlyrics {
      Kam Ri -- la s~mosht -- na mi -- sal le -- tim niy
      vse -- ki den. V~gar -- di -- te s~tuy zhe -- la --
      nie zhi -- ve -- em v~svyat ne -- tlen. V~gar -- tlen.
    }


    \header {
      title = \titleFunc "Към Рила" "Kam Rila"
    }

    \midi{}

  } % score

  \markup \fontsize #bgCoupletFontSize {
    \hspace #5
    \override #`(baseline-skip . ,bgCoupletBaselineSkip)
    \column {
     
      \line { 2. Отново ще се срещнем  }
      \line {   "   " при рилските очи. }
      \line {   "   " Тук чудната цигулка }
      \line {   "   " с нов тон ще зазвучи. }

      \line { " " }
      \line { 3. Душите ни  – цигулки }
      \line {   "   " ще леят красота, }
      \line {   "   " защото с тях ще свири  }
      \line {   "   " Доброто, Любовта. }

      \line { " " }
      \line { 4. Ще идем ний на Рила, }
      \line {   "   " ще видим Мусала, }
      \line {   "   " безкрайната Природа  }
      \line {   "   " и своя мил Баща. }
    }

    \hspace #5
    \override #`(baseline-skip . ,bgCoupletBaselineSkip)
    \column {
    
      \line { 2. Otnovo shte se sreshtnem  }
      \line {   "   " pri rilskite ochi. }
      \line {   "   " Tuk chudnata tsigulka }
      \line {   "   " s nov ton shte zazvuchi. }

      \line { " " }
      \line { 3. Dushite ni  – tsigulki }
      \line {   "   " shte leyat krasota, }
      \line {   "   " zashtoto s tyah shte sviri  }
      \line {   "   " Dobroto, Lyubovta. }

      \line { " " }
      \line { 4. Shte idem niy na Rila, }
      \line {   "   " shte vidim Musala, }
      \line {   "   " bezkraynata Priroda  }
      \line {   "   " i svoya mil Bashta. }
    } %column
  } % markup

  \markup \empty-two

  \include "lyrics_de/056_2_kam_rila_lyrics_de.ly"

} % bookpart
