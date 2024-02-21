\version "2.24.3"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref083_1
  \tocItem \markup "Вехади"
  \include "include/bookpart-paper.ily"
  \score {
    \layout {
      indent = 0.0\cm % remove first line indentation
      ragged-last = ##f % do spread last line to fill the whole space
      \override Staff.BarLine.thick-thickness = #4 %make the end and repeat bars thiner
      \override Score.VoltaBracket.font-size = #-1.7 % make the repeat number fontsize smaller


      \context {
        \Score
        \omit BarNumber %remove bar numbers
        
        
        \override MetronomeMark.font-size = #1.5 % increase the tempo fontsize
        \override TupletNumber.font-size = #0.4 % increase the triol number

      } % context

      \context {
        % change staff size
        \Staff
        
        
        \override StaffSymbol.thickness = #0.5
        \override BarLine.hair-thickness = #1
        %\override StaffSymbol.ledger-line-thickness = #'(0 . 0)
      }

      \context {
        % adjust space between staff and lyrics and between the two lyric lines
        \Lyrics
        \override VerticalAxisGroup.nonstaff-relatedstaff-spacing = #'((padding . 1.5))
        \override VerticalAxisGroup.nonstaff-nonstaff-spacing = #'((minimum-distance . 2))
        includeGraceNotes = ##t
      }
    } % layout

    \new Voice \absolute {
      \clef treble
      \key d \minor
      \tempoFunc "Adagio, ad libitum" 4 "56"
      \override Staff.BarLine.gap = 0.5
      \autoBeamOff
      \omit Score.TimeSignature
      \cadenzaOn % allows custom bar lines

      \slurDown a'4^\p bes'8 [ ( a'] gis' [a'] bes'2 ) \slurNeutral  a' d''4^\mp   e''8 ( [d''] cis'' [d''] bes' [a'] c''16 [bes' a' gis'!] ) a'2   \break

      \time 10/4 g'8 ([ f'] e' [f'] g'4 a' ) f'4. ( e'8 g'16 [f' e' f'] ) d'2 \break

      a4^\pp  bes2 a2. a4  bes2 a2. a4  bes2 a2. \bar ":|." \break
    }

    \addlyrics {
      Ве -- ха -- ди, Ве -- ха -- ди, Ве -- ха -- ди,
      Ве -- ха -- ди, Ве -- ха -- ди, Ве -- ха -- ди.
    }
    \header {
      title = \titleFunc #'ref_desc_7 "Вехади" "Vehadi"
    }

    \midi{}

  } % score
  %

  \include "include/bookpart-paper.ily"
  \label #'ref083_2
  \tocItem \markup "Вечер, сутрин"
  \score {
    \layout {
      indent = 0.0\cm % remove first line indentation
      ragged-last = ##f % do spread last line to fill the whole space
      \override Staff.BarLine.thick-thickness = #4 %make the end and repeat bars thiner
      \override Score.VoltaBracket.font-size = #-1.7 % make the repeat number fontsize smaller


      \context {
        \Score
        \omit BarNumber %remove bar numbers
        
        
        \override MetronomeMark.font-size = #1.5 % increase the tempo fontsize
        \override TupletNumber.font-size = #0.4 % increase the triol number

      } % context

      \context {
        % change staff size
        \Staff
        
        
        \override StaffSymbol.thickness = #0.5
        \override BarLine.hair-thickness = #1
        %\override StaffSymbol.ledger-line-thickness = #'(0 . 0)
      }

      \context {
        % adjust space between staff and lyrics and between the two lyric lines
        \Lyrics
        \override VerticalAxisGroup.nonstaff-relatedstaff-spacing = #'((padding . 1))
        \override VerticalAxisGroup.nonstaff-nonstaff-spacing = #'((minimum-distance . 2))
        includeGraceNotes = ##t
      }
    } % layout

    \new Voice \absolute {
      \clef treble
      \key a \major
      \time 6/4
      \tempoFunc "Andante" 4 "66"
      \autoBeamOff

      a4 cis' e' a'2 gis'4 |  \time 5/4  b'4. fis'8 fis'4 e'2 | \time 6/4  fis'4 e' d' cis'2 b4 \break |

      \time 5/4  e'4. b8 b4 a2 | \bar ":|.|:" \time 8/8 \tempo  "   Più Mosso"

      e'4. fis'4 d'4. | e'4. fis'4 ~ fis'4. | e'4. fis'4 d'4. \break |

      e'4. fis'4 ~ fis'4. |e'4. fis'4 d'4. | cis'4. e'4 ~ e'4. | b4. ~ b4 ~ b4. | a4. ~ a4 ~ a4. | \bar ":|."


    }

    \addlyrics {
      Ве -- чер,
      сут -- рин о -- ти -- де, дой -- де, ве -- чер,
      сут -- рин о -- ти -- де, дой -- де. О -- ти --
      де, дой -- де, __ о -- ти -- де, дой -- де, __ о -- ти
      -- де, дой -- де, __ дой -- де. __}
      \header {
        title = \titleFunc #'ref_desc_7 "Вечер, сутрин" "Večer, sutrin"
      }

      \midi{}

    } % score

    \markup \dc-two "D.C." "con ripetizioni"

    \pageBreak
    \include "include/bookpart-paper.ily"
    \label #'ref083_3
    \tocItem \markup "Имаше человек"
    \score {
      \layout {
        indent = 0.0\cm % remove first line indentation
        ragged-last = ##f % do spread last line to fill the whole space
        \override Staff.BarLine.thick-thickness = #4 %make the end and repeat bars thiner
        \override Score.VoltaBracket.font-size = #-1.7 % make the repeat number fontsize smaller


        \context {
          \Score
          \omit BarNumber %remove bar numbers
          
          
          \override MetronomeMark.font-size = #1.5 % increase the tempo fontsize
          \override TupletNumber.font-size = #0.4 % increase the triol number

        } % context

        \context {
          % change staff size
          \Staff
          
          
          \override StaffSymbol.thickness = #0.5
          \override BarLine.hair-thickness = #1
          %\override StaffSymbol.ledger-line-thickness = #'(0 . 0)
        }

        \context {
          % adjust space between staff and lyrics and between the two lyric lines
          \Lyrics
          \override VerticalAxisGroup.nonstaff-relatedstaff-spacing = #'((minimum-distance . 5))
          \override VerticalAxisGroup.nonstaff-nonstaff-spacing = #'((minimum-distance . 2))
          includeGraceNotes = ##t
        }
      } % layout

      \new Voice \absolute {
        \clef treble
        \key c \minor
        \omit Score.TimeSignature
        \cadenzaOn % allows custom bar lines
        \tempoFunc "Andante" 4 "66"

        \autoBeamOff
        g'4  g' ( ~ g'8 \times 2/3  { fis'16 [g'16 as'] } g'8 [ fis'!] ) g'1 f'4 es' d'8 c' es' d'

        c'4  \times 2/3  { b8 ( [c' d'8] )  } c'2 \bar"!" \break

        g'8 g' c''4 ( es'' d'' ) \tupletUp c''4 \tuplet 3/2 { b'8 ([ c''] ) d''8 } c''2  \tupletNeutral \bar "!" \break

        bes'4 as' g'4. g'8 c''4 bes' as' as' as'8 as' bes' c'' g'2 \bar"!" \break

        as'4 bes' c''2 d''4 c'' bes' c'' g'2.  \bar"!" \break

        f'2 g'8 [( as' )] bes'4 c'' bes' as'4 g' f' es' d'2 \bar"!" \break

        d'4 ( es' ) f' g' bes'8 as' as' bes' g'2 \bar"!" \break

        g'4 c''8 d'' es''4 d'' c'' bes' as'4 as'8 as' bes' c'' g'2 \bar"!" \break

        bes'2 as'4 g' f'4 es' d' es' f'4 g' as' ( bes' ) g'2. \bar"!" \break

        c''2 bes'4 as' g'4 f' es' d' es'4 f' g' as' bes' c'' g'2 \bar"!" \break

        g'4 es''2 d''4 c''4  \times 2/3  { b'8 ( [c'' d''8] ) }  c''2. \bar"!"  es'8. f'16 \noBeam g'2 \bar"!" \break

        g'4 as' f'4 f' f' es'8. f'16 g'2 \bar"!" g'4 as' f'4 f' es'8. f'16 g'2 \bar"!" \break

        g'4 c'' bes' as'8. bes'16 g'2 \bar"!" g'4 es''8. es''16 d''4 c'' bes' as'8 g' f'2 es'2. \bar"!" \break

        es'2 d'4 c' b! c'8. c'16 d'4 c'2 \bar"!" \break

        es'8. es'16 f'4 g' as'4 g' fis' g'8. g'16 \noBeam as'4 g'2  \bar"!" \break

        g'4 c''2 \bar"!" b'4  as'4 g' f' es' d'4 es' d' c'  \times 2/3  {
          b!4 ( c'4 d' )
        } c'2  \bar"!" \break

        es'4 es'2 c'4 d'4 es' c'2  \bar"!" f'4 as' g'  fis'4 g' as' g'2  \bar"!" \break

        g'4 c'' b'! c'' d'' es''4 c''2 \bar"!" g'4 bes' as' g' f' es'd'4 ( es' ) c'1 \bar "|."

      }


      \addlyrics {
        И -- ма --
        ше че -- ло -- век, "про-" -- "во-" -- ден от Бо --
        га, и -- ме -- то __ му И -- о -- ан. Той дой --
        де "в~сви-" -- де -- тел -- ство да сви -- де -- "тел-"
        -- ству -- ва за -- ра -- ди ви -- де -- ли -- на
        -- та, за да __ по -- вяр -- ват всич -- ки чрез не
        -- го. Не __ бе той ви -- де -- ли -- на -- та, но
        да сви -- де -- тел -- ству -- ва за ви -- де --
        ли -- на -- та. Той бе -- ше ис -- тин -- на --
        та ви -- де -- ли -- на, ко -- я -- то о -- све
        -- тя -- ва все -- ки -- го че -- ло -- ве -- ка,
        що и -- де на све -- та. В~све -- та бе и све
        -- тът чрез Не -- го "ста-" -- на и све -- тът Го
        не "поз-" -- на. В~Сво -- и -- те Си "дой-" -- де, но
        Сво -- и -- те Му Го не при -- е -- ха. А ко
        -- и -- то Го при -- е -- ха, да -- де им власт
        да бъ -- дат ча -- да Бо -- жии, си -- реч, ко
        -- и -- то вяр -- ват в~Не -- го -- во -- то И --
        ме, ко -- и -- то не от кръв, ни -- то от по
        -- хот плът -- ска, ни -- то от по -- хот мъж --
        ка, но от Бо -- га се ро -- ди -- ха.}

        \header {
          title = \titleFunc #'ref_desc_9 "Имаше человек" "Imaše čelovek"
        }

        \midi{}

      } % score


    } % bookpart
