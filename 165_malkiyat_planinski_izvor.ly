\version "2.22.1"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
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
      Бли -- ка и пе -- е из -- во --
      рът чист с~по -- глед не -- ви --
      нен, ве -- дър, лъ -- чист. В~ску --
      та пла -- нин -- ски ро -- дил се
      в~зо -- ри, тре -- пет -- на Ра --
      дост, бо -- дрост зву -- чи. Бис --
      три стру -- и пе -- ят, кап -- чи --
      ци бле -- стят.  стят.  Раз --
      ли -- ва све -- жест,  кра -- со
      -- та, мъл -- ви за Лю -- бов -- та.
      В~сър -- це -- то на чо -- ве
      -- ка о -- тек -- ва пе -- сен -- та.
      В~сър -- та.

    }

    \addlyrics {
      Bli -- ka i pe -- e iz -- vo --
      rat chist s~po -- gled ne -- vi --
      nen, ve -- dar, la -- chist. V~sku --
      ta pla -- nin -- ski ro -- dil se
      v~zo -- ri, tre -- pet -- na Ra --
      dost, bo -- drost zvu -- chi. Bis --
      tri stru -- i pe -- yat, kap -- chi --
      tsi ble -- styat.  styat.  Raz --
      li -- va sve -- zhest,  kra -- so
      -- ta, mal -- vi za Lyu -- bov -- ta.
      V~sar -- tse -- to na cho -- ve
      -- ka o -- tek -- va pe -- sen -- ta.
      V~sar -- ta

    }
    \header {
      title = \titleFunc "Малкият планински извор" "Malkiyat planinski izvor"
    }

    \midi{}

  } % score
  %\markup \dc-two "D.C." "con repetitione"

  \pageBreak

  \markup \fontsize #bgCoupletFontSize {
    \hspace #0
    \override #`(baseline-skip . ,bgCoupletBaselineSkip)
    \column {
      \line {   2. Нежни цветя край него цъфтят,}
      \line {   "   "  приказки чудни тихо редят,  }
      \line {   "   " нимфи игриви тук танци плетат,}
      \line {   "   " вгубера росен стъпки трептят. }
      \line {   "   "  Нощем се оглеждат в извора }
      \line {   "   "  звезди.}
      \line {   "   "   И блика, дава  той без спир,}
      \line {   "   "  тъй дава Любовта. }
      \line {   "   "   В сърцето на човека изгрява }
      \line {   "   "   Радостта.}
    }

    \hspace #3
    \override #`(baseline-skip . ,bgCoupletBaselineSkip)
    \column {
      \line {   2. Nezhni tsvetya kray nego tsaftyat,}
      \line {   "   "  prikazki chudni tiho redyat,  }
      \line {   "   " nimfi igrivi tuk tantsi pletat,}
      \line {   "   " vgubera rosen stapki treptyat. }
      \line {   "   "  Noshtem se oglezhdat v izvora }
      \line {   "   "  zvezdi.}
      \line {   "   "   I blika, dava  toy bez spir,}
      \line {   "   "  tay dava Lyubovta. }
      \line {   "   "   V sartseto na choveka izgryava }
      \line {   "   "   Radostta.}
    } %column
  } % markup

  \markup \empty-three
  \markup \empty-two

  % include foreign translation(s) of the song
  \include "lyrics_de/165_malkiyat_planinski_izvor_lyrics_de.ly"

} % bookpart
