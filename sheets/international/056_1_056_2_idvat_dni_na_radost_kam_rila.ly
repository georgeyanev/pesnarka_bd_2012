\version "2.24.4"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref056_1
  \tocItem \markup "Идват дни на радост – Idvat dni na radost"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute  {
      \clef treble
      \key d \minor
      \time 3/4
      \autoBeamOff
      \tempoFunc "Andante" 4 "66"
      a'8. a'16 a'4. bes'8 | a'4 g'2 | g'8. g'16 g'4. a'8 |
      g'4 f'2 | e'8. e'16 e'4. f'8 | e'4 d'2 | 
      e'8 f'8 g'8 bes'4 bes'8 | a'4 g'4 f'8. f'16 | e'4 d'2 | \bar ":|."
    }

    \addlyrics {
      Ид -- ват дни на ра -- дост, ид -- ват дни на
      ра -- дост, ид -- ват дни на ра -- дост
      за о -- ни -- я, ко -- и -- то слу -- жат Бо -- гу.
    }

    \addlyrics {
      Id -- vat dni na ra -- dost, id -- vat dni na
      ra -- dost, id -- vat dni na ra -- dost
      za o -- ni -- ja, ko -- i -- to slu -- žat Bo -- gu.
    }


    \header {
      title = \titleFunc "Идват дни на радост" "Idvat dni na radost"
    }

    \midi{}

  } % score

  % include foreign translation(s) of the song
  \markup \vspace #1
  \include "../../lyrics/de/056_1_idvat_dni_na_radost_lyrics_de.ly"
  \markup \vspace #2
  \label #'ref155_2
  \tocItem \markup "Мирът иде вече – Mirat ide veche"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \relative c' {
      \clef treble
      \key g \minor
      \time 4/4
      \tempoFunc "Andante" 4 "69"
      \autoBeamOff
      \repeat volta 2 {
        g8 a bes c d4 d4 | g8 f es d c4 c |

        f8 es d c bes 4 d 4 | g,8 a bes a g4 g4 | 

        g8 a bes c d4 d4 | g8 f es d c4 c |  

        f8 es d c bes 4 d 4 |  g,8 a bes a g4 g4 |
      }
    }

    \addlyrics {
      „Ми -- рът и -- де ве -- че, Ми -- рът и -- де ве -- че, Ми -- рът и -- де ве -- че!“,
      тъй наш Гос -- под ре -- че.
      Tъй наш Гос -- под ре -- че: „Ми -- рът и -- де ве -- че, Ми -- рът и -- де ве -- че!“,
      тъй наш Гос -- под ре -- че.
    }
    \addlyrics {
      „Mi -- rat i -- de ve -- che, Mi -- rat i -- de ve -- che, Mi -- rat i -- de ve -- che!“,
      tay nash Gos -- pod re -- che.
      Tay nash Gos -- pod re -- che: „Mi -- rat i -- de ve -- che, Mi -- rat i -- de ve -- che!“,
      tay nash Gos -- pod re -- che.}

      \header {
        title = \titleFunc "Мирът иде вече" "Mirat ide veche"
      }

      \midi{}

    } % score

  \markup \vspace #2

    % include foreign translation(s) of the song
    \include "../../lyrics/de/155_2_mirat_ide_veche.ly"

  \label #'ref056_2
  \tocItem \markup "Към Рила – Kăm Rila"

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
      \set stanza = "1." Към Ри -- ла с~мощ -- на ми -- съл ле -- тим ний
      все -- ки ден. __ В~гър -- ди -- те с~туй же -- ла --
      ние жи -- ве -- ем в~свят не -- тлен. В~гър -- тлен. __
    }

    \addlyrics {
      \set stanza = "1." Kăm Ri -- la s~mošt -- na mi -- săl le -- tim nij
      vse -- ki den. __ V~găr -- di -- te s~tuj že -- la --
      nie ži -- ve -- em v~svjat ne -- tlen. V~găr -- tlen. __
    }

    \header {
      title = \titleFunc "Към Рила" "Kăm Rila"
    }

    \midi{}

  } % score
  \markup \empty-two

  \markup \abs-fontsize #10 {
    \hspace #15
    \override #`(baseline-skip . ,bgCoupletBaselineSkip)
    \column {

      \line { 2. Отново ще се срещнем  }
      \line {   "   " при рилските очи. }
      \line {   "   " Тук нашата цигулка }
      \line {   "   " с нов тон ще зазвучи. }

      \vspace #0.5
      \line { 3. Душите ни  – цигулки }
      \line {   "   " ще леят красота, }
      \line {   "   " защото с тях ще свири  }
      \line {   "   " доброто, Любовта. }
      \vspace #0.5
      \line { 4. Ще идем ний на Рила, }
      \line {   "   " ще видим Мусала, }
      \line {   "   " безкрайната природа  }
      \line {   "   " и своя мил Баща. }
    }

    \hspace #5
    \override #`(baseline-skip . ,bgCoupletBaselineSkip)
    \column {

      \line { 2. Otnovo šte se sreštnem  }
      \line {   "   " pri rilskite oči. }
      \line {   "   " Tuk našata cigulka }
      \line {   "   " s nov ton šte zazvuči. }

      \vspace #0.5
      \line { 3. Dušite ni  – cigulki }
      \line {   "   " šte lejat krasota, }
      \line {   "   " zaštoto s tjah šte sviri  }
      \line {   "   " dobroto, Ljubovta. }
      \vspace #0.5
      \line { 4. Šte idem nij na Rila, }
      \line {   "   " šte vidim Musala, }
      \line {   "   " bezkrajnata priroda  }
      \line {   "   " i svoja mil Bašta. }
    } %column
  } % markup


  \markup \vspace #3
  \include "../../lyrics/de/056_2_kam_rila_lyrics_de.ly"

} % bookpart
