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
      \key d \major
      \time 3/4
      \tempo \markup {
        % make tempo note smaller
        \concat {
          "Moderato " \normal-text { "(" }
          \teeny \general-align #Y #DOWN \note #"4" #0.8
          \normal-text { " = 80)" }
        }
      }
      \autoBeamOff

      \repeat volta 3 {
        fis8.  fis16  fis4.  fis8 | % 2
        \time 4/4  | % 2
        g8  e8  fis8  d8  e2
        | % 3
        \time 3/4  | % 3
        e8.  e16  e4.  e8 \break | % 4
        \time 4/4  | % 4
        fis8  d8  e8  cis8
        d2 | % 5
        \time 3/4  | % 5
        fis8.  fis16  b4.  cis8
      }
      \alternative {
        {
          | % 6
          \time 4/4  | % 6
          d8  b8  cis8
          ais8  b2 \break
        }
        {
          d8   b8 cis8  ais8  b4.  b8 |
          d2 cis4  b4 | \times 2/3 {
            ais4 (  b4  cis4 )
          }
          b2 ^\fermata
        }
      } \break  \bar "|."

      fis'4 ^\fermata
      e4  d8 ( [
      cis8 ) ]  b2  cis4  b4  ais8
      ( [  g8 ) ]  fis2  e4  e4
      fis8 ( [  g8 ) ]  b2 \break
      ais4
      g4  ais8 ( [  g8 ) ]  fis2  e4
      e4  fis8 ( [  g8 ) ]  b2
      ais4  g4  ais8 ( [  g8 ) ]  fis2
      fis'4 ^\fermata  e4  d8 ( [
      cis8 ) ]  b2 \break  cis4
      b4  ais8 ( [  g8 ) ]  fis2  e4
      e4  fis8 ( [  g8 ) ]  b2
      ais4  g4  ais8 ( [  g8 ) ]  fis2
      e4  e4  fis8 ( [  g8 ) ]
      b2 \break  ais4  g4  ais8 ( [  g8 )
      ]  fis2
      \repeat volta 2 {
        \time 9/8   d'4
        d8  d8  cis4
        d4.  cis4  b4  cis4
        b4. \break  ais4  g8  g8
        ais4  g4.  e4  fis4
        fis4  fis4.  e4  e4  fis4
        g4. ->  fis4  e4  fis4
        fis4. \break  e4  e4  fis4  g4.
      }
      \alternative {
        {
          fis4  e4  fis4  fis4.
        }
        {
          fis4  e4  fis4  fis4.
          ^\fermata
        }
      }

      d'8  d8  cis4
      d4.  cis4  b4
      cis4  b4.  ais4  g4  ais4
      g4.  e4   fis4
      e4  fis4.
      fis2 ~  fis4 ~ fis4.\break  \bar "|."


    }
    
    % в нотите има грешки

    \addlyrics {
      Бо -- жи -- е -- то Слън -- це гре --
      е днес, Бо -- жи -- е -- то Слън --
      це гре -- е днес, Бо -- жи -- е --
      то Слън -- це гре -- е днес. Слън
      -- це гре -- е днес за теб, бъл --
      га -- ри  --  но! Ду -- хай, ве
      -- тре, ти -- хо ду -- хай, ти
      -- хо ду -- хай, ми -- ло гле
      -- дай, ти -- хо ду -- хай,
      лис -- те раз -- вий. Лист раз
      -- вя -- вай, цвят раз -- тва
      -- ряй, цвят раз -- тва --
      ряй, плод раз -- да -- вай,
      цвят раз -- тва -- ряй, плод
      раз -- да -- вай. Хай ди ди ди
      ди, да си и -- ди, хай ди ди ди
      ди, да се у -- чи, да се у -- чи,
      да по -- лу -- чи, да по -- лу --
      чи, да се у -- чи. да се у -- чи.
      Хай ди ди ди ди, да си и -- ди,
      да си и -- ди, До -- бро да ви --
      ди.}
      \addlyrics {       Bo -- zhi -- e -- to Slan -- tse gre --
      e dnes, Bo -- zhi -- e -- to Slan --
      tse gre -- e dnes, Bo -- zhi -- e --
      to Slan -- tse gre -- e dnes. Slan
      -- tse gre -- e dnes za teb, bal --
      ga -- ri  --  no! Du -- hay, ve
      -- tre, ti -- ho du -- hay, ti
      -- ho du -- hay, mi -- lo gle
      -- day, ti -- ho du -- hay,
      lis -- te raz -- viy. List raz
      -- vya -- vay, tsvyat raz -- tva
      -- ryay, tsvyat raz -- tva --
      ryay, plod raz -- da -- vay,
      tsvyat raz -- tva -- ryay, plod
      raz -- da -- vay. Hay di di di
      di, da si i -- di, hay di di di
      di, da se u -- chi, da se u -- chi,
      da po -- lu -- chi, da po -- lu --
      chi, da se u -- chi. da se u -- chi.
      Hay di di di di, da si i -- di,
      da si i -- di, Do -- bro da vi --
      di.}

      \header {
        title = \markup \column \normal-text \fontsize #2.5 {
          \center-align
          \line { Духай ветре }
          \vspace #-0.6
          \center-align
          \line \fontsize #-3 { Duhay vetre}
          \vspace #-0.8
          \center-align
          \line \fontsize #-3 { " " }
        }
      }

      \midi{}

    } % score



    % include foreign translation(s) of the song
    \include "lyrics_de/136_duhai_vetre_lyrics_de.ly"

  } % bookpart
