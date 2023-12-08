\version "2.24.2"

% include paper part and global functions
\include "include/globals.ily"


"rightBraces022" = \markup {
  \column {
    % repeat braces
    \translate #'(0 . -20.1 )
    \right-brace #18



  }
  \column {
    % repeat numbers
    \translate #'(0 . -20.7 )
    2
  }
}

\bookpart {
  \label #'ref022
  \tocItem \markup "Изгрява вече ден тържествен"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute {
      \clef treble
      \key d \minor
      \time 4/4
      \tempoFunc "Andante" 4 "92"
      \autoBeamOff

      \partial 4.

      a8 d'8 e'8 |f'4 e'4 f'4 e'4 |d'4 a'4 ~ a'8 a'8 bes'8 a'8 \break |
      d''4 a'4 bes'4 a'4 |\time 3/4  g'4 a'2 | \time 4/4  g'4 a'8 g'8 f'4. e'8 \break
      g'4 f'2 f'4 |  e'4. d'8 f'4. e'8 | e'4 d'2 r8 \tempo "Più vivo" a8 | \bar "||" \time 2/4 \break
      d'8 e'8 f'8 g'8 | \time 4/4  a'4 \staccato a'2 a'4 | bes'4 a'4 d''4. a'8 \break |
      bes'4 \staccato a'4 ~ a'8 g'8 a'8 g'8 |  \time 6/4  f'4. e'8 g'4 f'2 f'4 | \time 4/4  e'4. d'8 f'4. e'8 \break |
      e'4 \staccato d'4 ~ d'8 d''8 d''8 e''8 | \time 6/4  f''4. e''8 e''4 d''2 c''4 \break
      \time 4/4  bes'4. a'8 a'4. g'8 |  \time 3/4  a'4 a'2 | \time 5/4  c''4. c''8 d''4 g'2 \break |
      f'4. g'8 a'4 \staccato a'4. d'8 | f'4. d'8 f'4 e'2 | \time 2/4 d'4. a8 | \time 5/4 d'4 d'2 r8 \bar "|."
    }
    \addlyrics {
      Из -- гря -- ва ве -- че ден тър -- жест -- вен, __ пред -- ре -- че
      -- ни -- ят ден Бо -- жест -- вен, на дни --
      те ди -- а -- де -- ма, със свет -- ли -- на го
      -- ля -- ма. Е -- ла -- те да жи -- ве -- ем във
      Лю -- бов -- та чу -- дес -- на. __ Е -- ла -- те
      да при -- е -- мем таз бла -- го -- дат не --
      бес -- на, __ е -- ла -- те да при -- е -- мем таз
      бла -- го -- дат не -- бес -- на, що жи -- во --
      та об -- но -- вя -- ва и веч -- но тя го под
      -- мла -- дя -- ва.
    }
    \header {
      title = \titleFunc "Изгрява вече ден тържествен" "Izgrjava veče den tăržestven"
    }

    \midi{}

  } % score

  \pageBreak

  \markup \fontsize #bgCoupletFontSize {
    \hspace #15
    \override #`(baseline-skip . ,bgCoupletBaselineSkip)
    \column {

      \line { 2. И носи Радост за душата, }
      \line {   "   " и прогласява Свободата,}
      \line {   "   " и Мир с Любов пресвята}
      \line {   "   " за всички на Земята. }


      \line { " " }
      \line { "   " \italic {Припев: } }

      \line {   "   "  Елате да живеем }

      \line {   "   " във Любовта чудесна. }

      \line {   "   " Елате да приемем }

      \line {   "   " таз благодат небесна, }

      \line {   "   " що живота обновява }

      \line {   "   " и вечно тя го подмладява. }

      \line { " " }
      \line {  3.  О, ден прекрасен, вечно благо, }
      \line {   "   " кому за тебе не е драго? }
      \line {   "   " За всичките години}
      \line {   "   " по-скоро обнови ни! }

      \line { " " }
      \line { "   " \italic {Припев ... } }
    }
    \"rightBraces022"
  } % markup

} % bookpart
