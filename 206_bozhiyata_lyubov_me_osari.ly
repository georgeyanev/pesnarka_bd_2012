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

    \new Voice \absolute{
      \clef treble
      \key a \major
      \time 4/4
      \tempo \markup {
        % make tempo note smaller
        \concat {
          "Andante " \normal-text { "(" }
          \teeny \general-align #Y #DOWN \note #"4" #0.8
          \normal-text { " = 66)" }
        }
      }
      \autoBeamOff
      \partial 4
      e'4 ^\mf  | % 2
      cis''4  b'4  a'4  b'8 ( [ ^\<
      cis''8 ) ] | % 3
      e''4 ( ^\! ^\>  d''4. ) \! r8  e'4^\p | % 4
      b'4  a'4  gis'4  fis'8 ( [
      gis'8 ) ] \break| % 5
      \time 3/4  | % 5
      a'2  e'8  ^\p  cis'8   | % 6
      \time 4/4  | % 6
      fis'2 --  e'4   \breathe cis'4 | % 7
      \time 6/4  | % 7
      e'4  d'4  cis'4  b4  cis'2 \bar
      "||"
      \time 4/4  \break | % 8
      | % 8
      \tempo \markup {
        % make tempo note smaller
        \concat {
          "Meno mosso " \normal-text { "(" }
          \teeny \general-align #Y #DOWN \note #"4" #0.8
          \normal-text { " = 50)" }
        }
      }
      e'4.  d'8  cis'4  b4 | % 9
      d'4  cis'8 ( [  b8 ) ]  e'4.  e'8
      |
      \time 5/4  |
      gis'4  fis'8   e'8  b'4  a'8
      fis'8 ^\>  a'8  b'8
      \break | % 11
      a'2 ^\! ^\p r4 r2 \bar "||"
      \time 4/4   | % 12
      \tempo \markup {
        % make tempo note smaller
        \concat {
          "Più mosso" \normal-text { " (" }
          \teeny \general-align #Y #DOWN \note #"4" #0.8
          \normal-text { " = 92)" }
        }
      } e'4 ^\mf

      e'4
      e'4.   cis'8 | % 13
      b4 ^\<  a4  b4  cis'4 ^\!  | % 14
      \time 5/4  | % 14
      e'2 ^\>  d'4 ^\! r4  e'4 ^\mp \break | % 15
      \time 3/4  | % 15
      cis''2  b'8   a'8  | % 16
      \time 4/4  | % 16
      gis'4  fis'4  fis'4  fis'4 | % 17
      \time 5/4  | % 17
      fis'4. ( ^\<  gis'8 ) ^\!  e'2 ^\>  d'8 \breathe
      ^\!  ^\p  d'8   \break | % 18
      fis'2  e'4 r4  e'4 ^\mf | % 19
      \time 6/4  | % 19
      e''2  cis''8   a'8   cis''4
      b'4  fis'8  ^\p  gis'8 \break |

      b'2  a'2 r4 ^\fermata   \tempo \markup {
        % make tempo note smaller
        \concat {
          "Moderato" \normal-text { " (" }
          \teeny \general-align #Y #DOWN \note #"4" #0.8
          \normal-text { " = 80)" }
        }
      } e'4
      ^\mf | % 21
      \time 4/4  | % 21
      cis''4  b'4  a'4  gis'8 ( [
      fis'8 ) ]  | % 22
      e'2.  fis'8 ( [ ^\p  gis'8 ) ] ^\< \break | % 23
      a'4  b'4  d''8 ( [ ^\!  cis''8 )
      ]  b'8 ( [ ^\>  a'8 ) ] | % 24
      cis''2 (  b'4 ) ^\! ^\mf  cis''8 ( [ ^\<
      dis''8 ) ] | % 25
      e''4 ^\!  cis''4  b'4 ^\>  a'4 | % 26
      gis'4 (  fis'2 ) ^\!  e'4 ^\p ^\< \break | % 27
      fis'4  e'4  b'4 ^\!  a'8 ( [
      gis'8 ) ] | % 28
      a'2.  e'4 ^\p | % 29
      g'4  fis'4  e'4  dis'8 ( [  e'8
      ) ] |
      fis'2.  g'4 ^\mf \break | % 31
      b'4  a'4  c''4  b'8 ( [  a'8
      ) ] | % 32
      d''2.  cis''4 ^\ff  | % 33
      e''4  b'4  a'4  gis'4 | % 34
      a'2.  gis'8 ( [ ^\p  fis'8 ) ] \break | % 35
      e'4  d'4  cis'4  fis'8 ( [  gis'8
      ) ] | % 36
      a'2.  b'8 ( [ ^\pp  cis''8 ) ]
      | % 37
      b'4  a'4  gis'4  fis'8 ( [
      gis'8 ) ] | % 38
      a'2.  b'8 ( [  cis''8 ) ^\fermata ]
      \breathe | % 39
      b'4  a'4  gis'4  fis'8 ( [ ^\ppp
      gis'8 ) ] |
      a'2. r4 \bar "|."
    }

    \addlyrics {
      Бо -- жест -- ве -- на Лю -- бов
      ду -- ша ми раз -- ши -- ри
      и из -- пъл -- ни сър -- це -- то
      ми с~лъ -- чи. От дъл -- бо -- ки
      глъ -- би -- ни пов -- диг -- на
      Ду -- ха ми във ви -- си -- ни на
      кри -- ла -- та си бла -- го -- сло
      -- ве -- ни, от Бо -- жи -- я по --
      глед о -- за -- ре -- ни, о -- за
      -- ре -- ни, от Бо -- жи -- я по --
      глед о -- за -- ре -- ни. Лю -- бов
      ме о -- за -- ри, Лю -- бов
      ме о -- за -- ри.  Ду --
      ша ми раз -- ши -- ри,  __ ду --
      ша ми о -- све  -- ти, ду -- ша
      ми раз -- ши  -- ри, ду -- ша ми
      о -- све -- ти. Ду -- ха ми у --
      кре -- пи и  бла -- гост в~мен
      все -- ли, и  бла -- гост
      в~мен все -- ли, и  бла --
      гост в~мен все -- ли.}
      \addlyrics {
        Bo -- zhest -- ve -- na Lyu -- bov
        du -- sha mi raz -- shi -- ri
        i iz -- pal -- ni sar -- tse -- to
        mi s~la -- chi. Ot dal -- bo -- ki
        gla -- bi -- ni pov -- dig -- na
        Du -- ha mi vav vi -- si -- ni na
        kri -- la -- ta si bla -- go -- slo
        -- ve -- ni, ot Bo -- zhi -- ya po --
        gled o -- za -- re -- ni, o -- za
        -- re -- ni, ot Bo -- zhi -- ya po --
        gled o -- za -- re -- ni. Lyu -- bov
        me o -- za -- ri, Lyu -- bov
        me o -- za -- ri.  Du --
        sha mi raz -- shi -- ri,  __ du --
        sha mi o -- sve  -- ti, du -- sha
        mi raz -- shi  -- ri, du -- sha mi
        o -- sve -- ti. Du -- ha mi u --
        kre -- pi i  bla -- gost v~men
        vse -- li, i  bla -- gost
        v~men vse -- li, i  bla --
        gost v~men vse -- li.}

        \header {
          title = \markup \column \normal-text \fontsize #2.5 {
            \center-align
            \line { Божията Любов ме озари }
            \vspace #-0.6
            \center-align
            \line \fontsize #-3 { Bozhiyata Lyubov me ozari }
            \vspace #-0.8
            \center-align
            \line \fontsize #-3 { " " }
          }
        }

        \midi{}

      } % score



      % include foreign translation(s) of the song
      \include "lyrics_de/206_bozhiyata_lyubob_me_ozari_lyrics_de.ly"

    } % bookpart
