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

    \new Staff <<

      \new Voice = "voice1" \absolute  {
        \clef treble
        \key c \major
        \time 3/4
        \tempo \markup {
          % make tempo note smaller
          \concat {
            "Andante" \normal-text { " (" }
            \teeny \general-align #Y #DOWN \note #"4" #0.8
            \normal-text { " = 66)" }
          }
        }
        \autoBeamOff
        \partial 4
        \voiceOne % stems p

        \slurDown e'8 ([f'8])  g'2 g'4 |  a'4 a' a' | g'2 f'4 | e'2 e'8 ([ f' ]) | \break

        g'2 g'4 | \hideNotes c''2 d''4 | \unHideNotes
        \once \override NoteColumn.force-hshift = #1.5 e''4
        e'' \hideNotes d''4 | c''2 c''8 d'' | \break

        \repeat volta 2 {
          e''2 \unHideNotes e''8 e'' | \hideNotes e''4 d'' c'' | \unHideNotes b'4. a'8 \slurDashed b' (a') | g'2 e'8. f'16 | \break
          \unHideNotes g'4 c' d' | e' e' d' |
        }  \alternative {
          { c'2 \hideNotes c''8 d'' | \unHideNotes }
          { c'2 \bar "|." }
        }
      }

      \new Voice = "voice2" \absolute  {
        \clef treble
        \key c \major
        \time 3/4
        \autoBeamOff
        \partial 4
        \voiceTwo % stems down

        \hideNotes e'8 [f'8]  g'2 g'4 | \unHideNotes a'2 a'4 | \hideNotes g'2 f'4 | \unHideNotes e'4 e'4 \hideNotes e'8 [ f' ] | \break

        g'2 g'4 | \unHideNotes c''2 d''4 | e''2 d''4^\fermata | c''2 \slurDashed \slurUp c''8 ([d'']) | \break

        \repeat volta 2 {
          e''2 e''4 | e''4 (d'') c'' | \hideNotes b'4. a'8 b' a' | g'2 e'8. f'16 \break |
          g'4 c' d' | \unHideNotes e'2 \hideNotes d'4 |
        }  \alternative {
          { c'2 \unHideNotes c''8 ([ d'' ]) | \hideNotes }
          { c'2 \bar "|." }
        }
      }


      \new Lyrics \lyricsto "voice1" {
        "1.Пред" Теб при -- па -- да -- ме, Гос -- по -- ди, днес
        с~чис -- ти, тре -- пет -- ни _ ду -- ши. Във _
        пе -- сен из -- ли -- _ ва -- ме \set ignoreMelismata = ##t сър -- ца -- та си и зо --
        вем Те, Пре -- свя -- тий, про -- сти! Във _ сти!
      }
      \new Lyrics \lyricsto "voice1" {
        "1.Pred" Teb pri -- pa -- da -- me, Gos -- po -- di, dnes
        s~chis -- ti, tre -- pet -- ni _ du -- shi. Vav _
        pe -- sen iz -- li -- _ va -- me \set ignoreMelismata = ##t sar -- tsa -- ta si i zo --
        vem Te, Pre -- svya -- tiy, pro -- sti! Vav _ sti!
      }

      \new Lyrics \lyricsto "voice2" {
        "2.За" -- бра -- вяй гре -- хо -- ве -- те на -- ши, о --
        бил -- но нас бла -- го -- сло -- ви. Ца --
        рю \set ignoreMelismata = ##t пре -- бла -- гий на свет -- ли -- те ду -- ши, в~цар -- ство --
        то Си ни при -- е -- ми! Ца -- _ ми!
      }
      \new Lyrics \lyricsto "voice2" {
        "2.Za" -- bra -- vyay gre -- ho -- ve -- te na -- shi, o --
        bil -- no nas bla -- go -- slo -- vi. Tsa --
        ryu \set ignoreMelismata = ##t pre -- bla -- giy na svet -- li -- te du -- shi, v~tsar -- stvo --
        to Si ni pri -- e -- mi! Tsa -- _ mi!
      }

      \new Lyrics \lyricsto "voice1" {
        "3.Там" да те сла -- вим през веч -- ност -- та, е --
        дин Ти за слу -- жа -- ваш хва -- ла. О -- гра --
        ди ни _ с~ми -- _ ло -- сти -- те Тво -- и, о -- за --
        ри ни с~Твой -- та Свет -- ли -- на! О -- гра -- на!
      }
      \new Lyrics \lyricsto "voice1" {
        "3.Tam" da te sla -- vim prez vech -- nost -- ta, e --
        din Ti za slu -- zha -- vash hva -- la. O -- gra --
        di ni _ s~mi -- _ lo -- sti -- te Tvo -- i, o -- za --
        ri ni s~Tvoy -- ta Svet -- li -- na! O -- gra -- na!
      }

    >>

    \header {
      title = \markup \column \normal-text \fontsize #2.5 {
        \center-align
        \line { Сърдечен зов }
        \vspace #-0.6
        \center-align
        \line \fontsize #-3 { Sardechen zov}
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

    }

    \hspace #5
    \override #'(baseline-skip . 2.4)
    \column {

    } %column
  } % markup



  % include foreign translation(s) of the song
  \include "lyrics_de/039_sardechen_zov_lyrics_de.ly"

} % bookpart
