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
      %  ragged-last = ##t % do not spread last line to fill the whole space
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

    \new Voice \absolute {

      \clef treble
      \key g \major
      \time 4/4
      \tempo \markup {
        % make tempo note smaller
        \concat {
          "Largo " \normal-text { "(" }
          \teeny \general-align #Y #DOWN \note #"4" #0.8
          \normal-text { " = 46)" }
        }
      }


      b8. (c'16) a8. b16 c'2 | e'4 d'8. c'16 b2 | g'4 fis'8. g'16 e'4. fis'8 | \break

      \time 3/4 g'8 a'8 b'2 | \time 4/4  c''8. ( d''32 c''32 b'8 c''8 )  a'2 | d''8. c''16 b'8 ( a'8 ) b'2 | \break

      a'4. ( b'8 ) g'2 |fis'8. g'16 e'4. fis'8 g'a' | \time 5/4 b'4 d''8 c'' b' a' b'2 | \break

      d''4 e'' c''8. b'16 c''2 | d''4 b' b'8. a'16 b'2 | \time 4/4 c''4 b' a'8 a' g' g' | \break

      fis'4 e'8 e' fis'4 a'8. a'16 | g'4. a'8 b'4 a'8. a'16 | \time 3/4 g'2 d'8. d'16    \repeat volta 3 {
        g'4 fis' fis'8. e'16 | \break

        e'4 e' d'8. b16 | \time 4/4 e'4 c' c' e'8. d'16 | e'4 b b d'8. a16 | a4 b2 d'4  | \break

        b'4 a'8. g'16 g'4 fis'4 | \time 6/4 fis'4 e'4 e'4 d'8. d'16 g'2 | e'4 b d' c'8. b16 c'2  | \break

        e'4 d'4 b b 8. c'16 d'2 | \time 4/4 e'4 d'4 a4 b8. a16 |
      }


      \alternative {
        \time 3/4
        { g2 d'8. d'16 | }
        { g2. | }
      }







    }

    \addlyrics {
      Бог е Лю -- бов, Бог е Лю -- бов, Бог е Лю -- бов,

      Лю -- бов, Лю -- бов.

      веч -- на, без -- гра -- нич -- на,

      пъл -- на със Жи -- вот,

      Жи -- вот на бла -- ги  -- я Бо -- жи Дух,

      Дух на бла -- гост -- та, Дух на све -- тост -- та,

      Дух на пъ -- лен Мир и Ра -- дост

      за вся -- ка ду -- ша, за вся -- ка ду -- ша.



      Ний ще хо -- дим в_то  -- я път на Свет -- ли -- на -- та,

      на Свет -- ли -- на -- та, на Свет -- ли -- на -- та,

      в_ко -- я -- то ца -- ру -- ва Бо -- жи -- я -- та Лю -- бов,

      Бож -- и -- я -- та Лю -- бов,

      Бо -- жи -- я -- та Лю -- бов,

      Бо -- жи -- я -- та Лю -- бов.}
      \addlyrics {   Bog e Lyu -- bov, Bog e Lyu -- bov, Bog e Lyu -- bov,

      Lyu -- bov, Lyu -- bov.

      vech -- na, bez -- gra -- nich -- na,

      pal -- na sas Zhi -- vot,

      Zhi -- vot na bla -- gi  -- ya Bo -- zhi Duh,

      Duh na bla -- gost -- ta, Duh na sve -- tost -- ta,

      Duh na pa -- len Mir i Ra -- dost

      za vsya -- ka du -- sha, za vsya -- ka du -- sha.



      Niy shte ho -- dim v_to  -- ya pat na Svet -- li -- na -- ta,

      na Svet -- li -- na -- ta, na Svet -- li -- na -- ta,

      v_ko -- ya -- to tsa -- ru -- va Bo -- zhi -- ya -- ta Lyu -- bov,

      Bozh -- i -- ya -- ta Lyu -- bov,

      Bo -- zhi -- ya -- ta Lyu -- bov,

      Bo -- zhi -- ya -- ta Lyu -- bov.}

      \header {
        title = \markup \column \normal-text \fontsize #2.5 {
          \center-align
          \line { Бог е Любов }
          \vspace #-0.6
          \center-align
          \line \fontsize #-3 { Bog e Ljubov }
          \vspace #-0.8
          \center-align
          \line \fontsize #-3 { " " }
        }
      }

      \midi{}

    } % score

    \pageBreak


    % include foreign translation(s) of the song
    \include "lyrics_de/082_bog_e_ljubov_lyrics_de.ly"

  } % bookpart
