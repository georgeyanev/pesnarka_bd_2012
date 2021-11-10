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
      \key c \minor
      \time 4/4
      \tempo \markup {
        % make tempo note smaller
        \concat {
          "Moderato " \normal-text { "(" }
          \teeny \general-align #Y #DOWN \note #"4" #0.8
          \normal-text { " = 72)" }
        }
      }
      \autoBeamOff
      \partial 4
      c | c2 d4 es | c g'2 g4 |^\markup { \large \italic "   sosten."}  bes8 as g f as2 | ^\markup { \large \italic "a tempo"} g2. g4 | \break

      c,4. c8 d2 (| d4) d f8 es d c | d4 d2 d4 |\break

      f8.^\markup { \large \italic "a tempo"} f16 g8. g16 c4. \fermata c8 | \time 3/4 bes as g f as4 \fermata | g2 f4 | \break

      f4. g8 es4 | c2 d4 | c2 b4 | c2 c4 | \repeat volta 2 {

         \tempo \markup {
        % make tempo note smaller
        \concat {
          "Allegro vivace " \normal-text { "(" }
          \teeny \general-align #Y #DOWN \note #"2." #0.8
          \normal-text { " = 50)" }
        }
      } c8 -> d es d c b | |\break

        c -> d es d c  b | c -> d es d c 4 | \break

        g'2. (|g4) f f8 g8 | as g f e f g | \break

        as8 g f e f g | as g f4 c'4 | c2. (| c4) c c | \break

        f -> es d | es -> d c | b -> c d | c2. ( | c4)  c c  | \break

        f -> es d | g -> es c | b c d |
        % Не можах да измисля алтернативата...
        c2. ( | c4)  r4 c4  |
      }  c2. \bar "||"  \break

      \repeat volta 2 {\time 4/4     \tempo \markup {
        % make tempo note smaller
        \concat {
          "Moderato " \normal-text { "(" }
          \teeny \general-align #Y #DOWN \note #"4" #0.8
          \normal-text { " = 72)" }
        }
      }c4. g8 bes as g f | as2 g4. f8 | f g e2 d4 | c2 r4  }





    }

    \addlyrics {
      Бях жи -- те -- но зър -- но, за -- ро -- ве -- но в~зе -- мя -- та.

      Във сън дъл -- бок, жи -- во -- та не поз -- на -- вах.

      Но дой -- де лъч, при мен до -- стиг -- на свет -- ли -- на -- та

      и ме съ -- бу -- ди със сво -- я зов.

      От жи -- те -- но зър -- но аз ста -- нах мал -- ка птич -- ка,

      в~въз -- ду -- ха да хвър -- кам.

      Днес -- ка за пър -- ви път, до -- бре пре -- ме -- не -- на,

      на ло -- зе -- на пръч -- ка кац -- нах и от слад -- ко -- то гроз -- де

      за пръв път хап -- нах, и от слад -- ко -- то гроз -- де

      за пръв път хап -- нах. От нах.



      Кол -- ко ху -- бав е жи -- во -- тът, то -- га -- ва си ка -- зах.}
      \addlyrics {
        Byah zhi -- te -- no zar -- no, za -- ro -- ve -- no v~ze -- mya -- ta.

        Vav san dal -- bok, zhi -- vo -- ta ne poz -- na -- vah.

        No doy -- de lach, pri men do -- stig -- na svet -- li -- na -- ta

        i me sa -- bu -- di sas svo -- ya zov.

        Ot zhi -- te -- no zar -- no az sta -- nah mal -- ka ptich -- ka,

        v~vaz -- du -- ha da hvar -- kam.

        Dnes -- ka za par -- vi pat, do -- bre pre -- me -- ne -- na,

        na lo -- ze -- na prach -- ka kats -- nah i ot slad -- ko -- to groz -- de

        za prav pat hap -- nah, i ot slad -- ko -- to groz -- de

        za prav pat hap -- nah. Ot nah.



        Kol -- ko hu -- bav e zhi -- vo -- tat, to -- ga -- va si ka -- zah.}

        \header {
          title = \markup \column \normal-text \fontsize #2.5 {
            \center-align
            \line { Житно зърно}
            \vspace #-0.6
            \center-align
            \line \fontsize #-3 { Zhitno sarno }
            \vspace #-0.8
            \center-align
            \line \fontsize #-3 { " " }
          }
        }

        \midi{}

      } % score



      % include foreign translation(s) of the song
      \include "lyrics_de/176_zhitno_zarno_lyrics_de.ly"

    } % bookpart
