\version "2.22.1"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \relative c' {
      \clef treble
      \key g \major
      %\tempo "Moderato" 8 = 160
      \autoBeamOff
      \omit Score.TimeSignature
      \cadenzaOn % allows custom bar lines
      \tempoFunc "Andante" 4 "63"
      \autoBeamOff

      g4 b d d8. e16 d 2  \bar "!"  d4 e e a g8. g16 fis2 \bar  "!" \break
      d4 g g g8. a16 b2 \bar "!" b4 b b b8. c16 d2 \bar "!" c4 c b d8. b16 a2 \bar "!"  \break
      a4 a4 a4  b8. a16 g2 \bar "!"
      \tempoFunc "Più mosso" 4 "80"
      d4 b'8. a16 g4 fis4 \bar "!" fis4 e e e e8. fis16 d2  \bar "!"  \break
      c8. c16 c4 e e d b8. b16 b2 \bar "!" c8. b16 a4 c4 c4 c4 d8. d16 b2 \bar "!"  \break
      b8. c16 d4 d e e a8. g16 fis2 \bar "!" fis8. g16 a4 a4 b a g8.  a16 b2 \bar "!"  \break
      b8. c16 d4 c b a a8. b16 g2  \bar "!"  b,4 b b8.c16 d2 \bar "!"  \break
      e4 a, a8. b16 c2 \bar "!" e4 e4 a8. g16 fis2 \bar "!"  a4 a b8. a16 g2 \bar "!"  \break

      b4b d8. c16 b2  \bar "!" c4b a8. a16 a2  \bar "!"  g4 fis4 a8. g16 fis2 \bar "!"  \break

      e4 e fis8. e16 d2 \bar "!" \tempo "rit." c8. c16 c4 e4 e d b8 b16 b2 \bar "|."  \break


    }

    \addlyrics {
      Скръб -- та си ти "ка-"  -- жи,
      сър -- це си ти от -- во -- ри
      на слън -- че -- ви "лъ-" -- чи,
      на слън -- че -- ви "лъ-" -- чи,
      на слън -- че -- ви "лъ-" -- чи,
      на слън -- че -- ви "лъ-" -- чи.
      Лъ -- чи от Бо -- га
      бла -- гост ще ти до -- "не-" -- сат,
      и в~ду -- "-ша" ти Ра -- дост ще "вне-" -- сат,
      и в~ду -- "-ша" ти Ра -- дост ще "вне-" -- сат,
      и в~ду -- "-ша" ти Ра -- дост ще "вне-" -- сат,
      и в~ду -- "-ша" ти Ра -- дост ще "вне-" -- сат,
      и в~ду -- "-ша" ти Ра -- дост ще "вне-" -- сат,
      Ра -- дост ще "вне-" -- сат, Ра -- дост ще "вне-" -- сат,
      Ра -- дост ще "вне-" -- сат, Ра -- дост ще "вне-" -- сат,
      Ра -- дост ще "вне-" -- сат, Ра -- дост ще "вне-" -- сат,
      Ра -- дост ще "вне-" -- сат, Ра -- дост ще "вне-" -- сат,
      и в~ду -- "-ша" ти Ра -- дост ще "вне-" -- сат.}

      \addlyrics {
        Skrab -- ta si ti "ka-"  -- zhi,
        sar -- tse si ti ot -- vo -- ri
        na slan -- che -- vi "la-" -- chi,
        na slan -- che -- vi "la-" -- chi,
        na slan -- che -- vi "la-" -- chi,
        na slan -- che -- vi "la-" -- chi.
        La -- chi ot Bo -- ga
        bla -- gost shte ti do -- "ne-" -- sat,
        i v~du -- "-sha" ti Ra -- dost shte "vne-" -- sat,
        i v~du -- "-sha" ti Ra -- dost shte "vne-" -- sat,
        i v~du -- "-sha" ti Ra -- dost shte "vne-" -- sat,
        i v~du -- "-sha" ti Ra -- dost shte "vne-" -- sat,
        i v~du -- "-sha" ti Ra -- dost shte "vne-" -- sat,
        Ra -- dost shte "vne-" -- sat, Ra -- dost shte "vne-" -- sat,
        Ra -- dost shte "vne-" -- sat, Ra -- dost shte "vne-" -- sat,
        Ra -- dost shte "vne-" -- sat, Ra -- dost shte "vne-" -- sat,
        Ra -- dost shte "vne-" -- sat, Ra -- dost shte "vne-" -- sat,
        i v~du -- "-sha" ti Ra -- dost shte "vne-" -- sat.
        }

        \header {
          title = \titleFunc "Скръбта си ти кажи" "Skrabta si ti kazhi"
        }

        \midi{}

      } % score

      \markup \italic \dc-one-nobold "(По желание песента се изпълнява два пъти/Nach Wunsch wird das Lied zwei Mal gesungen.)"
      \markup \italic \dc-one-nobold "attacca „Скръбта си ти кажи“„Teile mir deine Trauer mit“"
      \markup \empty-three
      % include foreign translation(s) of the song
      \include "lyrics_de/077_skrabta_si_ti_kazhi_lyrics_de.ly"

    } % bookpart
