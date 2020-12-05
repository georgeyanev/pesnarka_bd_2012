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
    \time 3/4 \tempo "Andante" 4 = 66
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
    bil -- no nas bla -- go -- slo -- vi. TSa --
    ryu \set ignoreMelismata = ##t pre -- bla -- giy na svet -- li -- te du -- shi, v~tsar -- stvo --
    to Si ni pri -- e -- mi! TSa -- _ mi!
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

  >> %Staff
  
  \header {
    title = "Сърдечен зов / Sardechen zov"
  }
  
  \midi{}

} % score
} % bookpart
