\version "2.24.0"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute {
      \clef treble
      \key d \major
      \time 6/4
      \tempoFunc "Largo" 4 "40"
      \partial 4
      \autoBeamOff

      b8. cis'16| d'8 fis'4. eis'8 fis'8 g'8 fis'4. fis'8 b'8| d''4. d''8 cis''4 b'2 fis'8. b'16 | \break

      \time 5/4  a'8 g'4. e'8. fis'16 g'8 fis'4. | \time 6/4 fis'8 e'8 d'4 cis'4 b2 fis'8. b'16 \time 5/4 | \break

      \time 5/4  a'8 g'4. e'8. fis'16 g'8 fis'4. | \time 5/4 fis'8 e'8 d'4 cis'4 b2 | \break

      \time 5/4 d'4. d'8 cis'4 b2 | cis'2 b8 ais8 b4. r8 | \break

      \bar ".|:"

      \time 4/4 b4 cis'4 d'4 b4 | \time 3/4 d'4 fis'2 | \time 4/4 e'4 fis' g' e' | \time 3/4 g'4 b'2  \break
      \pageBreak

      \time 6/4 b'4 cis''4 d'' b' g' e' | g' b' a' g' fis' b | \break

      cis'8 d' fis' e' d'4 cis' b2 | fis'4 b' d'' b' g' e' |\break

      g'4 b'4 a'4 g'4 fis'4 b |  cis'8 d' fis' e' d'4 cis'4 b2 | \break

      \bar ":|."

      \time 3/4


      b8. cis'16 d'8 fis'4. | e'8. fis'16 g'8 fis'4. | fis'8 b'8 d''4. b'8| \break

      \time 4/4 cis''4. ais'8 b'4. r8 | \time 3/4 fis'8. b'16 a'8 g'4. | e'8. fis'16 g'8 fis'4. | \break

      \time 5/4	fis'8 e' d'4 cis' b4. r8| \time 4/4 d'8. d'16 cis'4 b2 | \time 5/4 cis'2 b8 ais8 b2 | \break


    }

    \addlyrics {
      Във у -- ма ми ми -- съл чу -- ка, все -- ки час ме пи -- та,
      що в'жи -- во -- та е ре -- ал -- но, що е същ -- но -- ста,
      що в'жи -- во -- та е ре -- ал -- но, що е същ -- но -- ста.
      А Ду -- хът ми шеп  -- не та  -- ка:

      "1. Слън-"  -- це  -- то що гре -- е птич -- ка -- та, що пе -- е,

      всич -- ко що жи -- ве -- е, стра -- да и коп -- не -- е,

      из -- я -- вя -- ва  същ -- ност -- та,   всич -- ко що жи -- ве -- е, стра -- да и коп -- не -- е,

      из -- я -- вя -- ва същ -- но -- ста.

      Кра  -- со  -- та  -- та, Ис  -- ти  -- на  -- та, Лю -- бов  -- та и Мъд  -- рост  -- та,

      туй е Гос  -- под на зе  -- мя  -- та, туй е същ  -- но  -- ста! Днес ду  -- хът ми шеп  -- не та  -- ка.
    }

    \addlyrics {
      Vav u -- ma mi mi -- sal chu -- ka, vse -- ki chas me pi -- ta,
      shto v'zhi -- vo -- ta e re -- al -- no, shto e sasht -- no -- sta,
      shto v'zhi -- vo -- ta e re -- al -- no, shto e sasht -- no -- sta.

      A Du -- hat mi shep  -- ne ta  -- ka:

      "1.   Slan-"  -- tse  -- to shto gre -- e ptich -- ka -- ta, shto pe -- e,

      vsich -- ko shto zhi -- ve -- e, stra -- da i kop -- ne -- e,

      iz -- ya -- vya -- va  sasht -- nost -- ta,   vsich -- ko shto zhi -- ve -- e, stra -- da i kop -- ne -- e,

      iz -- ya -- vya -- va sasht -- no -- sta.

      Kra  -- so  -- ta  -- ta, Is  -- ti  -- na  -- ta, Lyu -- bov  -- ta i Mad  -- rost  -- ta,

      tuy e Gos  -- pod na ze  -- mya  -- ta, tuy e sasht  -- no  -- sta! Dnes du  -- hat mi shep  -- ne ta  -- ka.

      A Du -- hat mi shep  -- ne ta  -- ka:

    }
    \addlyrics {
      " " " " " " " " " " " " " " " "

      " " " " " " " " " " " " " " " "

      " " " " " " " " " " " " " " " " " "

      " " " " " " " " " " " " " " " " " " " " " " " " " " " "

      " " " " " " " " " " " " " " " " " " "2.      И  " -- ди при цве -- тя -- та, в~по -- ле -- то, в~го -- ра -- та,
      гле -- дай кра -- со -- та -- та, ди -- шай а -- ро -- ма -- та, там ще ви -- диш същ -- ност  -- та,
      гле -- дай кра -- со -- та -- та, ди -- шай а -- ро -- ма -- та, там ще ви -- диш същ -- ност  -- та.

      " " " " " " " " " " " " " " " " " "

      " " " " " " " " " " " " " " " " " "
    }

    \addlyrics {
      " " " " " " " " " " " " " " " "

      " " " " " " " " " " " " " " " "

      " " " " " " " " " " " " " " " " " "

      " " " " " " " " " " " " " " " " " " " " " " " " " " " "

      " " " " " " " " " " " " " " " " " " "2.      I   " -- di pri tsve -- tya -- ta, v~po -- le -- to, v~go -- ra -- ta,
      gle -- day kra -- so -- ta -- ta, di -- shay a -- ro -- ma -- ta, tam shte vi -- dish sasht -- nost  -- ta,
      gle -- day kra -- so -- ta -- ta, di -- shay a -- ro -- ma -- ta, tam shte vi -- dish sasht -- nost  -- ta.

      " " " " " " " " " " " " " " " " " "

      " " " " " " " " " " " " " " " " " "
    }




    \addlyrics {
      " " " " " " " " " " " " " " " "

      " " " " " " " " " " " " " " " "

      " " " " " " " " " " " " " " " " " "

      " " " " " " " " " " " " " " " " " " " " " " " " " " " "

      " " " " " " " " " " " " " " " " " "

      "3.   Пог " -- лед  -- ни не -- бе -- то и пи -- тай сър -- це -- то,
      в~таз кра -- со -- та див -- на и мъд -- рост все -- мир -- на, не ви -- дя ли същ -- ност -- та;  в~таз кра -- со -- та див -- на и мъд -- рост все -- мир -- на, не ви -- дя ли същ -- ност -- та.

      " " " " " " " " " " " " " " " " " "

      " " " " " " " " " " " " " " " " " "
    }

    \addlyrics {
      " " " " " " " " " " " " " " " "

      " " " " " " " " " " " " " " " "

      " " " " " " " " " " " " " " " " " "

      " " " " " " " " " " " " " " " " " " " " " " " " " " " "

      " " " " " " " " " " " " " " " " " "

      "3.   Pog " -- led  -- ni ne -- be -- to i pi -- tay sar -- tse -- to,
      v~taz kra -- so -- ta div -- na i mad -- rost vse -- mir -- na, ne vi -- dya li sasht -- nost -- ta;  v~taz kra -- so -- ta div -- na i mad -- rost vse -- mir -- na, ne vi -- dya li sasht -- nost -- ta.

      " " " " " " " " " " " " " " " " " "

      " " " " " " " " " " " " " " " " " "
    }

    \addlyrics {
      " " " " " " " " " " " " " " " "

      " " " " " " " " " " " " " " " "

      " " " " " " " " " " " " " " " " " "

      " " " " " " " " " " " " " " " " " " " " " " " " " " " "

      " " " " " " " " " " " " " " " " " "

      "4.    Ко  " -- га май -- ка неж -- на за рож -- ба се жерт -- ва,
      в~таз о -- бич при -- мер -- на и лю -- бов без -- мер -- на
      ти ще ви -- диш същ -- ност -- та
      в~таз о -- бич при -- мер -- на и лю -- бов без -- мер -- на
      ти ще ви -- диш същ -- ност -- та.

      " " " " " " " " " " " " " " " " " "

      " " " " " " " " " " " " " " " " " "
    }

    \addlyrics {
      " " " " " " " " " " " " " " " "

      " " " " " " " " " " " " " " " "

      " " " " " " " " " " " " " " " " " "

      " " " " " " " " " " " " " " " " " " " " " " " " " " " "

      " " " " " " " " " " " " " " " " " "

      "4.    Ko  " -- ga may -- ka nezh -- na za rozh -- ba se zhert -- va,
      v~taz o -- bich pri -- mer -- na i lyu -- bov bez -- mer -- na
      ti shte vi -- dish sasht -- nost -- ta
      v~taz o -- bich pri -- mer -- na i lyu -- bov bez -- mer -- na
      ti shte vi -- dish sasht -- nost -- ta.

      " " " " " " " " " " " " " " " " " "

      " " " " " " " " " " " " " " " " " "
    }
    \header {
      title = \titleFunc "Що е същността" "Sto e sastnostta"
    }

    \midi{}

  } % score


  % include foreign translation(s) of the song
  \include "lyrics_de/068_sto_e_sastnostta_lyrics_de.ly"

} % bookpart
