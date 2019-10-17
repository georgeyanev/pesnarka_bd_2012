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
    ragged-last = ##f % do not spread last line to fill the whole space
    \context {
      \Score
      \omit BarNumber %remove bar numbers
    } % context
  } % layout
  
  \new Staff <<
    
  \new Voice = "voice1" \absolute  {
    \clef treble
    \key c \major
    \time 3/4 \tempo "Andante" 4 = 66
    \autoBeamOff
    \partial 4
    \voiceOne % stems p
    \slurDown e'8 ([f'8])  g'2 g'4 |  a'4 a' a' | g'2 f'4 | e'2 e'8 ([ f' ]) \break | 
    g'2 g'4 | \hideNotes c''2 d''4 | e''2 d''4 | c''2 c''8 [ d'' ] \break |
    \repeat volta 2 { 
      e''2 \unHideNotes e''8 e'' | \hideNotes \slurUp e''4 (d'') c'' | b'4. a'8 b' a' | g'2 e'8. f'16 | \break  
      \unHideNotes g'4 c' d' | e' e' d' | 
    }  \alternative { 
      { c'2 \hideNotes c''8 [ d'' ] | \unHideNotes } 
      { c'2 \bar "|." } 
    }
  }

  \new Voice = "voice2" \absolute  {
    \clef treble
    \key c \major
    \time 3/4 \tempo "Andante" 4 = 66
    \autoBeamOff
    \partial 4
    \voiceTwo % stems down
    
    \hideNotes e'8 [f'8]  g'2 g'4 | \unHideNotes a'2 a'4 | \hideNotes g'2 f'4 | \unHideNotes e'4 e'4 \hideNotes e'8 [ f' ] \break | 
    g'2 g'4 | \unHideNotes c''2 d''4 | e''2 d''4^\fermata | c''2 \slurDashed \slurUp c''8 [ d'' ] \break |
    \repeat volta 2 { 
      e''2 e''4 | e''4 d'' c'' | \hideNotes b'4. a'8 b' a' | g'2 e'8. f'16 \break | 
      g'4 c' d' | \unHideNotes e'2 \hideNotes d'4 | 
    }  \alternative { 
      { c'2 \unHideNotes c''8 ([ d'' ]) | \hideNotes } 
      { c'2 \bar "|." } 
    }
  }

  \new Voice = "voice3" \absolute  {
    \clef treble
    \key c \major
    \time 3/4 \tempo "Andante" 4 = 66
    \autoBeamOff
    \partial 4
    \voiceThree
    
    \hideNotes
    e'8 [f'8]  g'2 g'4 |  a'4 a' a' | g'2 f'4 | e'2 e'8 [ f' ] \break | 
    g'2 g'4 | c''2 d''4 |\unHideNotes e''4 e''4  \hideNotes  d''4 | c''2 c''8 [ d'' ] \break |
    \repeat volta 2 { 
      e''2 e''8 e'' | e''4 d'' c'' | \unHideNotes b'4. a'8 \slurDown  b' ( a' ) | g'2 e'8. f'16 \break | 
      \hideNotes g'4 c' d' | e' e' d' | 
    }  \alternative { 
      { c'2 c''8 [ d'' ] | } 
      { c'2 \bar "|." } 
    }
  }

  \new Lyrics \lyricsto "voice1" {
    "1.Пред" Теб при -- па -- да -- ме, Гос -- по -- ди, 
    днес с~чис -- ти, тре -- пет -- ни ду -- ши. Във пе -- сен из
    -- ли -- ва -- ме сър -- ца -- та си и зо -- вем
    Те, пре -- свя -- тий, про -- сти! Във сти! 
  }  

  \new Lyrics \lyricsto "voice2" {
    "2.За" -- бра -- вяй гре -- хо -- ве -- те на -- ши, о --
    бил -- но нас бла -- го -- сло -- ви. Ца --
    рю пре -- бла -- гий на свет -- ли -- те ду -- ши, в~цар -- ство --
    то Си ни при -- е -- ми! Ца -- ми!
  }  

  \new Lyrics \lyricsto "voice3" {
    "3.Там" да те сла -- вим през веч -- ност -- та, е --
    дин Ти за слу -- жа -- ваш хва -- ла. О -- гра --
    ди ни с~ми -- ло -- сти -- те Тво -- и, о -- за --
    ри ни с~Твой -- та Свет -- ли -- на! О -- гра -- на!
  }  

  >> %Staff
  
  \header {
    title = "Сърдечен зов / Sardechen zov"
  }

} % score
} % bookpart
