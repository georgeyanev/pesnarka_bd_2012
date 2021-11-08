\version "2.20.0"

\paper {
  #(set-paper-size "a5")
}

\bookpart {
  \paper {
    print-all-headers = ##t
    print-page-number = ##t
    print-first-page-number = ##t

    % put page numbers on the bottom
    oddHeaderMarkup = \markup ""
    evenHeaderMarkup = \markup ""
    oddFooterMarkup = \markup
    \fill-line {
      ""
      \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string
    }
    evenFooterMarkup = \markup
    \fill-line {
      \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string
      ""
    }

    left-margin = 1.5\cm
    right-margin = 1.5\cm
    top-margin = 1.6\cm
    bottom-margin = 1.2\cm
    ragged-bottom = ##t % do not spread the staves to fill the whole vertical space

    % change lyrics and titles font (affects notes also)
    fonts =
    #(make-pango-font-tree
      "Times New Roman"
      "DejaVu Sans"
      "DejaVu Sans Mono"
      (/ (* staff-height pt) 3.6))

    % change distance between staves
    system-system-spacing =
    #'((basic-distance . 12)
       (minimum-distance . 6)
       (padding . 1)
       (stretchability . 12))
  }

  \header {
    tagline = ##f
  }

  \score{
    \layout {
      indent = 0.0\cm % remove first line indentation
      %ragged-last = ##t % do not spread last line to fill the whole space
      \context {
        \Score
        \omit BarNumber %remove bar numbers
      } % context

      \context {
        % change staff size
        \Staff
        fontSize = #+0 % affects notes size only
        \override StaffSymbol #'staff-space = #(magstep -3)
        \override StaffSymbol #'thickness = #0.5
        \override BarLine #'hair-thickness = #1
        %\override StaffSymbol #'ledger-line-thickness = #'(0 . 0)
      }

      \context {
        % adjust space between staff and lyrics and between the two lyric lines
        \Lyrics
        \override VerticalAxisGroup.nonstaff-relatedstaff-spacing = #'((basic-distance . 4.5))
        \override VerticalAxisGroup.nonstaff-nonstaff-spacing = #'((minimum-distance . 2))
      }
    } % layout

    \new Voice \relative c' {
      \clef treble
      \key c \major
      \time 3/4
      \tempo \markup {
        % make tempo note smaller
        \concat {
          "Moderato " \normal-text { "(" }
          \teeny \general-align #Y #DOWN \note #"4" #0.8
          \normal-text { " = 69)" }
        }
      }
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
      e4.  d8  c4 | % 11
      c4.  b8  b4 | % 12
      a2. \break | % 13
      g'2 a8 g8 | % 14
      e2 f4 | % 15
      e2 d8 e8 | % 16
      c2. \repeat volta 2 {
        | % 17
        c'2  c4 | % 18
        b2 f4 \break | % 19
        a2. | 
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
      Всър -- це -- то на чо -- ве
      -- ка о -- тек -- ва пе -- сен -- та.
      Всър -- та.
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
      Vsar -- tse -- to na cho -- ve
      -- ka o -- tek -- va pe -- sen -- ta.
      V~sar -- ta.}

      \header {
        title = \markup \column \normal-text \fontsize #2.5 {
          \center-align
          \line { Малкият планински извор }
          \vspace #-0.6
          \center-align
          \line \fontsize #-3 { Maliyat planinski izvor}
          \vspace #-0.8
          \center-align
          \line \fontsize #-3 { " " }
        }
      }

      \midi{}

    } % score

   

    \markup \fontsize #+2.5 {
      \hspace #-5
      \override #'(baseline-skip . 2.4) % affects space between column lines
      \column {
        \line {   2. Нежни цветя край него цъфтят,}
        \line {   "   "  приказки чудни тихо редят,  }
        \line {   "   " нимфи игриви тук танци плетат,}
        \line {   "   " вгубера росен стъпки трептят. }
        \line {   "   "  Нощем се оглеждат в извора звезди.}
        \line {   "   "   И блика, дава  той без спир,}
        \line {   "   "  тъй дава Любовта. }
        \line {   "   "   В сърцето на човека изгрява радостта.}
      }

      \hspace #5
      \override #'(baseline-skip . 2.4)
      \column {
        \line {   2. Nezhni tsvetya kray nego tsaftyat,}
        \line {   "   "  prikazki chudni tiho redyat,  }
        \line {   "   " nimfi igrivi tuk tantsi pletat,}
        \line {   "   " vgubera rosen stapki treptyat. }
        \line {   "   "  Noshtem se oglezhdat v izvora zvezdi.}
        \line {   "   "   I blika, dava  toy bez spir,}
        \line {   "   "  tay dava Lyubovta. }
        \line {   "   "   V sartseto na choveka izgryava radostta.}
      } %column
    } % markup

  

    % include foreign translation(s) of the song
    \include "lyrics_de/165_malkiyat_planinski_izvor_lyrics_de.ly"

  } % bookpart

