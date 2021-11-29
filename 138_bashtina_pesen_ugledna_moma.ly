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
      \key g \major
      \time 8/16
      \tempo \markup {
        % make tempo note smaller
        \concat {
          "Lento " \normal-text { "(" }
          \teeny \general-align #Y #DOWN \note #"8" #0.8
          \normal-text { " = 112)" }
        }
      }
      \autoBeamOff
   g'8. a8 f(e16) | \noBreak
    g8. g8(g8.) | \noBreak
    fis8. ees8 d8. | \noBreak
    ees8. c8(c8.) | \break

    ees8. ees8 ees8. | \noBreak
    g8. g8(g8.)  | \noBreak
    fis8. ees8 ees8.  | \noBreak
    fis8. ees8 c8.  | \break

    d8. d8(d8.)  | \noBreak
    \repeat volta 1 {
      \time 5/16 ees8 c8.  | \noBreak
      ees8 g8. | \noBreak
      fis8 ees16 c8  | \noBreak
      d8 d8. | \break
    }

    \repeat volta 1 {
      \tempo "Poco più mosso" 8 = 120
      c'8 b8[(aes16)] |  | \noBreak
      c16 c b aes f |  | \noBreak
      b8 aes([f16])  | \noBreak
      g8 g8. |
    }
    \time 8/16 \break

    \tempo "Meno mosso" c,8. d8(ees8.) | \noBreak
    fis8. g8 (g8.) | \noBreak
    fis8. ees8 fis8. | \noBreak
    ees8 d16 ees8 c8. | \noBreak
    ees8. fis8 g8. | \break

    fis8.ees8(c8.) | \noBreak
    d8. d8(d8.\fermata) | \bar "||" \noBreak
    \time 7/16
    \key c \major
    \tempo "Allegretto" 8=160
    g8 a f e16 | \noBreak
    g8 g f8. | \break

    g8 a f e16 | \noBreak
    g8 f(f8.) | \noBreak
    e8 g f(e16) | \noBreak
    \tempo "rall." f8 e c8. | \noBreak
    d4 d8. | \bar "||" \break

    \tempo "a tempo"
    c8 d16[(e)] f8 e16 | \noBreak
    f8 f e8. | \noBreak
    g8 a f e16 | \noBreak
    g4 g8. | \noBreak
    c,8 d16[(e)] f8(e16) | \break

    \tempo "rit."
    f8 e c8. | \noBreak
    d4 d8. | \bar "||" \noBreak
    \key bes \major
    \time 8/16
    \tempo "Andante sostenuto"
    fis8 g16 a8~ a8. | \noBreak
    c8. bes8 a8. | \noBreak
    a8. g8 fis8. | \break

    a8. a8~ a8.\fermata | \noBreak
    bes8. bes8~ bes8.\fermata | \noBreak
    a8. g8 g8. | \noBreak
    a8. a8~ a8. | \noBreak
    g8. g8~ g8. | \break

    fis8 ees16 d8 c8. | \noBreak
    d8 ees16 fis8 fis8.\fermata | \noBreak
    c8. d8(ees8.) | \noBreak
    g8. fis8 ees8. | \noBreak
    fis8. g8~ g8. | \break

    fis8. ees8 c8. | \noBreak
    d8. d8~ d8. | \bar "||" \noBreak
    \key c \major
    \time 5/16
    \tempo "Allegretto"
    c8 d e 16 | \noBreak
    f8 e8. | \noBreak
    f8 e8. | \break

    f16[(e)] d8 c16 | \noBreak
    e8 e8.| \noBreak
    g8 fis ees16 | \noBreak
    fis8 ees8 c16 | \noBreak
    ees8~ ees8. | \break

    fis8 ees8 c16 | \noBreak
    d8 d8. | \bar "||" \noBreak
    \key bes \major
    \time 8/16
    \tempo "Andante sostenuto"
    bes'8. bes8 bes8. | \noBreak
    a8[(bes16)] c8~ c8. | \noBreak
    bes8. a8 g8. | \break
    a8. g8 fis8. | \noBreak
    ees8. g8 g8.\fermata | \noBreak
    g8. bes8 bes8. | \noBreak
    bes8. g8~ g8. | \noBreak
    bes8. a8 g8. | \break

    a8. a8~ a8. | \noBreak
    g8. a8 g8. | \noBreak
    fis8. ees8~ ees8. | \noBreak
    fis8. g8 g8. | \noBreak
    fis8. fis8~ fis8. | \break

    ees8. g8~ g8. | \noBreak
    fis8. ees8~ ees8. | \noBreak
    fis8. ees8(c8.) | \noBreak
    d8. d8~ d8. | \bar "||" \noBreak
    g8. g8~ g8. | \break

    bes8. bes8~ bes8. | \noBreak
    c8. bes8~ bes8. | \noBreak
    a8. g8~ g8.\fermata | \noBreak
    bes8. bes8 g8. | \noBreak
    a8. a8~ a8.\fermata | \break

    \repeat volta 1 {
      \tempo "Poco più mosso"
      g8. g8~ g8. | \noBreak
      fis8. ees8~ ees8. | \noBreak
      fis8. ees8 c8. | \noBreak
      d8. d8~ d8. | \noBreak
    }
    \key c \major
    \time 5/16
    \tempo "Allegretto"
    c8 d(e16) | \break

    f8 e8. | \noBreak
    g8 f8(e16) | \noBreak
    f8 e8. | \noBreak
    g8 a f16 | \noBreak
    f8 e8. | \noBreak
    g8 a8. | \noBreak
    f8 e8. | \break

    f8 e c16 | \noBreak
    d8 d8. | \noBreak
    \tempo "rall."
    e8 g8. | \noBreak
    f8 e8. | \noBreak
    f8 e c16 | \noBreak
    d8 d8. | \bar "||"
    \time 8/16
    \key g \major
    \break

    \tempo "Andante sostenuto"
    d'16\fermata d d d8 d8. | \noBreak
    e8. c8 b8. | \noBreak
    e8. c8 b8. | \noBreak
    b8. g8~ g8. \break

    b8. d8 d8. | \noBreak
    c8. b8~ b8. | \noBreak
    c8. b8 g8. | \noBreak
    a8. a8~ a8. | \noBreak
    c8. c8 d8. | \break

    e8. d8~ d8. | \noBreak
    cis8. \stemUp bes8(a8.) \stemNeutral | \noBreak
    bes8. g8~ g8. | \noBreak
    bes8 bes16 bes8 bes8. | \noBreak
    bes8. g8~ g8. | \break

    bes8. d8~ d8. | \noBreak
    cis8. bes8 g8. | \noBreak
    a8. a8~ a8. | \noBreak \bar "||"
    \key c \major
    \time 5/16
    \tempo "Più mosso" e'8 e8. | \noBreak
    d16[(e)] c8. | \break
    d8 d8. | \noBreak
    d16 e c8  b16 | \noBreak
    c8 d8. | \noBreak
    b8 g8. | \noBreak
    a8~ a8. | \noBreak
    a8~ a8. | \bar "||" \break

    e'16\staccato r16 d8\staccato r16 | \noBreak
    e16\staccato r16 c8\staccato r16 | \noBreak
    d16\staccato r16 e8\staccato r16 | \noBreak
    c16 b c8 b16 | \noBreak
    b16\staccato r16 d8\staccato r16 | \break

    c16\staccato r16 b8\staccato r16 | \noBreak
    a8~ a8. | \noBreak
    a8~ a8. | \noBreak \bar "||"
    \time 9/16
    e8 e e e8. | \noBreak
    a8 g f e8. | \break

    g8(f) e8~ e8. | \noBreak
    c'8 b b a8. | \noBreak
    e8 e g f8. | \noBreak
    f4 e8~ e8. | \break

    e4 c'8 b8.\fermata | \noBreak
    \tuplet 3/2 { a,16 b c } e f f8\fermata e8.\fermata | \noBreak
    \time 4/4 c'4 b a e8. e16 | \break

    c'4 b2 e,4 | \noBreak
    \time 2/4 g4 f8. d16 | \noBreak
    \time 3/4 e4 e2 | \noBreak
    \bar "|" \mark\markup{ \column { \center-align \normalsize \musicglyph #"scripts.ufermata"  \center-align \normalsize \musicglyph #"scripts.caesura.straight" }}
    }

 \addlyrics {
    От ста -- ро вре -- ме, син -- ко, е знай -- но --
    ху -- ба -- ва мо -- ма на све -- тъл ден се по --
    зна -- ва, ко -- га Слън -- це сут -- рин из -- гря -- ва.
    Тя е ра -- но -- буд -- ни -- ца, ра -- но ста -- ва
    и "с ͜ кър" -- ча -- зи на из -- во -- ра о -- ти -- ва, и во -- да
    си на -- ли -- ва. Тъй, пъл -- на и ве -- се -- ла,
    тя до -- ма се връ -- ща, май -- ка си ми -- ло пре -- гръ -- ща.
    Тъй, пъл -- на и ве -- се -- ла,  тя до -- ма се връ -- ща, май -- ка си
    ми -- ло пре -- гръ -- ща. Ху -- ба -- ва мо -- ма се, син -- ко, по --
    зна -- ва, ко -- га ло -- зе ко -- па -- е и то
    и -- зо -- бил -- но гроз -- де да -- ва. Ло -- зе мо -- мин -- ски ръ -- це
    до -- бре по -- зна -- ва, ло -- зе мо -- мин -- ски ръ -- це
    до -- бре по -- зна -- ва, ло -- зе мо -- мин -- ски ръ -- це
    до -- бре по -- зна -- ва. Ху -- ба -- ва мо -- ма се, син -- ко,
    на ни -- ва по -- зна -- ва, ко -- га ръ -- ко -- и ди -- га и
    сла -- га, и на  зе -- мя ги до -- бре по -- ла -- га,
    и на Бо -- га хва -- ла да -- ва. Тя е,
    син -- ко, гла -- со -- ви -- та, лич -- на пе -- ви -- ца;
    не -- я жи -- то до -- бре по -- зна -- ва. Тя е,
    син -- ко, гла -- со -- ви -- та, лич -- на пе -- ви -- ца; не -- я жи -- то
    до -- бре по -- зна -- ва, не -- я жи -- то до -- бре по -- зна -- ва.
    Ху -- ба -- ва мо -- ма се, син -- ко, до -- бре по -- зна -- ва
    ко -- га на гум -- но жи -- то от -- вя -- ва и във ре --
    ше -- то го пре -- ся -- ва, "в ͜ жит" -- ни -- ци го ту -- ря
    и на бед -- ни хляб да -- ва. Не -- я всич -- ки,
    мал -- ки и го -- ле -- ми, до -- бре я по -- зна -- ват,
    не -- я всич -- ки, мал -- ки и го -- ле -- ми, до -- бре
    я по -- зна -- ват. Ум -- мна мо -- ма, син -- ко, се по --
    зна -- ва, ко -- га кни -- га във ръ -- це си взе -- ма
    и скри -- то бъ -- де -- ще раз -- га -- да -- ва. Тя всич -- ко във жи --
    во -- та на мяс -- то по -- ста -- вя. Ху -- ба -- ва мо -- ма,
    син -- ко, е ро -- са, що зе -- мя о -- ро -- ся ва.
    Тя е Ан -- гел, що от го -- ре и -- де, при хо -- ра
    сли -- за  и "в ͜ до" -- ма им Мир и Ра -- дост вна -- ся.
    Тя е свет -- ла кат зо -- ра -- та, тя е ми -- ла
    кат во -- да -- та, тя е до -- бра кат хра -- на -- та.
  }

  \addlyrics {
    Ot sta -- ro vre -- me, sin -- ko, e znay -- no --
    hu -- ba -- va mo -- ma na sve -- tal den se po --
    zna -- va, ko -- ga Slan -- tse sut -- rin iz -- grya -- va.
    Tya e ra -- no -- bud -- ni -- tsa, ra -- no sta -- va
    i "s ͜ kar" -- cha -- zi na iz -- vo -- ra o -- ti -- va, i vo -- da
    si na -- li -- va. Tay, pal -- na i ve -- se -- la,
    tya do -- ma se vra -- shta, may -- ka si mi -- lo pre -- gra -- shta.
    Tay, pal -- na i ve -- se -- la,  tya do -- ma se vra -- shta, may -- ka si
    mi -- lo pre -- gra -- shta. Hu -- ba -- va mo -- ma se, sin -- ko, po --
    zna -- va, ko -- ga lo -- ze ko -- pa -- e i to
    i -- zo -- bil -- no groz -- de da -- va. Lo -- ze mo -- min -- ski ra -- tse
    do -- bre po -- zna -- va, lo -- ze mo -- min -- ski ra -- tse
    do -- bre po -- zna -- va, lo -- ze mo -- min -- ski ra -- tse
    do -- bre po -- zna -- va. Hu -- ba -- va mo -- ma se, sin -- ko,
    na ni -- va po -- zna -- va, ko -- ga ra -- ko -- i di -- ga i
    sla -- ga, i na  ze -- mya gi do -- bre po -- la -- ga,
    i na Bo -- ga hva -- la da -- va. Tya e,
    sin -- ko, gla -- so -- vi -- ta, lich -- na pe -- vi -- tsa;
    ne -- ya zhi -- to do -- bre po -- zna -- va. Tya e,
    sin -- ko, gla -- so -- vi -- ta, lich -- na pe -- vi -- tsa; ne -- ya zhi -- to
    do -- bre po -- zna -- va, ne -- ya zhi -- to do -- bre po -- zna -- va.
    Hu -- ba -- va mo -- ma se, sin -- ko, do -- bre po -- zna -- va
    ko -- ga na gum -- no zhi -- to ot -- vya -- va i vav re --
    she -- to go pre -- sya -- va, "v ͜ zhit" -- ni -- tsi go tu -- rya
    i na bed -- ni hlyab da -- va. Ne -- ya vsich -- ki,
    mal -- ki i go -- le -- mi, do -- bre ya po -- zna -- vat,
    ne -- ya vsich -- ki, mal -- ki i go -- le -- mi, do -- bre
    ya po -- zna -- vat. Um -- mna mo -- ma, sin -- ko, se po --
    zna -- va, ko -- ga kni -- ga vav ra -- tse si vze -- ma
    i skri -- to ba -- de -- shte raz -- ga -- da -- va. Tya vsich -- ko vav zhi --
    vo -- ta na myas -- to po -- sta -- vya. Hu -- ba -- va mo -- ma,
    sin -- ko, e ro -- sa, shto ze -- mya o -- ro -- sya va.
    Tya e An -- gel, shto ot go -- re i -- de, pri ho -- ra
    sli -- za  i "v ͜ do" -- ma im Mir i Ra -- dost vna -- sya.
    Tya e svet -- la kat zo -- ra -- ta, tya e mi -- la
    kat vo -- da -- ta, tya e do -- bra kat hra -- na -- ta.
  }

    \header {
      title = \markup \column \normal-text \fontsize #2.5 {
        \center-align
        \line { Бащина песен - Угледна мома }
        \vspace #-0.6
        \center-align
        \line \fontsize #-3 { Bastina pesen - ugledna moma }
        \vspace #-0.8
        \center-align
        \line \fontsize #-3 { " " }
      }
    }

    \midi{}

  } % score

\pageBreak

  % include foreign translation(s) of the song
  \include "lyrics_de/138_bashtina_pesen_egledna_moma_lyrics_de.ly"

} % bookpart
