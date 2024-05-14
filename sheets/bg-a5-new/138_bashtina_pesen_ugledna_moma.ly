\version "2.24.3"

% include paper part and global functions
\include "include/globals.ily"
\bookpart {
  \label #'ref138
  \tocItem \markup "Бащина песен – Угледна мома"
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
      \if \should-print-page-number \fromproperty #'page:page-number-string
    }
    evenFooterMarkup = \markup
    \fill-line {
      \if \should-print-page-number \fromproperty #'page:page-number-string
      ""
    }

    left-margin = 1.5\cm
    right-margin = 1.5\cm
    top-margin = 1.6\cm
    bottom-margin = 1.2\cm
    ragged-bottom = ##t % do not spread the staves to fill the whole vertical space

    % change distance between staves
    system-system-spacing =
    #'((basic-distance . 15)
       (minimum-distance . 6)
       (padding . 1)
       (stretchability . 12))
  }
  \score {
    \layout {
      indent = 0.0\cm % remove first line indentation
      ragged-last = ##f % do spread last line to fill the whole space
      \override Staff.BarLine.thick-thickness = #4 %make the end and repeat bars thiner
      \override Score.VoltaBracket.font-size = #-1.7 % make the repeat number fontsize smaller
      

      \context {
        \Score
        \omit BarNumber %remove bar numbers
        \override MetronomeMark.font-size = #1.5 % increase the tempo fontsize
        \override TupletNumber.font-size = #0.4 % increase the triol number

      } % context

      \context {
        % change staff size
        \Staff
        \override StaffSymbol.thickness = #0.5
        \override BarLine.hair-thickness = #1
        %\override StaffSymbol.ledger-line-thickness = #'(0 . 0)
      }

      \context {
        % adjust space between staff and lyrics and between the two lyric lines
        \Lyrics
        \override VerticalAxisGroup.nonstaff-relatedstaff-spacing = #'((padding . 1))
        \override VerticalAxisGroup.nonstaff-nonstaff-spacing = #'((minimum-distance . 2))
        includeGraceNotes = ##t
      }
    } % layout

    \new Voice  \relative c' {
      \clef treble
      \key g \minor
      \time 8/16
      \tempoFunc "Lento" 8 "112"
      \autoBeamOff
      g'8. a8 f(e16) |
      g8. g8(g8.) |
      fis8. ees8 d8. |
      ees8. c8(c8.) | \break

      ees8. ees8 ees8. |
      g8. g8(g8.)  |
      fis8. ees8 ees8.  |
      fis8. ees8 c8.  | \break

      d8. d8(d8.)  |
      \bar ".|:" \time 5/16 ees8 c8.  |
      ees8 g8. |
      fis8 ees16 c8  |
      d8 d8. | \bar ":|.:" \break

      \tempoFunc "Poco più mosso" 8 "120"
      \key f \minor
      c'8 b8[(aes16)] |  |
      c16 c b aes f |  |
      b8 aes([f16])  |
      g8 g8. | \bar ":|."

      \time 8/16 \break
      \tempo "Meno mosso" c,8. d8(ees8.) |
      fis8. g8 (g8.) |
      fis8. ees8 fis8. |
      ees8 d16 ees8 c8. |
      ees8. fis8 g8. | \break

      fis8.ees8(c8.) |
      d8. d8(d8.\fermata) | \bar "||"
      \time 7/16
      \key c \major
      \tempoFunc "Allegretto" 8 "160"
      g8 a f e16 |
      g8 g f8. | \break

      g8 a f e16 |
      g8 f(f8.) |
      e8 g f(e16) |
      \tempo "rall." f8 e c8. |
      d4 d8. | \bar "||" \break

      \tempo "a tempo"
      c8 d16[(e)] f8 e16 |
      f8 f e8. |
      g8 a f e16 |
      g4 g8. |
      c,8 d16[(e)] f8(e16) | \break

      \tempo "rit."
      f8 e c8. |
      d4 d8. | \bar "||"
      \key g \minor
      \time 8/16
      \tempo "Andante sostenuto"
      fis8 g16 a8~ a8. |
      c8. bes8 a8. |
      a8. g8 fis8. | \break

      a8. a8~ a8.\fermata |
      bes8. bes8~ bes8.\fermata |
      a8. g8 g8. |
      a8. a8~ a8. |
      g8. g8~ g8. | \break

      fis8 ees16 d8 c8. |
      d8 ees16 fis8 fis8.\fermata |
      c8. d8(ees8.) |
      g8. fis8 ees8. |
      fis8. g8~ g8. | \break

      fis8. ees8 c8. |
      d8. d8~ d8. | \bar "||"
      \key c \major
      \time 5/16
      \tempo "Allegretto"
      c8 d e 16 |
      f8 e8. |
      f8 e8. | \break

      f16[(e)] d8 c16 |
      e8 e8.|
      g8 fis ees16 |
      fis8 ees8 c16 |
      ees8~ ees8. | \break

      fis8 ees8 c16 |
      d8 d8. | \bar "||"
      \key g \minor
      \time 8/16
      \tempo "Andante sostenuto"
      bes'8. bes8 bes8. |
      a8[(bes16)] c8~ c8. |
      bes8. a8 g8. | \break
      a8. g8 fis8. |
      ees8. g8 g8.\fermata |
      g8. bes8 bes8. |
      bes8. g8~ g8. |
      bes8. a8 g8. | \break

      a8. a8~ a8. |
      g8. a8 g8. |
      fis8. ees8~ ees8. |
      fis8. g8 g8. |
      fis8. fis8~ fis8. | \break

      ees8. g8~ g8. |
      fis8. ees8~ ees8. |
      fis8. ees8(c8.) |
      d8. d8~ d8. |
      g8. g8~ g8. | \break

      bes8. bes8~ bes8. |
      c8. bes8~ bes8. |
      a8. g8~ g8.\fermata |
      bes8. bes8 g8. |
      a8. a8~ a8.\fermata | \break

      \bar ".|:-||"  \tempo "Più mosso"
      g8. g8~ g8. |
      fis8. ees8~ ees8. |
      fis8. ees8 c8. |
      d8. d8~ d8. | \bar ":|."

      \key c \major
      \time 5/16
      \tempo "Allegretto"
      c8 d(e16) | \break

      f8 e8. |
      g8 f8(e16) |
      f8 e8. |
      g8 a f16 |
      f8 e8. |
      g8 a8. |
      f8 e8. | \break

      f8 e c16 |
      d8 d8. |
      \tempo "rall."
      e8 g8. |
      f8 e8. |
      f8 e c16 |
      d8 d8. | \bar "||"
      \time 8/16
      \key g \major
      \break

      \tempo "Andante sostenuto"
      d'16\fermata d d d8 d8. |
      e8. c8 b8. |
      d8. c8 b8. |
      b8. g8~ g8. \break

      b8. d8 d8. |
      c8. b8~ b8. |
      c8. b8 g8. |
      a8. a8~ a8. |
      c8. c8 d8. | \break

      e8. d8~ d8. |
      cis8. \stemUp bes8(a8.) \stemNeutral |
      bes8. g8~ g8. |
      bes8 bes16 bes8 bes8. |
      bes8. g8~ g8. | \break
      bes8. d8~ d8. |
      cis8. bes8 g8. |
      a8. a8~ a8. |  \bar "||"
      \key c \major
      \time 5/16
      \tempo "Più mosso" e'8 e8. |
      d16[(e)] c8. | \break
      d8 d8. |
      d16 e c8  b16 |
      c8 d8. |
      b8 g8. |
      a8~ a8. |
      a8~ a8. | \bar "||" \break

      e'16\staccato r16 d8\staccato r16 |
      e16\staccato r16 c8\staccato r16 |
      d16\staccato r16 e8\staccato r16 |
      c16 b c8 b16 |
      b16\staccato r16 d8\staccato r16 | \break

      c16\staccato r16 b8\staccato r16 |
      a8~ a8. |
      a8~ a8. |  \bar "||"
      \key a \minor
      \time 9/16
      \tempo "Lento" e8 e e e8. |
      a8 g f e8. | \break

      g8(f) e8~ e8. |
      c'8 b b a8. |
      e8 e g f8. |
      f4 e8~ e8. | \break

      e4 c'8 b8.\fermata |
      \tuplet 3/2 { a,16 b c } e f f8\fermata e8.\fermata |
      \time 4/4 c'4 b a e8. e16  \break |

      c'4 b2 e,4 |
      \time 2/4 g4 f8. d16 |
      \time 3/4 e4   e2 \mark\markup{ \column { \hspace #0 \center-align \normalsize \musicglyph #"scripts.ufermata"  \center-align \normalsize \musicglyph #"scripts.caesura.straight" }}
      |
      \bar "|"
      \time 3/4  | % 149

      e'16 --e16 --e16 --
      e16 --a2   \break | % 151
      g16 f16 e16 d16
      e2 | % 152

      \time 4/4  | % 152
      g4.f8 e8 ( [d8 ] )
      c8 d8  | % 153
      e4 e2. \bar "||" \break
      \tempo "Allegretto"
      \time 5/16  | % 154
      e8 d8. | % 155
      e8 c8. | % 156
      d16 e16  c8 b16 |% 158
      d8 c8. | c8 b8 a16 | \break
      b8  g8. |
      \tempo"rall."b8 d8. | % 161
      cis8 bes8. | % 162
      cis16 bes16  a8  g16 | % 163
      a8  a8. \bar "||"

      \break \repeat volta 1 {
        | % 164
        \bar ".|:-||"  \key g \major \time 9/16 | % 164
        \tempo"a tempo" d8 e16 ( [
        fis16 ) ] g8 fis8. | % 165
        g8 e8 e16 ( [ \stemDown
        fis16 ) ]d8. | % 166
        d8 e16 ( [d16 ) ] \stemUp
        c8 b8. \break | % 167
        g8 a16 ( [  b16 ) ]c16 (
        [d16 ) ]c8. | % 168
        d8 e16 ( [d16 ) ] \stemUp
        c16 ( [d16 ) ]b8. | % 169
        g8  a8  a8  a8. \bar ":|."
      }


    }

    \addlyrics {
      От ста -- ро вре -- ме, __ син -- ко, е знай -- но --
      ху -- ба -- ва мо -- ма __ на све -- тъл ден се по --
      зна -- ва, __ ко -- га Слън -- це сут -- рин из -- гря -- ва.
      Тя е __ ра -- но -- буд -- ни -- ца, ра -- но __ ста -- ва
      и с~кър -- ча -- зи __ на из -- во -- ра о -- ти -- ва, и во -- да
      си на -- ли -- ва. __ Тъй, пъл -- на и ве -- се -- ла,
      тя до -- ма се връ -- ща, __ май -- ка си ми -- ло прег -- ръ -- ща.
      Тъй, пъл -- на и ве -- се -- ла,  тя до -- ма се връ -- ща, май -- ка __ си __
      ми -- ло прег -- ръ -- ща. Ху -- ба -- ва __ мо -- ма се, син -- ко, по --
      зна -- ва, __ ко -- га __ ло -- зе ко -- па -- е __ и то __
      и -- "зо-" -- бил -- но "гроз-" -- де да -- ва. Ло -- зе __ мо -- "мин-" -- ски ръ -- це __
      доб -- ре по -- зна -- ва, __ ло -- зе мо -- мин -- ски ръ -- це
      до -- бре по -- зна -- ва, ло -- зе мо -- мин -- ски ръ -- це __
      до -- бре по -- зна -- ва. Ху -- ба -- ва мо -- ма __ се, син -- ко,
      на ни -- ва по -- зна -- ва, ко -- га ръ -- ко -- и __ ди -- га и
      сла -- га, __ и на  зе -- мя ги __ до -- бре по -- ла -- га, __
      и на __ Бо -- га __  хва -- ла __ да -- ва. __ Тя е, __
      син -- ко, __ гла -- со -- ви -- та, __  лич -- на пе -- ви -- ца;
      не -- я __ жи -- то __ до -- бре по -- зна -- ва. __ Тя е, __
      син -- ко, гла -- со -- ви -- та, лич -- на пе -- ви -- ца; не -- я жи -- то
      до -- бре по -- зна -- ва, не -- я жи -- то до -- бре по -- зна -- ва.
      Ху -- ба -- ва мо -- ма се, син -- ко, до -- бре по -- зна -- ва, __
      ко -- га на гум -- но __  жи -- то от -- вя -- ва __ и във ре --
      ше -- то __ го пре -- ся -- ва, __ "в~жит-" -- "ни-" -- ци го ту -- ря __
      и на __  бед -- ни хляб да -- ва. __ Не -- я "всич-" -- ки,
      мал -- ки и го -- ле -- ми, до -- бре я по -- зна -- ват, __
      не -- я всич -- ки, мал -- ки и го -- ле -- ми, до -- бре
      я по -- зна -- ват. __ Ум -- на мо -- ма, син -- ко, се по --
      зна -- ва, __ ко -- га кни -- га във ръ -- це си взе -- ма __
      и скри -- то бъ -- де -- ще раз -- га -- да -- ва. Тя всич -- ко във жи --
      во -- та на мяс -- то по -- ста -- вя. "Ху-" -- "ба-" -- ва "мо-" -- ма,
      "син-" -- ко, е "ро-" -- са, що зе -- мя о -- ро -- ся ва.
      Тя е ан -- гел, що от Го -- ре и -- де, при хо -- ра
      сли -- за  и в~до -- ма им мир и ра -- дост вна -- ся.
      Тя е свет -- ла кат зо -- ра -- та, тя е ми -- ла
      кат во -- да -- та, тя е до -- бра кат хра -- на -- та.
    }

    \header {
      title = \titleFunc #'ref_desc_5 "Бащина песен – Угледна мома" "Baština pesen – Ugledna moma"
    }

    \midi{}

  } % score

} % bookpart
