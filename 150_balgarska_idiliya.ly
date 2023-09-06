\version "2.24.2"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref150
  \tocItem \markup "Българска идилия –  Bălgarska idilija"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \relative c' {
      \clef treble
      \key g \minor
      \time 3/4
      \tempoFunc "Lento" 4 "50"
      \autoBeamOff

      d'4.( \tuplet 3/2 { ees16 [f ees]) } d8.([g16]) | \noBreak
      g4..(f16) \tuplet 3/2 { f16( [g f] } ees8~ | \noBreak
      ees16)[a, bes c] d8 d4. | \noBreak
      \tuplet 3/2 { d16( [ees d] } c4.) bes16([c bes a\fermata]) | \break

      bes8 [c] d8 d4.\trill | \noBreak
      \time 4/4 fis,16([g) a g] bes8.\trill([ a16]) c4.\trill( bes8) | \noBreak
      \time 3/4  \tuplet 6/4 { a16([g fis g a bes]) }  a16.([g32) \slurDown g16.(\tieDown bes32~] \stemUp bes4) | \time 4/4 \break

      \tuplet 6/4 { a16\prall([g fis g a bes]) } a8.\prall([g16])  \acciaccatura { g16([ a] } g2) | \bar ":|.|:" \noBreak

      %\set Score.doubleRepeatType = #":|.|:"

      \time 7/16
      \tempo "Allegro"

      d8 g g16([f ees]) | \noBreak
      \acciaccatura { d16([ ees]  } d8) c8 c8. | \noBreak
      c8 ees <c ees>8. | \break
      c8 f f16([ees d]) | \noBreak
      c8 bes bes8. | \noBreak
      bes8 d <bes d>8. | \noBreak
      bes8 ees ees16([d c]) | \noBreak
      bes8 <a d>8 <a d>8. | \noBreak
      a8 a a8. | \break

      a8 bes c[d16] | \noBreak
      bes8 a bes[c16] | \noBreak
      \acciaccatura { a16([ bes]} a8) g g[d'16] | \noBreak
      g,8 g g8. \bar ":|.|:" \noBreak

      \repeat volta 2 {
        <g d'>8\stopped \stemNeutral d''8 d8. | \noBreak
        <g,, d'>8\stopped c'8 c8. | \break

        <g, d'>8\stopped \acciaccatura { bes'16([c] } bes8) bes8. | \noBreak
        a8 g \acciaccatura { g16([a]} g8)([f16]) | \noBreak
      }
      \alternative {
        { g4~ g8. | \noBreak }
        { g4~(g8 f16) | \noBreak }
      }
      \repeat volta 2 {
        <f a>8 <f a> a\trill c16 | \noBreak
        \stemUp bes4~ bes8\trill a16 | \break
      }
      \alternative {
        {
          a8 g \acciaccatura { g16[a]}  g8( f16) | \noBreak
          g4~ g8 f16 | \noBreak
        }
        {
          a8 \acciaccatura { f8 } g \acciaccatura { g16[a] } g8 f16 | \noBreak
          g8~ g~ g8. | \bar "||" \noBreak
        }
      }
      \stemNeutral c8 d16([d,]) d'8[d16] | \noBreak
      \tieUp d4~ d8[g16] | \break

      f8\trill ees d\trill[c16] | \noBreak
      c8 \slurNeutral c16([d]) \acciaccatura { bes16[c] } bes8([a16]) | \noBreak
      g8 g g[a16] | \noBreak
      bes8 bes16([a]) c16([bes a]) | \noBreak
      \tieNeutral g4~\trill g8[f16] | \noBreak
      c'([d,]) c'([d]) bes8\trill[a16] \break

      g8 g g[a16] | \noBreak
      \stemUp bes8 a bes8\prall[a16] | \noBreak
      g4~\trill g8[f16]  | \noBreak
      ees16[f] g8 g[f16] | \noBreak
      g4 g8.\accent | \noBreak
      \repeat volta 2 {
        \stemNeutral <d g,>8\stopped d'8 d8. | \noBreak
        <d, g,>8\stopped c'8 c8. | \break

        <d, g,>8\stopped bes' \acciaccatura { bes16[c] } bes8[a16] | \noBreak
        a8 g \acciaccatura { g16[a] } g8([f16]) | \noBreak
      }
      \alternative {
        { g4 g8. }
        { g4~(g8[f16]) }
      }
      \repeat volta 2 {
        a16([f]) a16([f]) a8[c16] | \break

        \tieUp \slurDown bes4~\trill(bes8[a16])
      }
      \alternative {
        {
          a8 g \acciaccatura { g16[a] } g8([f16]) | \noBreak
          \tieNeutral g4~ g8[f16] | \noBreak
        }
        {
          \once \override Score.MetronomeMark.outside-staff-priority = #599
          \once \override Score.MetronomeMark.X-extent=#'(-1.5 . 0)
          \tempo "rit."
          a8 \acciaccatura { f8 } g \acciaccatura { g16[a] } g8[f16] | \noBreak
          <g g,>8~ g~ g8. \bar "||"  \noBreak
        }
      }
      \time 3/4 \break
      \repeat volta 2 {
        \tempo "Largo"
        \slurNeutral d'4 g4.^\markup{
          \override #'(baseline-skip . 2)
          \column {\flat \musicglyph #"scripts.trill"}

        }(f8) | \noBreak
        \time 4/4 f8.([ees16]) ees8.([d16]) d8.([c16]) d8.\prall([c16]) | \noBreak
        \acciaccatura { c32[d c bes] } c8.\fermata([f16]) f8.([ees16]) ees8.([d16]) d8.([c16]) | \break

        c16.\prall([bes32 d16. c32]) bes8.([d16]) ees8.([d16]) c8.([bes16]) | \noBreak
        \time 3/4 bes8.([a16]) a16.([g32] a16[r32 a32]) a4\trill | \noBreak
        fis16([g) a g] \slurDown c4.( \tuplet 3/2 {bes32[ a g])} r16 | \time 2/4 \break
      }
      \alternative {
        { a8[r16 g16] g4 | \noBreak }
        { \time 2/4 a8[r16 g16] g4\fermata~\( \bar "||"  \noBreak }
      }
      \tempo "Moderato"
      \time 4/4
      g8([g, g' g,]) g'8([g, g' g,]) | \noBreak
      g'8([g, g' g,])\) g'8([f ees d] | \break

      c8) c4 c8 ees8([c ees c] | \noBreak
      ees8[c ees c]) f8([ ees d c] | \noBreak
      bes4) d8([bes] d8[bes d bes]) | \break

      ees8([d c bes] a4\prall) d8([a] | \noBreak
      d8[a d a]) g8([a bes a\prall] | \noBreak
      g[ d') g,( a] bes[a g) g'~(] | \time 5/4 \break

      g[g, g' g,]  g'[g, g' g,] g'[g,]) | \noBreak
      \time 4/4 g'([f ees\prall	 d] c) c4 c8 | \noBreak
      ees([c ees c]) f([ees d c] | \break
      bes4) d8([bes] d8[bes] d4) | \noBreak
      \time 3/4 ees8([d] c[bes] a4\prall) | \noBreak
      d8([a] d8[a] d8[a]) | \noBreak
      g([a] bes[a\prall] g[g']) | \break

      g,([a] bes[a\prall] g[)g'~]( | \noBreak
      \time 4/4 g[g, g' g,] g'[g, g' g,]) | \noBreak
      g'([a bes a]) g([fis\prall ees! d] | \break

      c8) c4 c8 ees([c ees c] | \noBreak
      ees[c ees c]) f([ees d c] | \noBreak
      bes4) d8([bes] d[bes d bes]) | \time 3/4 \break

      ees([d] c[bes] a4\prall) | \noBreak
      d8([a] d[a] d[a]) | \noBreak
      g([a] bes[a] g[g']) | \noBreak
      g,([a] bes[a\prall] g)[g]( | \break

      g'[g,] g'[g,] g'[g,]) | \noBreak
      \time 4/4 <g' g,>([a bes c] d) \slurUp d4( d,8 | \noBreak
      d'[d, d' d,] d'[d,] d'4) | \time 3/4 \break

      d8([c] bes[a] \slurDown g[)g~(] | \noBreak
      \time 4/4 g[a bes c] d) d4 d8 | \noBreak
      \slurNeutral g4.(a8) bes([a g fis]) | \break

      a([g fis ees!]) d([d, d' d,] | \noBreak
      d'[d, d' d,] d'[d, d' d,] | \noBreak
      d'[d, d' d,]) d'([c bes\prall a] | \break

      g) g,4. g'8([g, g' g,] | \noBreak
      g'[g, g' g,]) g'([f ees\prall d] | \noBreak
      c) c4 c8 ees c4 c8 \break

      f([ees d c] bes4) d8([bes] | \noBreak
      d[bes] d4) ees8([d c bes] | \noBreak
      \acciaccatura { bes } a4\prall)
      d8([a] d[a d a]) \break

      g([a bes a\prall] g[g']) g,4( | \noBreak
      g'8[g, g' g,]) g'([f ees\prall d] | \noBreak
      c8) c4  c8 ees c4 c8 | \break

      f([ees d c] bes4) bes( | \noBreak
      \time 3/4 d8[bes] d8[bes] d8[bes]) | \noBreak
      ees([d] c[bes] \acciaccatura { bes } a4\prall)	| \noBreak
      d8([a] d[a] d[a]) | \break

      g([a] bes[a\prall] g4) | \noBreak
      \time 4/4 g'8([g, g' g,] g'[g, g' g,] | \noBreak
      g'[g, g' g,]) g'([f ees\prall d] | \break

      c) c4 c8 ees([c ees c] | \noBreak
      ees[c ees c]) f([ees d c] | \noBreak
      bes4) bes( d8[bes d bes]) | \break

      ees([ d c bes] a4\prall) d8([a] | \noBreak
      d[a d a]) g([a bes a]) | \noBreak
      g\staccato([g\staccato) g'( g,] g'[g, g' g,] | \break

      g'[g, g' g,]) g'([f ees d] | \noBreak
      c) c4 c8 ees([c ees c] | \noBreak
      ees[c ees c]) f([ees d c] | \break

      bes4) bes( d8[bes d bes]) | \noBreak
      \time 3/4 ees([d] c[bes] \acciaccatura { bes } a4\prall) | \noBreak
      \time 4/4 d8([a d a] d[a d a]) | \break

      g([a bes a] g[)g( g' g,] | \noBreak
      g'[g, g' g,] g'[g, g' g,] | \noBreak
      \time 3/4 g'[g,] g'[g,] g'4\fermata) \bar "|."
    }

    \addlyrics {}
    \addlyrics {}

    \header {
      title = \markup \column \normal-text \fontsize #2.5 {
        \center-align
        \line { Българска идилия }
        \vspace #-0.6
        \center-align
        \line \fontsize #-3 { Bălgarska idilija  – Bulgarische Idylle}
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
