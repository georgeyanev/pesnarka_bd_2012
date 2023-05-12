\version "2.24.1"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref165
  \tocItem \markup "Малкият планински извор – Malkijat planinski izvor"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \relative  c'{
      \clef treble
      \key c \major
      \time 3/4
      \tempoFunc "Tempo di valzer" 2. "56"
      \autoBeamOff
      g'4. g8 g4 | % 2
      a2 e4 | % 3
      g2 f8 e8 | % 4
      f2. | % 5
      b2 a8  b8 | % 6
      c2  b4 \break | % 7
      b2 a8  b8 | % 8
      g2. | % 9
      g4. g8 g4 |
      e'4.  d8  c4 | % 11
      c4.  b8  b4 | % 12
      a2. \break | % 13
      g2 a8 g8 | % 14
      e2 f4 | % 15
      e2 d8 e8 | % 16
      c2. \repeat volta 2 {
        | % 17
        c'2  c4 | % 18
        b2 f4  | % 19
        a2. \break |
        g2. | % 21
        e2 e4 | % 22
        d2 d4
      }
      \alternative {
        {
          | % 23
          c2. ~ | % 24
          c2.
        }
        {
          | % 25
          c2. ~ | % 26
          c2 g'4
        }
      }
      a2 g4 \break | % 28
      f2 e8 ( f8 ) | % 29
      g2 f4 |
      e2  c'4 | % 31
      a2  b4 | % 32
      c2 a4 | % 33
      g2. ( | % 34
      g2 )  c4
      \repeat volta 2 {
        | % 35
        d2  c4 \break | % 36
        b2 a8 [(  b8 )] | % 37
        c2. | % 38
        g2. | % 39
        a4 g4 e4 |
        d2 d4
      }

      \alternative {
        {
          | % 41
          c2. ( | % 42
          c2 )  c4
        }
        {
          | % 43
          c2. ( | % 44
          c2. )
        }
      }
      \bar "|."
    }

    \addlyrics {
      Бли -- ка и пе -- е из -- "во-" --
      рът чист с~по -- глед не -- ви --
      нен, ве -- дър, лъ -- чист. В~ску --
      та пла -- нин -- ски ро -- дил се
      в~зо -- ри, тре -- "пет-" -- на Ра --
      дост, бо -- дрост зву -- чи. Бис --
      три стру -- и пе -- ят, кап -- чи --
      ци бле -- стят.  стят.  Раз --
      ли -- ва све -- жест,  кра -- со
      -- та, мъл -- ви за Лю -- бов -- та.
      В~сър -- це -- то на чо -- ве
      -- ка о -- "тек-" -- ва пе -- сен -- та.
      В~сър -- та.

    }

     \addlyrics {
      Bli -- ka i pe -- e iz -- vo --
      răt čist s~po -- gled ne -- vi --
      nen, ve -- dăr, lă -- čist. V~sku --
      ta pla -- nin -- ski ro -- dil se
      v~zo -- ri, tre -- pet -- na Ra --
      dost, bo -- drost zvu -- či. Bis --
      tri stru -- i pe -- jat, kap -- či --
      ci ble -- stjat.  stjat.  Raz --
      li -- va sve -- žest,  kra -- so
      -- ta, măl -- vi za Lju -- bov -- ta.
      V~săr -- ce -- to na čo -- ve
      -- ka o -- "tek-" -- va pe -- sen -- ta.
      V~săr -- ta.

    }
    \header {
      title = \titleFunc "Малкият планински извор" "Malkijat planinski izvor"
    }

    \midi{}

  } % score
  %\markup \dc-two "D.C." "con repitione"



  \markup \fontsize #bgCoupletFontSize {
 
    \override #`(baseline-skip . ,bgCoupletBaselineSkip)
    \column {
      \line {   2. Нежни цветя край него цъфтят,}
      \line {   "   "  приказки чудни тихо редят,  }
      \line {   "   " нимфи игриви тук танци плетат,}
      \line {   "   " в губера росен стъпки трептят. }
      \line {   "   "  Нощем се оглеждат}
      \line {   "   "  в извора  звезди.}
      \line {   "   "  И блика, дава  той без спир,}
      \line {   "   "  тъй дава Любовта. }
      \line {   "   "   В сърцето на човека}
      \line {   "   "    изгрява Радостта.}
    }

 \hspace #3
    \override #`(baseline-skip . ,bgCoupletBaselineSkip)
    \column {
      \line {   2. Nežni cvetja kraj nego căftjat,}
      \line {   "   "  prikazki čudni tiho redjat,  }
      \line {   "   " nimfi igrivi tuk tanci pletat,}
      \line {   "   " v gubera rosen stăpki treptjat. }
      \line {   "   "  Noštem se ogleždat}
      \line {   "   "  v izvora  zvezdi.}
      \line {   "   "  I blika, dava  toj bez spir,}
      \line {   "   "  tăj dava Ljubovta. }
      \line {   "   "   V sărceto na čoveka}
      \line {   "   "    izgrjava Radostta.}
    } %column
  } % markup


  % include foreign translation(s) of the song
  \include "lyrics_de/165_malkiyat_planinski_izvor_lyrics_de.ly"

} % bookpart
