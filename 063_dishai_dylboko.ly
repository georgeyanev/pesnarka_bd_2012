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
        \key d \major
        \time 2/4 \tempo "Tempo di marcia" 4 = 100

        \autoBeamOff

        a'4 b'8. a'16 | fis'4 d'4 |  a'8. a'16 b'8. b'16 | a'2 | \break

        b'4 a'8. g'16 | fis'4 d'4 | e'8. e'16 fis'8 e'8 |  d'2 |\break

        \repeat volta 2 {
          a8 d'8 d'8 d'8 | a8 fis'8 fis'8 fis'8 | fis'8. e'16 fis'8 g'8 | a'2 | \break

          b'8. b'16 b'8 b'8 | a'8 d''8 a'8 g'8 | fis'8 fis'8 e'8 e'8 | d'2|
        }

      }

      \new Lyrics \lyricsto "mainVoice" {

        Ди -- шай дъл -- бо -- ко, с ве -- се -- ло сър -- це,

        и на жи -- во -- та рад -- вай се, де -- те!

        Въз -- ду -- хът е жи -- ва си -- ла ви -- на -- ги за нас.

        Ди -- шай, ди -- шай и пак ди -- шай,

        ди -- шай да си здрав!

      }

      \context Lyrics = "tempVoiceLyricsBG" {
        \lyricsto "tempVoice" {
          "(2., 3..)мис" -- ли и неж -- ни чув -- ства
        }
      }

      \new Lyrics \lyricsto "mainVoice" {
        Di -- shay dal -- bo -- ko, s ve -- se -- lo sar -- tse,

        i na zhi -- vo -- ta rad -- vay se, de -- te!

        Vaz -- du -- hat e zhi -- va si -- la vi -- na -- gi za nas.

        Di -- shay, di -- shay i pak di -- shay,

        di -- shay da si zdrav!

      }

      \context Lyrics = "tempVoiceLyricsEN" {
        \lyricsto "tempVoice" {
          "(4.)mis" -- li i nezh -- ni chuv -- stva
        }
      }

    >>

    \header {
      title = "Дишай дълбоко / Dishai dalboko"
    }
\midi { }
  } % score

  \markup {
    \hspace #1
    \vspace #2
    \fontsize #+1 {

      \column {

        \line {   2. Кога дълбоко дишаш, дете,}

        \line {   "   "ще имаш здраво, добро сърце.}

        \line {   "   "Здраво сърце, добро кръвообращение,}

        \line {   "   "силен стомах, здраво тяло}

        \line {   "   "ще имаш, дете.}
        \line {   "   "}
        \line {   3. Кога дълбоко дишаш, дете,}

        \line {   "   "тялото ти изправено да е!}

        \line {   "   "Права стойка, бодра крачка,}

        \line {   "   "с поглед все напред.}

        \line {   "   "Дишай, дишай и пак дишай,}

        \line {   "   "дишай ти навред!}



      }

      \hspace #1 {
        \column  {

          \line {  2.  Koga dalboko dishash, dete,}

          \line {   "   "shte imash zdravo, dobro sartse.}

          \line {   "   "Zdravo sartse, dobro kravoobrashtenie,}

          \line {   "   "silen stomah, zdravo tyalo}

          \line {   "   "shte imash, dete.}
          \line {   "   "}
          \line {   3. Koga dalboko dishash, dete,}

          \line {   "   "tyaloto ti izpraveno da e!}

          \line {   "   "Prava stoyka, bodra krachka,}

          \line {   "   "s pogled vse napred.}

          \line {   "   "Dishay, dishay i pak dishay,}

          \line {   "   "dishay ti navred!}







        }

      }
    }
  }

} % bookpart


\markup {  \hspace #25   \huge\bold "Atme tief"  }

\markup {
  \hspace #1
  \fontsize #+1 {

    \halign #-1.5 {



      \column {






      }

    }
  }
}
%}