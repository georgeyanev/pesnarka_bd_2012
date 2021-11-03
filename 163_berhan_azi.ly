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
      ragged-last = ##t % do not spread last line to fill the whole space
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
      \key c \major
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
      a4 dis8([e]) e2 | \noBreak
    f8([e]) f[gis] f4 e | \noBreak
    \acciaccatura { dis8 } e2 \acciaccatura { dis'8 } e2 | \noBreak
    e,16([f) gis a] f4.. e16 a([gis f e]) | \break
    
    dis4 c b a | \noBreak
    gis2. r4 | \noBreak
    \time 5/4 e'4 dis a'8([gis]) f[e] d([e]) | \time 2/4 \break
    
    c2 | \noBreak
    \time 5/4 dis16([e) f e] gis8[f] e4..( e16\tenuto) a([gis f e]) | \noBreak
    \time 4/4 \acciaccatura { dis8 } e2 \acciaccatura { dis'8 } e2 | \break
    
    \tempo "poco a poco accelerando" \tuplet 6/4 { gis,16([a gis f e dis]) } \tuplet 6/4 { gis([a gis f e dis]) } \tuplet 6/4 { gis([a gis f e dis]) } \tempo "rit." \tuplet 6/4 { gis([a gis f e dis]) } | \noBreak
    \time 4/4 \acciaccatura { dis8 } e2 \acciaccatura { dis'8 } e2 | \noBreak
    \tempo "a tempo" a,,8_\markup { \bold risoluto } ([b]) c[dis] c4(b) \time 5/4 \break
    
    \acciaccatura { a8 } fis'4.\fermata( \tuplet 3/2 { e16[fis e]) } dis8[c] b2 | \noBreak
    \tempo "poco a poco accelerando" c16([dis c b]) c([dis c b]) c([dis c b]) \tempo "rit." b8.(a16) a4 | \time 4/4 \break
    
    \repeat volta 1 {
      e''16[f gis a] b8 d,4. \acciaccatura { c16[d] } c4 | \noBreak
      \time 2/4 b2 | \noBreak
      \time 5/4 a,4 gis f'8.([e16]) e2 | \noBreak
      \time 4/4 d16([e) f a] gis4 f e8.([d16]) | \time 2/4 \break
      
      e2 | \noBreak
    }
    \set Score.doubleRepeatType = #":|.|:"
    \repeat volta 1 {
      \time 3/4 \tempo "poco a poco accelerando" \tuplet 3/2 { a8([f e] } \tuplet 3/2 { a[f e] } \tuplet 3/2 { a[f e]) } | \noBreak
      d4 d2 \noBreak
      \tuplet 3/2 { a'8\p([ f e] } \tuplet 3/2 { a[f e] } \tempo "rit." \tuplet 3/2 { a[f e]) } | \noBreak
      dis4 e2 
    }
    \time 9/16 \break
    
   \tempo \markup {
        % make tempo note smaller
        \concat {
          "Allegretto" \normal-text { " (" }
          \teeny \general-align #Y #DOWN \note #"4" #0.8
          \normal-text { " = 108)" }
        }
      }
    dis16[dis] e[e] e8 a16[gis f] | \noBreak
    \acciaccatura { f[gis] } f[e] f[gis!] f8 e16[e e] | \noBreak
    e[f] gis[a] \acciaccatura { f[gis!] } f8 e16[e gis] | \break
    
    \acciaccatura { f[gis] } f[e] dis[e] c8 c16[c c] | \noBreak
    \repeat volta 1 {
      b[c] dis[e] \acciaccatura { c[dis!] } c8 b16[b dis] | \break
      
      \acciaccatura { c[dis!] } c[b] b[gis]  a8 a16[a a] | \noBreak
    }
    \repeat volta 1 {
      g![c] b[g] a8 a16[a a] | \noBreak
      g[c] b[g] a8 a16[a a] | \bar "|."
    }
    }

    \addlyrics {}
    \addlyrics {}

    \header {
      title = \markup \column \normal-text \fontsize #2.5 {
        \center-align
        \line { Берхан-Ази }
        \vspace #-0.6
        \center-align
        \line \fontsize #-3 { Berhan-Azi }
        \vspace #-0.8
        \center-align
        \line \fontsize #-3 { " " }
      }
    }

    \midi{}

  } % score


  % include foreign translation(s) of the song
  %\include "lyrics_de/lyrics_de_file_name.ly"

} % bookpart
