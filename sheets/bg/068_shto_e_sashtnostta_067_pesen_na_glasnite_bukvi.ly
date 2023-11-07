\version "2.24.2"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref068
  \tocItem \markup "Що е същността"
  \include "include/bookpart-paper.ily"

  \header {
    tagline = ##f
  }

  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute {
      \clef treble
      \key b \minor
      \time 6/4
      \tempoFunc "Largo" 4 "40"
      \partial 4
      \autoBeamOff

      b8. cis'16| d'8 fis'4. eis'8 fis'8 g'8 fis'4. fis'8 b'8| d''4. d''8 cis''4 b'2 fis'8. b'16 | \break

      \time 5/4  a'8 g'4. e'8. fis'16 g'8 fis'4. | \time 6/4 fis'8 e'8 d'4 cis'4 b2 fis'8. b'16 \time 5/4 | \break

      \time 5/4  a'8 g'4. e'8. fis'16 g'8 fis'4. | \time 5/4 fis'8 e'8 d'4 cis'4 b2 | \break

      \time 5/4 d'4. d'8 cis'4 b2 | cis'2 b8 ais8 b4. r8 | \break

      \bar ".|:-||"

      \time 4/4 b4 cis'4 d'4 b4 | \time 3/4 d'4 fis'2 | \time 4/4 e'4 fis' g' e' | \time 3/4 g'4 b'2  \break


      \time 6/4 b'4 cis''4 d'' b' g' e' | g' b' a' g' fis' b | \break

      cis'8 d' fis' e' d'4 cis' b2 | fis'4 b' d'' b' g' e' |\break

      g'4 b'4 a'4 g'4 fis'4 b |  cis'8 d' fis' e' d'4 cis'4 b2 | \break

   

      \time 3/4


     \bar ":|.|:"  b8. cis'16 d'8 fis'4. | e'8. fis'16 g'8 fis'4. | fis'8 b'8 d''4. b'8| \break

      \time 4/4 cis''4. ais'8 b'4. r8 | \time 3/4 fis'8. b'16 a'8 g'4. | e'8. fis'16 g'8 fis'4. | \break

      \time 5/4	fis'8 e' d'4 cis' b4. r8 \bar ":|." | \time 4/4 d'8. d'16 cis'4 b2 | \time 5/4 cis'2 b8 ais8 b2 |  \bar "|." \break


    }

    \addlyrics {
      Във у -- ма ми ми -- съл чу -- ка, все -- ки час ме пи -- та
      що в~жи -- во -- та е ре -- ал -- но, що е същ -- ност -- та,
      що в~жи -- во -- та е ре -- ал -- но, що е същ -- ност -- та.
      А Ду -- хът ми шеп  -- не та  -- ка:

      "1.    Слън"  -- це  -- то, що гре -- е птич -- ка -- та, що пе -- е,

      всич -- ко, що жи -- ве -- е, стра -- да и коп -- не -- е,

      и -- зя -- вя -- ва  същ -- ност -- та,   всич -- ко, що жи -- ве -- е, стра -- да и коп -- не -- е,

      и -- зя -- вя -- ва същ -- но -- ста.

      Кра  -- со  -- та  -- та, Ис  -- ти  -- на  -- та, Лю -- бов  -- та и Мъд  -- рост  -- та,

      туй е Гос  -- под на Зе  -- мя  -- та, туй е същ  -- но  -- ста! Днес "ду-"  -- хът ми шеп  -- не та  -- ка.
    }

    \addlyrics {
      " " " " " " " " " " " " " " " "

      " " " " " " " " " " " " " " " "

      " " " " " " " " " " " " " " " " " "

      " " " " " " " " " " " " " " " " " " " " " " " " " " " "

      " " " " " " " " " " " " " " " " " " "2.    И    - " ди при цве -- тя -- та, в~по -- ле -- то, в~го -- ра -- та,
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

      " " " " " " " " " " " " " " " " " " "3.    Пог -" -- лед  -- ни не -- бе -- то и пи -- тай сър -- це -- то,
      в~таз кра -- со -- та див -- на и мъд -- рост все -- мир -- на, не ви -- дя ли същ -- ност -- та;  в~таз кра -- со -- та див -- на и мъд -- рост все -- мир -- на, не ви -- дя ли същ -- ност -- та.

      " " " " " " " " " " " " " " " " " "

      " " " " " " " " " " " " " " " " " "
    }

    \addlyrics {
      " " " " " " " " " " " " " " " "

      " " " " " " " " " " " " " " " "

      " " " " " " " " " " " " " " " " " "

      " " " " " " " " " " " " " " " " " " " " " " " " " " " "

      " " " " " " " " " " " " " " " " " " "4.    Кo -  "  га май -- ка неж -- на за рож -- ба се жерт -- ва,
      в~таз о -- бич при -- мер -- на и лю -- бов без -- мер -- на
      ти ще ви -- диш същ -- ност -- та
      в~таз о -- бич при -- мер -- на и лю -- бов без -- мер -- на
      ти ще ви -- диш същ -- ност -- та.

      " " " " " " " " " " " " " " " " " "

      " " " " " " " " " " " " " " " " " "
    }

    \header {
      title = \titleFunc "Що е същността" "Što e săštnostta"
    }

    \midi{}

  } % score


  \label #'ref067
  \tocItem \markup "Песен на гласните букви"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \relative c' {
      \clef treble
      \key c \major
      \time 7/16
      \tempoFunc "Vivo" 4 "104"
      \autoBeamOff
      c8 e8 g8. | g8 c8 g8. | c,8 e8 g8. | g8 c8 g8. | \break
      c,8 d8 e8. | d8 e8  \acciaccatura {d16[e16]} d8([c16]) | g'8 g8 g8. | c,8 d8 e8. | \break
      d8 e8 \acciaccatura {d16[e16]} d8([c16]) | g'8 g8 g8. | c,8 d8 e8. | d8 e8 \acciaccatura {d16[e16]} d8([c16]) | c8~ c8~ c8. | \bar "|." \break
    }

    \addlyrics {
      "1. a" -- a -- a  a -- a -- a  a -- a -- a  a -- a -- a
      a -- a -- a  a -- a -- a __  a -- a -- a  a -- a -- a
      a -- a -- a __   a -- a -- a  a -- a -- a  a -- a -- a __ a __ 
    }

    \addlyrics {
      "2. o" -- o -- o  o -- o -- o  o -- o -- o  o -- o -- o
      o -- o -- o  o -- o -- o __  o -- o -- o  o -- o -- o
      o -- o -- o __   o -- o -- o  o -- o -- o  o -- o -- o __ o __ 
    }

    \addlyrics {
      "3. у" -- у -- у  у -- у -- у  у -- у -- у  у -- у -- у
      у -- у -- у  у -- у -- у __  у -- у -- у  у -- у -- у
      у -- у -- у __   у -- у -- у  у -- у -- у  у -- у -- у __ у __ 
    }

    \addlyrics {
      "4. а" -- о -- у  а -- о -- у  а -- о -- у  а -- о -- у
      а -- о -- у  а -- о -- у __  а -- о -- у  а -- о -- у
      а -- о -- у __   а -- о -- у  а -- о -- у  а -- о -- у __ а __ 
    }

    \addlyrics {
      "5. a" -- a -- a  a -- a -- a  a -- a -- a  a -- a -- a
      a -- a -- a  a -- a -- a __  a -- a -- a  a -- a -- a
      a -- a -- a __   a -- a -- a  a -- a -- a  a -- a -- a __ a __ 
    }

    \addlyrics {
      "6. e" -- e -- e  e -- e -- e  e -- e -- e  e -- e -- e
      e -- e -- e  e -- e -- e __  e -- e -- e  e -- e -- e
      e -- e -- e __   e -- e -- e  e -- e -- e  e -- e -- e __ e __ 
    }

    \addlyrics {
      "7. и" -- и -- и  и -- и -- и  и -- и -- и  и -- и -- и
      и -- и -- и  и -- и -- и __  и -- и -- и  и -- и -- и
      и -- и -- и __   и -- и -- и  и -- и -- и  и -- и -- и __ и __ 
    }

    \addlyrics {
      "8. а" -- е -- и  а -- е -- и  а -- е -- и  а -- е -- и
      а -- е -- и  а -- е -- и __  а -- е -- и  а -- е -- и
      а -- е -- и __   а -- е -- и  а -- е -- и  а -- е -- и __ а __ 
    }

    \header {
      title = \titleFunc " Песен на гласните букви" "Pesen na glasnite bukvi"
    }

    \midi{}

  } % score


} % bookpart
