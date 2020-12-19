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

  \new Voice \absolute  {
    \clef treble
    \key f \major
    \time 3/8 \tempo "Allegretto" 8 = 112
    \autoBeamOff

    f''16. e''32 d''8 bes' | a'16. g'32 a'8 f' | d'16. e'32 f'8 g' | a'4 a'8 \break |
    f''16. e''32 d''8 bes' | a'16. g'32 a'8 f' | e'16. bes'32 a'8 cis' | d'8 d' r | \bar ":|." \break
    \repeat volta 2 { 
      \bar ":|.|:"
      a'4 d''8 | cis''4 e''8 | d''4 bes'8 | a'4 g'8 | a'4 d''8 | cis''4 e''8 | d''4. |  d''4. \break | % 17
      a'4 bes'8 | a'4 d''8 | cis''4 bes'8 |  a'4 g'8 | f'4 a'8 | e'4 a'8 |  d'4. | d'4. } \break |
  }
  
  \addlyrics {
    Аз съм бя -- ло -- то ко -- ки -- че всред тре -- ви -- те гор -- ски, 
    сра -- меж -- ли -- во кат мо -- ми -- че от по -- гле -- ди хор -- ски. 
    Зла ме ма -- ще -- ха съ -- бу -- ди с~сне -- га, вет -- ро -- ве -- те. 
    Всич -- ко жи -- во да се чу -- ди, че съм ран -- но цве -- те.
  }

  \addlyrics {
    Az sam bya -- lo -- to ko -- ki -- che vsred tre -- vi -- te gor -- ski, 
    sra -- mezh -- li -- vo kat mo -- mi -- che ot po -- gle -- di hor -- ski. 
    Zla me ma -- shte -- ha sa -- bu -- di s~sne -- ga, vet -- ro -- ve -- te. 
    Vsich -- ko zhi -- vo da se chu -- di, che sam ran -- no tsve -- te.
  }

  \header {
    title = "Аз съм бялото кокиче / Az sam byaloto kokiche"
  }

} % score

\markup { \hspace #20 \vspace #10
   \fontsize #+5 {
     Missing text here ...
   }
}

} % bookpart
