\version "2.22.1"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute {
      \clef treble
      \key c \major
      \time 4/4
      \tempoFunc "Lento" 4 "50"
      \autoBeamOff
      \override Hairpin #'to-barline = ##f
      \override Hairpin #'after-line-breaking = ##t 
      e'4  d'4  f'4  e'4 | % 2
      d'8  d'8  c'8  d'8  e'4
      e'4 | % 3
      e'4  d'4  e'4 r4 | % 4
      \time 6/8  | % 4
      \tempoFunc "" 4. "50"
      g'8  g'8 c''8 b'4. \break | % 5
      a'4.  g'4  f'16 ( [  g'16 ) ] | % 6
      a'4 c''8 e''8 ( [ d''8
      c''8 ) ] | % 7
      b'8  a'8 ( [  g'8 ) ]  f'4  e'8
      | % 8
      e'4. ( \appoggiatura {  g'8 }  f'4 )
      d'8 \break | % 9
      d'4.  e'4. |
      r4  g'8
      \tempoFunc "Più mosso" 4. "63"
      g'4. ~ ^\< | % 11
      g'4.  g'4. | % 12
      g'4  g'8  g'4  g'8 | % 13
      a'4. ~  a'4  g'8 _\! \break | % 14
      c''4.  r4  e'8 | % 15
      \time 9/8  | % 15
      f'4. ^\markup{ \italic {poco rall.} }  e'4. r4. \bar
      "||"
      \key es \major \time 4/4 | % 16
      \tempoFunc "Largo" 4 "46"
      g'8 ^\<  g'8  g'8 c''8 d''8
      es''8 d''8 c''8 ^\! \break | % 17
      \grace {  c''16 ( [  d''16 ] } c''8 ) ^\>
      bes'8  as'8 bes'8 c''8
      as'8 \grace {  g'16 ( [  as'16 ] }  g'8 )
       ^\! f'8 | % 18
      g'8 ^\<  as'8 bes'8 c''8  ^\!
      c''16 ( [ bes'16  as'16 )  ] g'16
      f'8  es'8  \bar "||"
      \break | % 19
      \time 6/8  | % 19
      \tempoFunc "" 4. "46"
      g'4. ^\>  g'4.  ^\! |
      as''8 ( [ ^\p g''8 ) ] f''8
      es''8 ( [ d''8 ) ] c''8 | % 21
      bes'8 ( [  as'8 ) ]  g'8 c''8 ( [
      es''8 ) ] d''8 | % 22
      c''4 d''8 es''4. ~ \break | % 23
      es''4. r4. | % 24
      bes''8 ( [ as''8 ) ] g''8
      f''8 ( [ es''8 ) ] d''8 | % 25
      c''8 ( [ bes'8 ) ]  as'8  g'8
      \acciaccatura {  bes'8 ( }  as'8 )  f'8 | % 26
      es'4. r4. \break | % 27
      bes'4 bes'8 bes'4. | % 28
      bes'8 ( [ c''8 ) ] bes'8
      es''4. | % 29
      bes'4. r4. |
      bes'8 ( [  as'8 ) ]  g'8  g'4. | % 31
      f'4. r4. \break| % 32
      c''8 ( [ es''8 ) ] d''8 c''4
      d''8 | % 33
      bes'4. r8 r8  as'8 ^\< | % 34
      c''4 ^\! bes'8  as'8 ^\>  g'8
      f'8 | % 35
      \times 3/2  {
        es'8   d'8
      }
      es'4. ^\! \break | % 36
      R2. | % 37
      g'8 d''8 c''8 bes'8
      as'8  f'8 | % 38
      g'4. r4. | % 39
      c''8 d''8 es''8 g''4
      ^\fermata f''8 \break |
      \time 3/8  |
      es''4 c''8 | % 41
      \time 2/4  | % 41
      es''8 ^\> d''8 c''8 ( [ d''8
      ) ] | % 42
      bes'2 ^\! | % 43
      \time 3/8  | % 43
      as'8  g'8  f'8 | % 44
      c''8 bes'8  as'8 \break | % 45
      g'8 ( [  as'8 ) ]  f'8 | % 46
      f'4. | % 47
      g'4. | % 48
      bes'8 c''8 d''8 | % 49
      es''8 d''8 c''8 \break |
      g'4 \once \omit TupletBracket
      \times 2/3  {
        as'16 ( [  g'16  f'16 ) ]
      }
      | % 51
      c''4. | % 52
      g'4.  \breathe | % 53
      d''8 c''8 bes'8 | % 54
      \time 6/8  | % 54
      as''8 ( [ g''8 ) ] f''8 es''8
      ( [ d''8 ) ] c''8 \bar "||"
      \break | % 55
      \time 2/4  | % 55
      \tempoFunc "" 4 "46" | % 55
      bes'4 ( \acciaccatura {
        c''16 [bes'16 a'16
        bes'16 ]
      }
      f''8 )  \breathe as'8  | % 56
      \time 4/4  | % 56
      g'4  f'4  es'4 (  d'4 ) \bar "||"
      es'2. r4 \bar "||"
      \break | % 58
      \once \override Staff.KeyCancellation #'break-visibility = #all-invisible
      \key e \major \time 3/4 | % 58
      \tempoFunc "Moderato" 4 "72"
      b'4. b'8 b'8 b'8 | % 59
      cis''2 b'4 |
      e''4. b'8 \once \omit TupletBracket
      \times 2/3  {
        a'8 ( [  gis'8  fis'8 ) ]
      }
      | % 61
      gis'2 r8  gis'8 \break | % 62
      \time 6/4  | % 62
      a'8 ^\< b'8 cis''8 dis''8
      dis''2 ^\! 
      \once \override Hairpin #'to-barline = ##t
      e''2 ^\> \bar "||"
      \key b \major \time 2/4 | % 63
      \tempoFunc "Meno mosso" 4. "52"
      dis''8 ( [ _\! e''8 ] fis''8 [
      gis''8 ] | % 64
      cis''8 [ dis''8 ) ] e''4 | % 65
      b'8 ( [ cis''8 ] dis''16 [
      e''16 fis''16 dis''16 ) ] \break | % 66
      gis''16 ( [ fis''16 e''16
      dis''16 ) ] dis''8 cis''8 | % 67
      \grace {  cis''16 ( [  dis''16 ] } cis''8 )
      ( [ b'8 ) ]  b'8 ( [  ais'8 ) ] | % 68
      gis'8 ( [  ais'8 ) ] b'4 \bar "||"
      \time 9/8  | % 69
      \tempoFunc "Più mosso" 4. "104"
      dis''8 ( [  e''8
      dis''8 ] e''8 [
      fis''8 e''8 ) ] fis''8 ( [ gis''8
      fis''8 ) ] \break |
      cis''8 ( [ dis''8 cis''8 ]
      dis''8 [ e''8 dis''8 ) ] e''8 ( [
      fis''8 e''8 ) ] | % 71
      b'8 ( [ ^\markup{ \italic {rit. molto} } cis''8
      b'8 ] cis''8 [ dis''8 cis''8
      ) ] dis''8 ( [ e''8 ) dis''8 ] | % 72
      
      b'8 [ \acciaccatura { cis''16 [  dis''16 ] }
      cis''8 ( b'8 )]  
      
      b'8 [ \acciaccatura { b'16 [  cis''16 ] }
      b'8 ( ais'8 )] 
      
      b'4. \break | % 73
      \time 4/4  | % 73
      \tempoFunc "Moderato" 4 "80"
      dis''16 ( [ cis''16 dis''16
      e''16 ] fis''16 [ e''16 fis''16
      gis''16 ] ais''16 [ gis''16
      ais''16 b''16 ) ] cis'''16 ( -. [
      dis'''16 -. e'''16 -. dis'''16 -. ] | % 74
      \time 3/4  | % 74
      cis'''16 -. [ b''16 -. ais''16 -.
      gis''16 ) -. ] fis''16 ( -. [ e''16 )
      -. ] ^\markup{ \italic {rit.} } dis''16 -. cis''16
      -. \acciaccatura {  cis''16 [  dis''16 ] } cis''8
      b'8 \break | % 75
      b'8  ais'8 b'4 r8
      b'8^\<
       \tempoFunc "Meno" 4 "60"
       \time 2/4  | % 76
      cis''8 dis''8 e''8. cis''16
      | % 77
      \time 4/4  | % 77
      fis''4. ^\! fis''8 
      <\parenthesize b'
      b''>2 ^\>
      \once \override Score.BarLine.break-visibility = ##(#f #f #f)      
      s^\ppp ^\! \bar "|."
    }

   \addlyrics {
      А
      -- ко бя -- ха ва -- ши -- те у -- ши
      от -- во -- ре -- ни, щях -- те да
      чу -- е -- те гла -- са на Ан
      --  ге -- ли -- те, ко -- и
      --  то пе -- ят. Те пе --
      ят пе -- сен -- та на Лю -- бов
      -- та. Те пе -- ят: „Ви -- е, че --
      ло -- ве -- ци -- те, ко -- и --
      то сте съз -- да -- де -- ни --
      по об -- раз и по -- до --
      би -- е на Бо -- га, слу -- шай
      -- те  гла -- са  на ва --
      ши -- я Тво -- рец, __ слу --
      шай -- те  гла -- са  на ва
      -- шия Ба -- ща, Кой -- то днес
      ви  го -- во -- ри. Слу -- шай
      -- те Го. Слу -- шай -- те Го
      вий, и ни -- е съ -- що Го слу --
      ша -- ме. Вър -- ше -- те Во -- ля --
      та Му, и ни -- е съ -- що вър --
      шим Во -- ля -- та  Му. То -- зи
      е сми -- съ -- лът на  Жи -- во
      -- та, то -- зи е сми -- съ -- лът
      на Жи --  во -- та, сми -- съ
      -- лът на  Жи -- во -- та, на
      без -- смър -- ти
      -- е -- то.“ Е -- то пе -- сен --
      та на Ан -- ге -- ли  --  те,
      ко -- и -- то се -- га пе -- ят:
      „Сла --     ва на
      на --
      ши -- я   Ве -- лик
      Тво -- рец. Сла --
      ва,   сла --
      ва,   сла --
      "ва    на" "на -  ши" --
      "я       Ба" -- ща. Сла -- "" -- "" --
      ва на   на -- ши -- я Ба
      -- ща, на на -- ши -- я Ве -- лик Ба
      -- ща.}
      \addlyrics {
        A
        -- ko bya -- ha va -- shi -- te u -- shi
        ot -- vo -- re -- ni, shtyah -- te da
        chu -- e -- te gla -- sa na An
        --  ge -- li -- te, ko -- i
        --  to pe -- yat. Te pe --
        yat pe -- sen -- ta na Lyu -- bov
        -- ta. Te pe -- yat: „Vi -- e, che --
        lo -- ve -- tsi -- te, ko -- i --
        to ste saz -- da -- de -- ni --
        po ob -- raz i po -- do --
        bi -- e na Bo -- ga, slu -- shay
        -- te  gla -- sa  na va --
        shi -- ya Tvo -- rets, __ slu --
        shay -- te  gla -- sa  na va
        -- shia Ba -- shta, Koy -- to dnes
        vi  go -- vo -- ri. Slu -- shay
        -- te Go. Slu -- shay -- te Go
        viy, i ni -- e sa -- shto Go slu --
        sha -- me. Var -- she -- te Vo -- lya --
        ta Mu, i ni -- e sa -- shto var --
        shim Vo -- lya -- ta  Mu. To -- zi
        e smi -- sa -- lat na  Zhi -- vo
        -- ta, to -- zi e smi -- sa -- lat
        na Zhi --  vo -- ta, smi -- sa
        -- lat na  Zhi -- vo -- ta, na
        bez -- smar -- ti
        -- e -- to.“ E -- to pe -- sen --
        ta na An -- ge -- li  --  te,
        ko -- i -- to se -- ga pe -- yat:
        „Sla --     va na
        na --
        shi -- ya   Ve -- lik
        Tvo -- rets. Sla --
        va,   sla --
        va,   sla --
        "va    na" "na -  shi" --
        "ya     Ba" -- shta. Sla -- "" -- "" --
        va na   na -- shi -- ya Ba
        -- shta, na na -- shi -- ya Ve -- lik Ba
        -- shta.}

    \header {
      title = \titleFunc "Песента на ангелите" "Pesenta na angelite"
    }

    \midi{}

  } % score

  \markup \empty-one

  % include foreign translation(s) of the song
   \include "lyrics_de/207_pesenta_na_angelite_lyrics_de.ly"

} % bookpart

% Più mosso
%