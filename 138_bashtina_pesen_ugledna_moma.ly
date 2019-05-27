\version "2.18.2"

\paper {
  print-all-headers = ##t
  print-page-number = ##f 
  left-margin = 2\cm
  right-margin = 2\cm
}

\header {
  tagline = ##f
}


\score{
  \layout { 
    indent = 0.0\cm % remove first line indentation
    ragged-last = ##f % do not spread last line to fill the whole space
    \context {
      \Score
      \omit BarNumber %remove bar numbers
    } % context
  } % layout

  \new Voice \relative c' {
    \clef treble
    \key bes \major
    \time 8/16 
    \tempo "Lento" 8 = 112
    \autoBeamOff
    
    g'8. a8 f(e16) | \noBreak
    g8. g8(g8.) | \noBreak
    fis8. ees8 d8. | \noBreak
    ees8. c8(c8.) | \break
    
    ees8. ees8 ees8. | \noBreak
    g8. g8(g8.)  | \noBreak
    fis8. ees8 ees8.  | \noBreak
    fis8. ees8 c8.  | \break
    
    d8. d8(d8.)  | \noBreak
    \repeat volta 1 { 
      \time 5/16 ees8 c8.  | \noBreak
      ees8 g8. | \noBreak
      fis8 ees16 c8  | \noBreak
      d8 d8. | \break
    }
    
    \repeat volta 1 { 
      \tempo "Poco più mosso" 8 = 120
      c'8 b8[(aes16)] |  | \noBreak
      c16 c b aes f |  | \noBreak
      b8 aes([f16])  | \noBreak
      g8 g8. | 
    }
    \time 8/16 \break
    
    \tempo "Meno mosso" c,8. d8(ees8.) | \noBreak
    fis8. g8 (g8.) | \noBreak
    fis8. ees8 fis8. | \noBreak
    ees8 d16 ees8 c8. | \noBreak
    ees8. fis8 g8. | \break
    
    fis8.ees8(c8.) | \noBreak
    d8. d8(d8.\fermata) | \bar "||" \noBreak
    \time 7/16 
    \key c \major 
    \tempo "Allegretto" 8=160 
    g8 a f e16 | \noBreak
    g8 g f8. | \break
    
    g8 a f e16 | \noBreak
    g8 f(f8.) | \noBreak
    e8 g f(e16) | \noBreak
    \tempo "rall." f8 e c8. | \noBreak
    d4 d8. | \bar "||" \break
    
    \tempo "a tempo"
    c8 d16[(e)] f8 e16 | \noBreak
    f8 f e8. | \noBreak
    g8 a f e16 | \noBreak
    g4 g8. | \noBreak
    c,8 d16[(e)] f8(e16) | \break
    
    \tempo "rit."
    f8 e c8. | \noBreak
    d4 d8. | \bar "||" \noBreak
    \key bes \major 
    \time 8/16
    \tempo "Andante sostenuto"
    fis8 g16 a8~ a8. | \noBreak
    c8. bes8 a8. | \noBreak
    a8. g8 fis8. | \break
    
    a8. a8~ a8.\fermata | \noBreak
    bes8. bes8~ bes8.\fermata | \noBreak
    a8. g8 g8. | \noBreak
    a8. a8~ a8. | \noBreak
    g8. g8~ g8. | \break
    
    fis8 ees16 d8 c8. | \noBreak
    d8 ees16 fis8 fis8.\fermata | \noBreak
    c8. d8(ees8.) | \noBreak
    g8. fis8 ees8. | \noBreak
    fis8. g8~ g8. | \break
    
    fis8. ees8 c8. | \noBreak
    d8. d8~ d8. | \bar "||" \noBreak
    \key c \major 
    \time 5/16 
    \tempo "Allegretto"
    c8 d e 16 | \noBreak
    f8 e8. | \noBreak
    f8 e8. | \break
    
    f16[(e)] d8 c16 | \noBreak
    e8 e8.| \noBreak
    g8 fis ees16 | \noBreak
    fis8 ees8 c16 | \noBreak
    ees8~ ees8. | \break
    
    fis8 ees8 c16 | \noBreak
    d8~ d8. | \bar "||" \noBreak
    \key bes \major 
    \time 8/16
    \tempo "Andante sostenuto"
    bes'8. bes8 bes8. | \noBreak
    a8[(bes16)] c8~ c8. | \noBreak
    bes8. a8 g8. | \break
    a8. g8 fis8. | \noBreak
    ees8. g8 g8.\fermata | \noBreak
    g8. bes8 bes8. | \noBreak
    bes8. g8~ g8. | \noBreak
    bes8. a8 g8. | \break
    
    a8. a8~ a8. | \noBreak
    g8. a8 g8. | \noBreak
    fis8. ees8~ ees8. | \noBreak
    fis8. g8 g8. | \noBreak
    fis8. fis8~ fis8. | \break
    
    ees8. g8~ g8. | \noBreak
    fis8. ees8~ ees8. | \noBreak
    fis8. ees8(c8.) | \noBreak
    d8. d8~ d8. | \bar "||" \noBreak
    g8. g8~ g8. | \break
    
    bes8. bes8~ bes8. | \noBreak
    c8. bes8~ bes8. | \noBreak
    a8. g8~ g8.\fermata | \noBreak
    bes8. bes8 g8. | \noBreak
    a8. a8~ a8.\fermata | \break
    
    \repeat volta 1 { 
      \tempo "Poco più mosso"
      g8. g8~ g8. | \noBreak
      fis8. ees8~ ees8. | \noBreak
      fis8. ees8 c8. | \noBreak
      d8. d8~ d8. | \noBreak
    }
    \key c \major 
    \time 5/16 
    \tempo "Allegretto"
    c8 d(e16) | \break
    
    f8 e8. | \noBreak
    g8 f8(e16) | \noBreak
    f8 e8. | \noBreak
    g8 a f16 | \noBreak
    f8 e8. | \noBreak
    g8 a8. | \noBreak
    f8 e8. | \break
    
    f8 e c16 | \noBreak
    d8 d8. | \noBreak
    \tempo "rall."
    e8 g8. | \noBreak
    f8 e8. | \noBreak
    f8 e c16 | \noBreak
    d8 d8. | \bar "||" 
    \time 8/16 
    \key g \major
    \break
    
    \tempo "Andante sostenuto"
    d'16\fermata d d d8 d8. | \noBreak
    e8. c8 b8. | \noBreak
    e8. c8 b8. | \noBreak
    b8. g8~ g8. \break
    
    b8. d8 d8. | \noBreak
    c8. b8~ b8. | \noBreak
    c8. b8 g8. | \noBreak
    a8. a8~ a8. | \noBreak
    c8. c8 d8. | \break 
    
    e8. d8~ d8. | \noBreak
    cis8. \stemUp bes8(a8.) \stemNeutral | \noBreak
    bes8. g8~ g8. | \noBreak
    bes8 bes16 bes8 bes8. | \noBreak
    bes8. g8~ g8. | \break
    
    bes8. d8~ d8. | \noBreak
    cis8. bes8 g8. | \noBreak
    a8. a8~ a8. | \noBreak \bar "||" 
    \key c \major
    \time 5/16 
    \tempo "Più mosso" e'8 e8. | \noBreak
    d16[(e)] c8. | \break
    d8 d8. | \noBreak
    d16 e c8  b16 | \noBreak
    c8 d8. | \noBreak
    b8 g8. | \noBreak
    a8~ a8. | \noBreak
    a8~ a8. | \bar "||" \break
    
    e'16\staccato r16 d8\staccato r16 | \noBreak
    e16\staccato r16 c8\staccato r16 | \noBreak
    d16\staccato r16 e8\staccato r16 | \noBreak
    c16 b c8 b16 | \noBreak
    b16\staccato r16 d8\staccato r16 | \break
    
    c16\staccato r16 b8\staccato r16 | \noBreak
    a8~ a8. | \noBreak
    a8~ a8. | \noBreak \bar "||" 
    \time 9/16
    e8 e e e8. | \noBreak
    a8 g f e8. | \break
    
    g8(f) e8~ e8. | \noBreak
    c'8 b b a8. | \noBreak
    e8 e g f8. | \noBreak
    f4 e8~ e8. | \break
    
    e4 c'8 b8.\fermata | \noBreak
    \tuplet 3/2 { a,16 b c } e f f8\fermata e8.\fermata | \noBreak
    \time 4/4 c'4 b a e8. e16 | \break 
    
    c'4 b2 e,4 | \noBreak 
    \time 2/4 g4 f8. d16 | \noBreak
    \time 3/4 e4 e2 | \noBreak
    \bar "|" \mark\markup{ \column { \center-align \normalsize \musicglyph #"scripts.ufermata"  \center-align \normalsize \musicglyph #"scripts.caesura.straight" }}
    
    \override TextSpanner.bound-details.left.text = \markup { \bold \italic "(8)" } 
    \override TextSpanner.bound-details.right.text = "|)"
    \override TextSpanner.bound-details.right-broken.text = ##f
    \override TextSpanner.direction = -1
    \override TextSpanner.dash-period = 1.5
    \override TextSpanner.dash-fraction = 0.4
    
    \time 3/4 e'16--\startTextSpan e-- e-- e-- a2 | \break 
    
    g16 f e d e2 | \noBreak
    \time 4/4 g4. f8 e(d) c d | \noBreak
    e4 e2. \stopTextSpan | \noBreak
    \bar "||" \time 5/16 \break 
    
    
    \tempo "Allegretto"  e8 d8. | \noBreak
    e8 c8. | \noBreak
    d16 e c8 b16 | \noBreak
    d8 c8. | \noBreak
    c8 b a16 | \break
    
    b8 g8. | \noBreak
    \tempo "rall." b8 d8. | \noBreak
    cis8 bes8. | \noBreak
    cis16 bes16 a8 g16 | \noBreak
    a8 a8. | \noBreak 
    
    \bar "||" 
    \time 9/16 
    \key g \major \break
    \repeat volta 1 {
      \tempo "a tempo"
      d8 e16[(fis)] g8 fis8. | \noBreak
      g8 e8 e16[(fis)] d8. | \noBreak
      d8 e16([d]) c8 b8. | \break
      
      g8 a16[(b)] c[(d)] c8. | \noBreak
      d8 e16([d]) c[(d)] b8. | \noBreak
      g8 a a a8. 
    }
  }

  \header {
    title = "Бащина песен - Угледна мома / Bashtina pesen - Ugledna moma"
  }

} % score
