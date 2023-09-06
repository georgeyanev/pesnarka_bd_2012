\version "2.24.2"

\include "include/globals.ily"

\bookpart {
  \label #'ref122
  \tocItem \markup "Радост и скръб – Radost i skrăb "
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \relative c' {
      \clef treble
      \key a \minor
      \time 3/4
      \tempoFunc "Andante" 4 "60"
      \autoBeamOff
      a8.  b16  c4  d4 | % 2
      e8.  e16  e2 | % 3
      a8  g8  f8  d8  e8
      f8 | \break % 4
      e2  a8.  a16  | % 5
      a8  a8  c4  b8  a8 | % 6
      \time 2/4  | % 6
      g4  f8 [(  d8 )] | % 7
      e2 | % 8
      \time 5/4 \break  | % 8
      d4  d8  e8  f4  a2 | % 9
      \time 3/4  | % 9
      g8  f8  e8  d8  f4 \break |
      e4.  a,8  b8  c8 | % 11
      c4  b2  | % 12
      g'8  f8  e8  d8
      \tuplet 3/2 { c8 ( [  b8 )]  a8  }
      | \break % 13
      a4.  a8  b8  c8 | % 14
      c4  b2  | % 15
      g'8  f8  e8  d8
      \tuplet 3/2 { c8 ( [  b8] ) a8 }
      | % 16
      a2 r4 \break \bar "||" % 17
      a2 ^\markup{ \bold {Più mosso} }  e'4 | % 18
      a2  g4 | % 19
      f2. |
      d2  e8 ( [  f8 ) ] \break | % 21
      g2  f4 | % 22
      e2 (  d4 ) | % 23
      e2. \bar "||"
      e4 ^\markup{ \bold {Largamente} }  f4  c4 | % 25
      e2. \bar "||"
      a2 ^\markup{ \bold {Più mosso} }  a4 | % 27
      c2  b4 \break | % 28
      b2 (  a8 [  b8 ) ] | % 29
      a2 (  g4 ) |
      f2  e8 ( [  f8 ) ] | % 31
      g2  f4 | % 32
      e2  c8 ( [  d8 ) ] | % 33
      e2. | % 34
      a,2  a8 ( [  b8 ) ] \break | % 35
      c2 (  d4 ) | % 36
      e2 (  f4 ) | % 37
      e2  d4 | % 38
      c2  b4 | % 39
      a2  gis4 |
      b2. | % 41
      a2. \bar "||"
      \break  | % 42
      a8. ^\markup{ \bold {Poco più agitato} }  b16
      c8  d8  e8.  e16 | % 43
      \time 2/4  | % 43
      e2 | % 44
      \time 4/4  | % 44
      \tuplet 3/2 {f8   e8  d8 }
      \tuplet 3/2 {c8  d8  e8 }
      e2  |
      a4.  g8  a16  g16  f16
      e16  d16  c16  d16  e16 | % 46
      e2  a4  gis8 ( [  a8 ) ] \break | % 47
      b8.  e,16  e4  e'16
      d16  c16  b16  a8.  a16 |\break   % 48
      \time 2/4  | % 48
      a2 | % 49
      c8.  c16  c4  |
      b16  c16  d16  c16
      b16  a16  gis16  a16 \break| % 51
      b4  e,8.  e16 | % 52
      e2  | % 53
      b'16  c16  d16  e16
      d16  c16  b16  d16 | \break % 54
      c16  b16  a16  gis16
      b8.  a16 | % 55
      a2 \break \bar "||" | % 56
      \time 3/4  | % 56
      f4 ^\markup{ \bold {Poco meno mosso} }  e4
      dis4 | % 57
      e2  e4 | % 58
      a4  gis4
      \tuplet 3/2 { f8 ( [  e8 ] )  dis8  }
      | % 59
      e4.  e8  f8  g8 | \break
      g4 (  a4 )  f8.  e16  | % 61
      g8  f8  e4  d4 | % 62
      d2
      \tuplet 3/2 { b8 ( [  c8 ) ]  d8  }
      | % 63
      \break | % 63
      \time 4/4 e4.  d8  e16  d16  c16
      b16  a8  gis8 | % 64
      \time 2/4 a2 \bar "||"  \break | % 65
      a'8. ^\markup{ \bold {Allegretto} }  b16
      c8  a8  | % 66
      b4  e,4  | % 67
      a2  | % 68
      a8.  b16  c8  a8  \break | % 69
      b4  e,4  |
      a2   | % 71
      c8.  d16  e8  c8  | % 72
      d4  b4  | \break % 73
      c2  | % 74
      b8.  c16  d8  e8  | % 75
      f4  e8.  dis16  | % 76
      e2  \break  | % 77
      a8. g16 f8 e8  | % 78
      d4 c8 ( [ d8 ) ] | % 79
      e2 |\break 
      a,8 b8 c8 b8  | % 81
      d8 c8 b8  a8  | % 82
      a8  gis8  a8 b8 | % 83
      \time 3/4  | % 83
      a2 ^\fermata
      \tuplet 3/2 { \tempo "Andante" b8 ( [ c8 ) ] d8  }
      \time 4/4  | % 84
      e4. \fermata
      d8 e16  d16 c16  b16
      a8 gis8 | \break % 85 

     \time 3/4 a2
    
     \tuplet 3/2 { 
      \once \override TextScript.extra-offset = #'(-1.8 . 3.5)
      b,8-\markup \bold \fontsize #+2 {"("} 
       ( [ c8 ) ] d8  } |
      \time 4/4   % 84
      e4. \fermata
      d8 \tempo "rit." e16  d16 c16  b16
      a8 gis8 | 
      \time 2/4
      \override TextScript.extra-offset = #'(3 . 3.0)      
      a2-\markup \bold \fontsize #+2 {")"}
       \bar "|."
    }

    \addlyrics {
       Слу -- шал съм за те -- бе, скръб,
      че жес -- то -- ка си би -- ла, че
      стра -- да -- ни -- я при -- чи -- ня
      -- ваш __  ти. Не зна -- еш ли ти,
      че съм бе -- ден стран -- ник? Ка
      -- жи що ис -- каш ти от ме -- не,
      скръб, ка -- жи! Ка -- жи що
      ис -- каш, не -- ка аз то -- ва __
      да знам! "„Мъч" -- но мо -- же
      мен ня -- кой __  да о -- би
      -- ча. Там е скръб -- та! Кой --
      то мен о -- би  --  ча __
      и при  -- е -- ма ме до  --
      бре, са -- мо __ той __ мо
      -- же Жи -- во -- та да раз -- би
      -- ра. Тру -- ден е и стръ -- мен
      е пъ -- тят, по кой -- то вър --
      вя. Мъч -- но мо -- же да ме след
      -- ва ня -- кой там, а за __
      смърт -- ни -- я не -- въз -- мож --
      но е поч -- ти. Ня -- кой пък да
      о -- би -- ча и доб -- ре да мис --
      ли за мен, тряб -- ва той да бъ
      -- де жи -- тел съ -- вър -- ше -- но
      от друг "свят.“" Ра -- дост и
      скръб, то -- ва са пъ  -- ти --
      ща да се раз -- би -- ра ве --
      ли -- ки -- я Жи -- вот. Лю  --
      бов -- та ед -- нак -- во и две --
      те це -- ни. Скръб и Ра -- дост
      все ед -- но, скръб и Ра -- дост
      все ед -- но, Лю -- бов -- та щом
      в~тях ца -- ри. Прав -- да -- та
      в~скръб -- та се це -- ни, а Доб
      -- ро -- "то –" в~Ра -- дост  -- та.
      Тях да въз -- при -- е -- мем, друж
      -- но да вър -- вим на -- пред. Лю
      -- бов -- та ед -- нак -- во и
      две -- те це -- ни. (Лю
      -- бов -- та ед -- "нак-" -- во и
      две -- те це -- ни.)
     }
      \addlyrics {
       Slu -- šal săm za te -- be, skrăb,
      če žes -- to -- ka si bi -- la, če
      stra -- da -- ni -- ja pri -- či -- nja
      -- vaš __  ti. Ne zna -- eš li ti,
      če săm be -- den stran -- nik? Ka
      -- ži što is -- kaš ti ot me -- ne,
      skrăb, ka -- ži! Ka -- ži što
      is -- kaš, ne -- ka az to -- va __
      da znam! "„Măč" -- no mo -- že
      men nja -- koj __ da o -- bi
      -- ča. Tam e skrăb -- ta! Koj --
      to men o -- bi  --  ča __
      i pri  -- e -- ma me do  --
      bre, sa -- mo __ toj __ mo
      -- že Ži -- vo -- ta da raz -- bi
      -- ra. Tru -- den e i stră -- men
      e pă -- tjat, po koj -- to văr --
      vja. Măč -- no mo -- že da me sled
      -- va nja -- koj tam, a za __
      smărt -- ni -- ja ne -- văz -- mož --
      no e poč -- ti. Nja -- koj păk da
      o -- bi -- ča i dob -- re da mis --
      li za men, trjab -- va toj da bă
      -- de ži -- tel să -- văr -- še -- no
      ot drug "svjat.“" Ra -- dost i
      skrăb, to -- va sa pă  -- ti --
      šta da se raz -- bi -- ra ve --
      li -- ki -- ja Ži -- vot. Lju  --
      bov -- ta ed -- nak -- vo i dve --
      te ce -- ni. Skrăb i Ra -- dost
      vse ed -- no, skrăb i Ra -- dost
      vse ed -- no, Lju -- bov -- ta štom
      v~tjah ca -- ri. Prav -- da -- ta
      v~skrăb -- ta se ce -- ni, a Dob
      -- ro -- "to –" v~Ra -- dost  -- ta.
      Tjah da văz -- pri -- e -- mem, druž
      -- no da văr -- vim na -- pred. Lju
      -- bov -- ta ed -- nak -- vo i
      dve -- te ce -- ni. (Lju
      -- bov -- ta ed -- "nak-" -- vo i
      dve -- te ce -- ni.)
     }

        \header {
          title = \titleFunc "Радост и скръб" "Radost i skrăb"
        }

        \midi{}

      } % score
 \markup \empty-two
     

      % include foreign translation(s) of the song
      \include "lyrics_de/122_radost_i_skrab_lyrics_de.ly"

    } % bookpart
