\version "2.24.0"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \relative c' {
      \clef treble
      \key d \minor
      \tempo "Senza misura"
      \autoBeamOff
      \omit Score.TimeSignature
      \cadenzaOn % allows custom bar lines


      \acciaccatura g'8 (a2 \tuplet 3/2 { g8 [f g] } \bar "|"
      a4) a2 g4 a4 \bar "|"
      \slurDown a8( [bes a g f g] \acciaccatura { a16 [b] } c4 b!8 [c]) a2 \bar "|" \break

      \slurNeutral g4 a a8 ([g a bes]) g2 \bar "|"
      d'2 c4 (b8 [c]) a8. ([bes16 a8 g]) \bar "|"
      \slurDown f8([ g] \acciaccatura { a16 [b] } c4 b!8[ c]) a2 \bar "|"  \break

      a8( [bes] \acciaccatura { c16 [d] } c4) bes8( [a g a]) g4. g8 \bar "|"
      \slurNeutral c8.( [bes16]) a8.( [g16]) g4 f8( [g \appoggiatura bes a g]) \bar "|"  \break

      f8( [e a g] f4. e8 d [e16 f]) d4 d2 \bar "|"
      \appoggiatura g8  a2( \tuplet 3/2 { g8 [f g] } a4) a2 c4( \stemUp b) \bar "|"  \break

      \stemNeutral c4( d  c b!8 [c]) a2 g4 a \bar "|"
      \stemUp a8( [b16 c] a8 [g]) f( [e a g]) \bar "|"  \break

      f4.( e8 d[ e16 f] d4) d2 r8 d \bar "|"
      \stemNeutral d'2 c4( b!8[ c]) a2 a4 \bar "|"  \break

      \slurDown a8([bes] \acciaccatura { c16 [d] } c4) bes8( [a] g [a]) g2 \bar "|"
      g4( f8 [e] d [e] c4) \bar "|"
      d8([ e f g]) g2 \bar "|"  \break

      c8([ bes a g]) f([ e a g]) \bar "|"
      f4.( e8) d([ e16 f] d4) d2 r8 d \bar "|"  \break
      \pageBreak

      g4( \acciaccatura { f16 [g] } f4 g a \acciaccatura { f16 [g] } f4 e8[  f]) \bar "|"
      d4.( e8) c4( d) \bar "|"  \break

      ees4.( d8 g8[ fis \acciaccatura { ees16 [fis] }  ees8 d]) d2\fermata \bar "|"
      a'4.( g8 fis16[ g] \acciaccatura { a16 [b] } c4) \slurNeutral b8([ c] a2) g4 a4 \bar "|"  \break

      \stemUp a8([ b16 c] a8  [g]) fis8([ ees a g]) fis4.( ees8 d[ ees16 fis] d4) d2 \bar "|"  \break

      \stemNeutral \slurDown a'4.( g8[ fis16 g] \acciaccatura { a16 [b!] } c4) \slurNeutral b8([ c]  a2)  a4 \stemUp b \bar "|"
      \stemNeutral c4( d \appoggiatura d8 c4 b!8[ c]) a2 g4 a \bar "|"  \break

      a8([ bes16 c a8 g]) fis([ ees a g] fis4. ees8) \bar "|"
      d8([ ees16 fis] d4) d r8 d \bar "|"  \break

      d'2( c4. d16[ ees] d4 c \appoggiatura c8 \stemUp bes4 a c8[ bes16 a]  \stemNeutral bes8[ c]) \bar "|"  \break

      d4( c \stemUp bes8[ c bes a] g16[ a bes c] \stemNeutral d4) \stemUp \slurDown c8([ bes16 a] \bar "|" \noBreak
      bes4. \stemNeutral c8 \acciaccatura { bes16 [c] } \stemUp bes8[ a16 g]  \bar "|" \noBreak
      a4. bes8 a[ g16 fis] \bar "|" \break

      g4. a8 g8[ fis16 ees] \bar "|"
      fis4) r8 fis \stemNeutral \slurNeutral c'4 d8([ c])  \bar "|"
      \stemUp bes4( a8[ bes]) g2 d4( ees)  \bar "|" \break
      \pageBreak

      g8([ fis g a] g4 fis8[ g] fis4. ees8 d8[ ees16 fis] d4) d2\fermata d4 d  \bar "|" \break

      \appoggiatura g8 a2 \acciaccatura { bes16([ c] } bes8[ a g fis g a]) a2 a4 \bar "|"
      \stemNeutral d4( c \acciaccatura { d16[ ees!]} d4 c \stemUp bes a) \acciaccatura { bes16[ a] } g2 \bar "|" \break

      \stemNeutral c4 d d4.( e8 \bar "|" \noBreak
      f4 e d c bes a) bes8([ a16 g] a4) \bar "|" \noBreak
      a8([ g16 fis] g4. a8 \tuplet 3/2 { g4 fis ees } \bar "|" \break

      d4. ees16[ g] fis8[ ees d ees] d2) d4 d \bar "|" \noBreak
      \appoggiatura g8( a2 \acciaccatura { bes16[ c] } bes8[ a] g8[ fis g) a] a2 d,4 ees \bar "|" \break

      g8([ fis g a] g4 fis8[ g] fis4. ees8) d([ ees16 fis)] d4 \bar "|" \noBreak
      d2( c8[  d ees! d] g8[ fis! ees!16 fis  ees d] d2)\fermata \bar "|."

      %\pageBreak
    }

    \addlyrics {
      Ан -- гел во -- пи -- я -- -- -- ше
      Бла -- го -- дат -- ней: Чис -- та -- я __ Де -- во,
      ра -- дуй -- ся! И па -- ки ре -- ку: __
      Ра -- -- дуй -ся! Твой __ Син "вос  -"
      кре -- -- се три -- дне -- вен __  от __
      гро -- ба и мерт -- ви -- я "воз -"
      двиг -- ну -- вий; лю -- -- ди -- е,
      ве -- се -- ли -- те -- ся! "Све -"
      ти -- -- -- -- -- -- ся, "све       -"
      "-ти" --  -- ся, но -- -- вий __ И -- "е -"
      ру -- -- са -- ли -- -- -- ме!
      Сла -- ва __ бо Гос -- под -- ня на "те -"
      бе __ воз -- -- си -- я: "ли -"
      куй __ ни -- -- не __
      и ве -- се -- ли -- ся, "Си -"
      о -- -- -- -- -- -- не! Ти же,
      чис -- та -- я, кра -- суй -- -- ся,
      Бо -- го -- ро -- -- -- ди -- це, __
      о во -- ста -- "ни – и      " рож -- "-дес-"
      тва __ Тво -- е -- го. __
    }

    \addlyrics {
      An -- gel vo -- pi -- ya -- -- -- she
      Bla -- go -- dat -- ney: CHis -- ta -- ya __ De -- vo,
      ra -- duy -- sya! I pa -- ki re -- ku: __
      Ra -- -- duy -sya! Tvoy __ Sin "vos  -"
      kre -- -- se tri -- dne -- ven __  ot __
      gro -- ba i mert -- vi -- ya "voz -"
      dvig -- nu -- viy; lyu -- -- di -- e,
      ve -- se -- li -- te -- sya! "Sve -"
      ti -- -- -- -- -- -- sya, "sve       -"
      "-ti" --  -- sya, no -- -- viy __ I -- "e -"
      ru -- -- sa -- li -- -- -- me!
      Sla -- va __ bo Gos -- pod -- nya na "te -"
      be __ voz -- -- si -- ya: "li -"
      kuy __ ni -- -- ne __
      i ve -- se -- li -- sya, "Si -"
      o -- -- -- -- -- -- ne! Ti zhe,
      chis -- ta -- ya, kra -- suy -- -- sya,
      Bo -- go -- ro -- -- -- di -- tse, __
      o vo -- sta -- "ni – i      " rozh -- "-des-"
      tva __ Tvo -- e -- go. __
    }

    \header {
      title = \titleFunc "Ангел вопияше" "Angel vopiyashe"
    }

    \midi{}

  } % score


  % include foreign translation(s) of the song
  \include "lyrics_de/064_Angel_vopiashe_lyrics_de.ly"

} % bookpart
