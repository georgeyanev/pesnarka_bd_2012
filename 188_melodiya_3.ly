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
      \time 4/4
      \tempo \markup {
        % make tempo note smaller
        \concat {
          "Moderato " \normal-text { "(" }
          \teeny \general-align #Y #DOWN \note #"4" #0.8
          \normal-text { " = 69)" }
        }
      }
      \autoBeamOff
      \partial 4
      a | d4. cis8 d8 e8 fis8 g8 | a2 fis4 d4 | \break

      b'4. a8 g fis a gis |g2. g4 | fis4. e8 dis e fis g | \break

      b2 a4 a |d4. e,8 fis8 g8 e8. d16 | d2 r8 a8 b8 cis8 | \break

      d4. cis8 d e fis g | a2 fis4 d4 | \break

      b4. e8 g b e8. d16 | cis2.\fermata a4 | fis'4. d8 a fis b a \break |

      g2 e4 a,4 | b4. a8 gis a e'8 fis | d2 . \bar "|." \break
    }

    \addlyrics {
      Ко -- га -- то се де -- нят про -- буж -- да,
      за -- пя -- ват слън -- че -- ви лъ -- чи.
      От из -- во -- ри -- те на жи -- во -- та
      о -- бил -- но ра -- дост -- та стру -- и.
      И в~то -- я час, тър -- жест -- вен час на ут -- ро -- то,
      ця -- ла -- та При -- ро -- да пей.
      Към вър -- хо -- ве -- те о -- за -- ре -- ни
      по -- ли -- тат на -- ши -- те ду -- ши.}
      \addlyrics {
        Ko -- ga -- to se de -- nyat pro -- buzh -- da,
        za -- pya -- vat slan -- che -- vi la -- chi.
        Ot iz -- vo -- ri -- te na zhi -- vo -- ta
        o -- bil -- no ra -- dost -- ta stru -- i.
        I v~to -- ya chas, tar -- zhest -- ven chas na ut -- ro -- to,
        tsya -- la -- ta Pri -- ro -- da pey.
        Kam var -- ho -- ve -- te o -- za -- re -- ni
        po -- li -- tat na -- shi -- te du -- shi.}

        \header {
          title = \markup \column \normal-text \fontsize #2.5 {
            \center-align
            \line {Мелодия 3 }
            \vspace #-0.6
            \center-align
            \line \fontsize #-3 { Melodia 3 }
            \vspace #-0.8
            \center-align
            \line \fontsize #-3 { " " }
          }
        }

        \midi{}

      } % score

     

      \markup \fontsize #+2.5 {
        \hspace #1
        \override #'(baseline-skip . 2.4) % affects space between column lines
        \column {


          \line {   2. Когато се денят пробужда,}
          \line {   "   " долавяме небесен зов – }
          \line {   "   " вълнува ни и вдъхновява}
          \line {   "   " за светъл и красив живот.}
          \line {   "   " Ще дойде той след бурите, борбите.}
          \line {   "   " Земята ще залее мир.}
          \line {   "   " Могъща сила е Доброто,}
          \line {   "   " ний вярваме – ще победи.}
        }

        \hspace #2
        \override #'(baseline-skip . 2.4)
        \column {
          \line {   2.  Kogato se denyat probuzhda,}
          \line {   "   " dolavyame nebesen zov – }
          \line {   "   " valnuva ni i vdahnovyava}
          \line {   "   " za svetal i krasiv zhivot.}
          \line {   "   " Shte doyde toy sled burite, borbite.}
          \line {   "   " Zemyata shte zalee mir.}
          \line {   "   " Mogashta sila e Dobroto,}
          \line {   "   " niy vyarvame – shte pobedi.}
        } %column
      } % markup

      \pageBreak

      % include foreign translation(s) of the song
      \include "lyrics_de/188_melodie_3_lyrics_de.ly"

    } % bookpart
