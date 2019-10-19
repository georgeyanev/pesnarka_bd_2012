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
  \new Lyrics = "tempVoiceLyricsBG" \with {
     % lyrics above a staff should have this override
     \override VerticalAxisGroup.staff-affinity = #DOWN
  }    
  \new Lyrics = "tempVoiceLyricsEN" \with {
     \override VerticalAxisGroup.staff-affinity = #DOWN
  }    
  \new Voice = "mainVoice" \absolute  {
    \clef treble
    \key d \minor
    \time 3/4 \tempo "Andante" 4 = 60
    \partial 4
    \autoBeamOff
 
      a4 | d'2 e'4 | f'4 d'2 | \time 4/4  a'4 bes' a' gis' | \time 3/4  a'2 a'4 \break |        
      d''2 e''4 | \time 4/4  
      
      << % now temporary add a second voice
        { 
          \voiceTwo % this voice is in the same context as parent
           f''4 e'' d'' cis'' | d''4 \stemUp a'2 \stemNeutral
        }
        \new Voice = "tempVoice" { % this is a new voice context
          \voiceOne \autoBeamOff
           f''4 e''8 e'' d''4 cis'' | \hideNotes d''4 a'2 \unHideNotes
        }
      >>
      \oneVoice
      
      a'4 | \time 3/4  bes'2 a'4 | \break       
      
      \time 4/4  bes'4 a' bes' c'' | bes'4 a'2 a'4 | \time 3/4  d''2 cis''4 | \time 4/4  d''4 a' bes' a' \break |
      a'4 g'2 f'4 |  e'4 d' f' e' | d'4 cis' e'2 | \time 3/4  d'2 a'4 \break |
      d''2 a'4 | \time 4/4  bes'4 a'2 d'4 |  f'2 e'4 cis' | \time 3/4  d'2.\fermata | \bar "|." \break
  }
  
  \new Lyrics \lyricsto "mainVoice" {
    Шу -- ми,
    аз слу -- шам цял свят да шу -- ми! Шу -- мят
    сър -- ца -- та че -- ло --  веш -- ки всред
    свой -- те и -- до -- ли и греш -- ки, шу -- мят
    без -- спир -- но у -- мо -- ве -- те, го -- лям
    е при -- лив в~до -- мо -- ве -- те. Шу -- ми,
    аз слу -- шам цял свят да шу -- ми!
  }
  
  \context Lyrics = "tempVoiceLyricsBG" {
    \lyricsto "tempVoice" {
      "(4.)мис" -- ли и неж -- ни чув -- ства
    }
  }
  
  \new Lyrics \lyricsto "mainVoice" {
    Shu -- mi,
    az slu -- sham tsyal svyat da shu -- mi! Shu -- myat
    sar -- tsa -- ta che -- lo --  vesh -- ki vsred
    svoy -- te i -- do -- li i gresh -- ki, shu -- myat
    bez -- spir -- no u -- mo -- ve -- te, go -- lyam
    e pri -- liv v~do -- mo -- ve -- te. Shu -- mi,
    az slu -- sham tsyal svyat da shu -- mi!
  }
  
  \context Lyrics = "tempVoiceLyricsEN" {
    \lyricsto "tempVoice" {
      "(4.)mis" -- li i nezh -- ni chuv -- stva
    }
  }
  
  >>

  \header {
    title = "Шуми / Shumi"
  }

} % score

\markup { \hspace #20 \vspace #10
   \fontsize #+5 {
     Missing text here ...
   }
}

} % bookpart
