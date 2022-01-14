\version "2.22.0"

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
      \key es \major
      \time 2/4
      \tempo \markup {
        % make tempo note smaller
        \concat {
          "Andante" \normal-text { " (" }
          \teeny \general-align #Y #DOWN \note {4} #0.8
          \normal-text { " = 60)" }
        }
      }
      \autoBeamOff

      c'8 ( [ d'8 es'8 c'8 ] | es'2 ) | c'8 ( [ d'8 es'8] ) c'8 | \time 3/4  | as'4 ^\fermata g'2 | \time 5/4 \break 
    
      c''4. b'8 c''8 ( [ as'8 ) ] g'2 | \repeat volta 2 { \time 3/4 g'8 c''8 es''4. d''8 | c''8 g'8 bes'8 ( [ as'8 ) ] g'8 ( [ f'8 ) ] | \time 4/4 \break
    
      es'4 ( d'8. ) es'16 \tempo "      Fine" c'2 } \time 3/4 | es'8. f'16 g'4 c'4 | \time 4/4 | as'4 g'8. fis'16 g'2 | \time 5/4 \break
    
      c''4. ( b'8 ) c''8 as'8 g'2 | \time 4/4 | f'8. ( [ g'16 ) ] es'8. d'16 es'2 | es'8. ( [ f'16 ) ] d'8. es'16 c'2 | \time 3/4 \break
    
      g'8 c''8 es''4. d''8 | c''8 g'8 bes'8 ( [ as'8 ) ] g'8 ( [ f'8 ) ] | \time 4/4 | es'4 ( d'8. ) es'16 c'2  \bar "|."
    
    }

    \addlyrics {
      Аз     във   Жи --
      во -- та ще бла -- гу -- вам. Ду
      -- хът и ду -- ша -- та ми  шеп
      -- нат  то -- ва. И Ду -- хът
      ми шеп -- не то -- ва, шеп -- не
      то -- ва, шеп -- не то -- ва,
      шеп -- не то -- ва. Ду -- хът и
      ду -- ша -- та ми  шеп -- нат
      то -- ва.}
      \addlyrics {
        Az     vav   Zhi --
        vo -- ta shte bla -- gu -- vam. Du
        -- hat i du -- sha -- ta mi  shep
        -- nat  to -- va. I Du -- hat
        mi shep -- ne to -- va, shep -- ne
        to -- va, shep -- ne to -- va,
        shep -- ne to -- va. Du -- hat i
        du -- sha -- ta mi  shep -- nat
        to -- va.}

        \header {
          title = \markup \column \normal-text \fontsize #2.5 {
            \center-align
            \line { Духът ми шепне това }
            \vspace #-0.6
            \center-align
            \line \fontsize #-3 { Duhat mi shepne tova }
            \vspace #-0.8
            \center-align
            \line \fontsize #-3 { " " }
          }
        }

        \midi{}

      } % score

      \markup \halign #-12.4 \raise #3 \override #'(baseline-skip . 2) {
        \column  {
          \line \right-align {
            \bold  { "D. C. al Fine" }
          }
          \line \right-align {
            \bold  { "con ripetizione" }
          }
          \line { " " }
          \line { " " }
          \line { " " }
        }
      }


      % include foreign translation(s) of the song
      \include "lyrics_de/101_duhat_mi_shepne_tova_lyrics_de.ly"

    } % bookpart
