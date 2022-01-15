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

    \new Voice \absolute  {
      \clef treble
      \key d \minor
      \time 3/4  \tempo \markup {
        % make tempo note smaller
        \concat {
          "Andante " \normal-text { "(" }
          \teeny \general-align #Y #DOWN \note #"8" #0.8
          \normal-text { " = 60)" }
        }
      }
      \autoBeamOff
      \partial 4
      d'8 d' | g'8 ([ a' ]) a'2 | \time 2/4 bes'8 ([ a' ])  bes' ([ c'' ])  | \time 4/4 bes'4 a'2 a'8 a' | \break
      d''4. d''8 c'' ([ d'' ]) d'' ([ c'' ]) \time 3/4  bes'4 a'2 | \time 4/4  a'8 ([ bes' ]) c'' ([ d'' ]) c'' bes' a' g' \break |
      \time 3/4  f'8 ([ g' ]) a'2 | \time 6/4  bes'4. a'8 bes' ([ a' ]) bes' ([ c'' ]) d'' ([ c'' ]) bes' ([ a' ]) \break |
      \time 3/4  |a'8 ([ g'8 ]) a'2 | \time 6/4  d'4. e'8 f'4\staccato e'4\staccato d'\staccato cis'\staccato | \time 4/4  e'2 d' | \bar "|." \break
    }

    \addlyrics {
      Страд -- на
      ду -- шо, ти коп -- не -- еш, за как -- во го --
      риш и тле -- еш? Сло -- во -- то Ти, Бо -- же,
      ча -- кам и о -- бил -- на -- та Ти ми -- лост,
      за тях стра -- дам и коп -- не -- я.}
      \addlyrics {
        Strad -- na
        du -- sho, ti kop -- ne -- esh, za kak -- vo go --
        rish i tle -- esh? Slo -- vo -- to Ti, Bo -- zhe,
        cha -- kam i o -- bil -- na -- ta Ti mi -- lost,
        za tyah stra -- dam i kop -- ne -- ya.}

        \header {
          title = \markup \column \normal-text \fontsize #2.5 {
            \center-align
            \line { Страдна душо }
            \vspace #-0.6
            \center-align
            \line \fontsize #-3 { Stradna dusho }
            \vspace #-0.8
            \center-align
            \line \fontsize #-3 { " " }
          }
        }

        \midi{}

      } % score

      \pageBreak

      \markup \fontsize #+2.5 {
        \hspace #1
        \override #'(baseline-skip . 2.4) % affects space between column lines
        \column {
          \line {   2. И гладувам, и жадувам,}

          \line {   "   " тях очаквам денонощно.}

          \line {   "   " Ти ме, Боже, благославяй,}

          \line {   "   " при Теб близо аз да бъда}

          \line {   "   " и утеха в Теб да найда.}
          \line { " " }

          \line {   3. Твоя светъл лик да гледам}

          \line {   "   " и величието Твое;}

          \line {   "   " да науча Теб да любя.}

          \line {   "   " таз Любов към Тебе, Боже,}

          \line {   "   " да намеря мощна сила.}

          \line { " " }

          \line {   4. Във подвизи – съвършенство}

          \line {   "   " да познавам милостта Ти,}

          \line {   "   " превеликата Ти тайна,}

          \line {   "   " що разкрива на човека}

          \line {   "   " суетата на живота.}
          \line { " " }
          \line {    5. Всичко грешно на Земята}

          \line {   "   " е преходно, мимолетно.}

          \line {   "   " Само Ти си вечен, Боже,}

          \line {   "   " Тебе хвалим, Тебе славим,}

          \line {   "   " Теб ще славят вековете.}
        }

        \hspace #5
        \override #'(baseline-skip . 2.4)
        \column {
          \line {   2. I gladuvam, i zhaduvam }

          \line {   "   "tyah ochakvam denonoshtno.}

          \line {   "   "Ti me, Bozhe, blagoslavyay,}

          \line {   "   "pri Teb blizo az da bada}

          \line {   "   "i uteha v Teb da nayda.}

          \line { " " }

          \line {  3. Tvoya svetal lik da gledam}

          \line {   "   "i velichieto Tvoe,}

          \line {   "   "da naucha Teb da lyubya.}

          \line {   "   "taz Lyubov kam Tebe, Bozhe,}

          \line {   "   "da namerya moshtna sila.}

          \line { " " }

          \line {  4. Vav podvizi – savarshenstvo}

          \line {   "   "da poznavam milostta Ti,}

          \line {   "   "prevelikata Ti tayna,}

          \line {   "   "shto razkriva na choveka}

          \line {   "   "suetata na zhivota.}

          \line { " " }

          \line {  5. Vsichko greshno na Zemyata}

          \line {   "   "e prehodno, mimoletno.}

          \line {   "   "Samo Ti si vechen, Bozhe:}

          \line {   "   "Tebe hvalim, Tebe slavim,}

          \line {   "   "Teb shte slavyat vekovete.}
        } %column
      } % markup

      \pageBreak

      % include foreign translation(s) of the song
      \include "lyrics_de/029_stradna_dusho_lyrics_de.ly"

    } % bookpart


    %{
convert-ly (GNU LilyPond) 2.20.0  convert-ly: Processing `'...
Applying conversion: 2.19.2, 2.19.7, 2.19.11, 2.19.16, 2.19.22,
2.19.24, 2.19.28, 2.19.29, 2.19.32, 2.19.40, 2.19.46, 2.19.49,
2.19.80, 2.20.0
    %}
