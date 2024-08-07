\version "2.24.4"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref165
  \tocItem \markup "Малкият планински извор – Malkijat planinski izvor"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Staff = main \relative  c'{
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
      <<
        { c2  b4 }
        \new Staff \with {
          \override VerticalAxisGroup.default-staff-staff-spacing =
          #'((basic-distance . 5.5)
             (padding . -10))
          \remove "Time_signature_engraver"
          alignAboveContext = #"main"
          fontSize = #-1.5
          \override StaffSymbol.staff-space = #(magstep -2)
          \override StaffSymbol.thickness = #(magstep -2)
          firstClef = ##f
        }
        {\autoBeamOff c4. ^\markup { \large \italic "ossia по М. Т./nach M. T." } b8 b4}
      >>
      \break | % 7
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
      f2 e8 ([ f8] ) | % 29
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
          c2 )  c'4
        }
        {
          | % 43
          c,2. ( | % 44
          c2. )
        }
      }
      \bar "|."
    }

    \addlyrics {
      \set stanza = "1." Бли -- ка и пе -- е из -- во --
      рът чист, с~пог -- лед не -- ви --
      нен, ве -- дър, лъ -- чист. В~ску --
      та пла -- нин -- ски ро -- дил се
      в~зо -- ри, тре -- пет -- на ра --
      дост, бод -- рост зву -- чи. Бис --
      три стру -- и ле -- е, кап -- чи --
      ци блес -- тят. __   стят. __   Раз --
      ли -- ва све -- жест,  кра -- со
      -- та, мъл -- ви за Лю -- бов -- та. __
      В~сър -- це -- то на чо -- ве
      -- ка о -- тек -- ва пе -- сен -- та. __
      В~сър -- та. __

    }

    \addlyrics {
      \set stanza = "1." Bli -- ka i pe -- e iz -- vo --
      răt čist, s~pog -- led ne -- vi --
      nen, ve -- dăr, lă -- čist. V~sku --
      ta pla -- nin -- ski ro -- dil se
      v~zo -- ri, tre -- pet -- na ra --
      dost, bod -- rost zvu -- či. Bis --
      tri stru -- i le -- e, kap -- či --
      ci bles -- tjat. __   stjat. __   Raz --
      li -- va sve -- žest,  kra -- so
      -- ta, măl -- vi za Lju -- bov -- ta. __
      V~săr -- ce -- to na čo -- ve
      -- ka o -- tek -- va pe -- sen -- ta. __
      V~săr -- ta. __

    }
    \header {
      title = \titleFunc "Малкият планински извор" "Malkijat planinski izvor"
    }

    \midi{}

  } % score
  %\markup \dc-two "D.C." "con repitione"

  \markup \vspace #2

  \markup \abs-fontsize #10 {
    \hspace #20
    \override #`(baseline-skip . ,bgCoupletBaselineSkip) % affects space between column lines
    \column {
      \line {   2. Нежни цветя край него цъфтят, }
      \line {   "   "  приказки чудни тихо редят,  }
      \line {   "   " нимфи игриви тук танци плетат, }
      \line {   "   "  в губера росен стъпки редят. }
      \line {   "   "  Нощем се оглеждат в извора звезди. (2)}
      \line {   "   "  И блика, дава  той безспир, }
      \line {   "   " тъй дава Любовта. }
      \line {   "   "   В сърцето на човека изгрява радостта. (2)}
    }
  } % markup
  \pageBreak
  \markup \abs-fontsize #10 {
    \hspace #20
    \override #`(baseline-skip . ,bgCoupletBaselineSkip) % affects space between column lines
    \column {
      \line {   2. Nežni cvetja kraj nego căftjat, }
      \line {   "   "  prikazki čudni tiho redjat,  }
      \line {   "   " nimfi igrivi tuk tanci pletat, }
      \line {   "   "  v gubera rosen stăpki redjat. }
      \line {   "   "  Noštem se ogleždat v izvora  zvezdi. (2)}
      \line {   "   "  I blika, dava  toj bezspir, tăj dava Ljubovta. }
      \line {   "   "   V sărceto na čoveka izgrjava radostta. (2)}
    } %column
  } % markup

  \markup \vspace #3
  % include foreign translation(s) of the song
  \include "../../lyrics/de/165_malkiyat_planinski_izvor_lyrics_de.ly"

} % bookpart
