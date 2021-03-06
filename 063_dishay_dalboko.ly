\version "2.18.2"

\paper {
  print-all-headers = ##t
  print-page-number = ##f 
  left-margin = 2\cm
  right-margin = 2\cm
  ragged-bottom = ##t % do not spread the staves to fill the whole vertical space
}

\header {
  tagline = ##f
}

\bookpart {
\score{
  \layout { 
    indent = 0.0\cm % remove first line indentation
    ragged-last = ##f % do spread last line to fill the whole space
    \context {
      \Score
      \omit BarNumber %remove bar numbers
    } % context
  } % layout

  <<
  \new Voice = "mainVoice" \absolute  {
    \clef treble
    \key d \major
    \time 2/4 \tempo "Tempo di marcia" 4 = 100
    \autoBeamOff
    
    \repeat volta 1 {
      a'4 b'8. a'16 | fis'4 d' | \noBreak	
      
      << % now temporary add a second voice
        { 
          \voiceTwo % this voice is in the same context as parent
          \stemUp a'8. a'16 b'8 b' | a'2 \stemNeutral
        }
        \new Voice = "tempVoice1" { % this is a new voice context
          \voiceOne \autoBeamOff
          \stemDown \tiny a'4 b'8. b'16 | 
          \once \override NoteColumn.force-hshift = #1.2
          a'2 \stemNeutral
        }
      >>
      \oneVoice
      | \break

      b'4 a'8. g'16 | fis'4 d' | \noBreak
      
      << % now temporary add a new voice
        { 
          \voiceTwo % this voice is in the same context as parent
          \stemUp e'8. e'16 fis'8 e' | d'2 \stemNeutral
        }
        \new Voice = "tempVoice2" { % this is a new voice context
          \voiceOne \autoBeamOff
          \stemDown \tiny e'4 fis'8. e'16 |
          \once \override NoteColumn.force-hshift = #1.2
          d'2 \stemNeutral
        }
      >>
      \oneVoice
      | \break
    }
    \repeat volta 1 { a8 d' d' d' | a8 fis' fis' fis' | fis'8. e'16 fis'8 g' |  a'2 \break | 
      b'8. b'16 b'8 b' | a'8 d'' a' g' |  fis'8 fis'8 e'8 e'8|  d'2 \break |
    }
  }

  \new Lyrics \lyricsto "mainVoice" {
    "1. Ди" -- шай дъл -- бо -- ко, с~ве -- се -- ло сър -- це 
    и на жи -- во -- та рад -- вай се, де -- те. 
    Въз -- ду -- хът е жи -- ва си -- ла ви -- на -- ги за нас. 
    Ди -- шай, ди -- шай и пак ди -- шай, ди -- шай да си здрав!    
  }
  \new Lyrics \lyricsto "mainVoice" {
    "1. Di" -- shay dal -- bo -- ko, s~ve -- se -- lo sar -- tse 
    i na zhi -- vo -- ta rad -- vay se, de -- te. 
    Vaz -- du -- hat e zhi -- va si -- la vi -- na -- gi za nas. 
    Di -- shay, di -- shay i pak di -- shay, di -- shay da si zdrav!    
  }

  \new Lyrics \lyricsto "tempVoice1" {
    "(2.,3.)...ди" -- шаш, де -- те,...
  }
  \new Lyrics \lyricsto "tempVoice1" {
    "(2.,3.)...di" -- shash, de -- te,...
  }

  \new Lyrics \lyricsto "tempVoice2" {
    "(2.)...доб" -- ро, сър -- це.
  }
  \new Lyrics \lyricsto "tempVoice2" {
    "(2.)...dob" -- ro, sar -- tse.
  }
  >>  

  \header {
    title = "Дишай дълбоко / Dishay dalboko"
  }

  \midi { 
  }
} % score

\markup { \hspace #20 \vspace #10
   \fontsize #+5 {
     Missing text here ...
   }
}

} % bookpart
