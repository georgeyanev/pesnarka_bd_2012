\version "2.24.2"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute {
      \clef treble
      \key e \minor
      \time 5/4
      \tempoFunc "Moderato" 4 "60"
      \autoBeamOff
      \repeat volta 2 {
    b'4 a'16 g'16 fis'16
    e'16 e'8. d'16 d'2 | % 2
    c'4 c'8 d'16 ( [ e'16 ) ]
    d'8 c'8 b2 \break | % 3
    e'4 fis'16 g'16 a'16 b'16
     c''8  d''16 ( [  c''16 ) ] 
    b'2 | % 4
     e''4  d''16  c''16 b'16
     d''16  c''8. b'16 b'2 \break
    | % 5
    \time 6/4  a'4 a'4 \times 2/3 {
      a'8*255/256 ( [ b'8*255/256 ) ] a'8*129/128
    }
    g'8. fis'16 fis'2 | % 6
    e'4 e'8 e'16 ( [ fis'16 ) ]
    g'8 g'16 a'16 g'8. fis'16
    fis'4. e'8 \break | % 7
   \time 4/4  e'4 d'4 
    c'4 c'4
  }
  \alternative {
    {
      | % 8
      c'8 ( [ e'8 ) ] d'8 c'8
      b2
    }
    {
      | % 9
      c'8 ( [ e'8 ) ] d'8 c'8
      b2
    }
  }
}
    \addlyrics {Теб тър -- ся, Бо -- же, Гос --
  по -- ди, Теб ви -- кам  все -- ки ден. Сър
  -- це -- то ми за теб коп -- ней ко -- га --
  то "стра-" -- дам в~са -- мо -- та. Тв -- ят све
  -- тъл лик "све-" -- щен ти -- хо из -- гря
  -- ва "в~ду-" -- ша -- та ми, и се за -- раж -- да
  но -- ви -- я ден. но -- ви -- я ден.}

      \addlyrics {О, дай ми "ра-" -- дост, Бо -- же
  мой, свет -- ла на -- деж -- да в~мен. Аз ще
  те "след-" -- вам ви -- на  __ ги. С Теб ще
  жи -- ве -- я нощ и ден и ще хо -- дя
  в~тво -- я път на "Прав-" -- да и на 
  Ис -- ти -- на, на Мъд -- рост и на свя
  -- та Лю -- бов. свя -- та Лю -- бов.}

    \header {
      title = \titleFunc " Мелодия 9" "Melodija 9"
    }

    \midi{}

  } % score

  % include foreign translation(s) of the song
  

} % bookpart

% Più mosso
%
