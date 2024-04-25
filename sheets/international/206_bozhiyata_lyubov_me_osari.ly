\version "2.24.3"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref206
  \tocItem \markup "Божията Любов ме озари – Božijata Ljubov me ozari  "
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Staff = main \absolute {
      \clef treble
      \key a \major
      \time 4/4
      \tempoFunc "Andante" 4 "66"
      \autoBeamOff
      \partial 4
      e'4 ^\mf  | % 2
      cis''4  b'4  a'4  b'8 ( [ ^\<
      cis''8 ) ] | % 3
      e''4 ( ^\! ^\>  d''4. ) \! r8  e'4^\p | % 4
      b'4  a'4  gis'4  fis'8 ( [
      gis'8 ) ] \break| % 5
      \time 3/4  | % 5
      a'2  e'8  ^\p  cis'8   | % 6
      \time 4/4  | % 6
      fis'2  e'4   \breathe cis'4 | % 7
      \time 6/4  | % 7
      e'4  d'4  cis'4  b4  cis'2 \bar
      "||"
      \time 4/4  \break | % 8
      | % 8
      \tempoFunc "Meno mosso" 4 "50"
      e'4.  d'8  cis'4  b4 | % 9
      d'4  cis'8 ( [  b8 ) ]  e'4.  e'8 |
      \time 5/4  |
      <<
        {
          gis'4 fis'8 e'8 b'4 \tempo "rit." a'8 fis'8 ^\> a'8  b'8 \break |
        }

        \new Staff \with {
          \override VerticalAxisGroup.default-staff-staff-spacing =
          #'((basic-distance . 20.5)
             (padding . -30))
          \remove "Time_signature_engraver"
          alignAboveContext = #"main"
          fontSize = #-1
          \override StaffSymbol.staff-space = #(magstep -2)
          \override StaffSymbol.thickness = #(magstep -2)
          firstClef = ##f
        }
        {  \time 5/4  \autoBeamOff g'!4^\markup { \large \italic "ossia по Л. Т." } f'8 e'8 b'4 a'8_\markup { \large \bold "rit." } f'8 ^\> a'8  b'8^\!  \break |  }
      >>

      a'2 ^\! ^\p r4 r2 \bar "||"
      \time 4/4   | % 12
      \tempoFunc "Più mosso" 4 "92" e'4 ^\mf

      e'4
      e'4.   cis'8 | % 13
      b4 ^\<  a4  b4  cis'4 ^\!  | % 14
      \time 5/4  | % 14
      e'2 ^\>  d'4 ^\! r4  e'4 ^\mp \break | % 15
      \time 3/4  | % 15
      cis''2  b'8   a'8  | % 16
      \time 4/4  | % 16
      gis'4  fis'4  fis'4  fis'4 | % 17
      \time 5/4  | % 17
      fis'4. ( ^\<  gis'8 ) ^\!  e'2 ^\> \breathe d'8
      ^\!  ^\p  d'8 \break | % 18
      fis'2  e'4 r4  e'4 ^\mf | % 19
      \time 6/4  | % 19
      e''2  cis''8   a'8   cis''4
      b'4  fis'8  ^\p  gis'8 | \time 6/4 \break

      b'2  a'2 r4 ^\fermata
      \tempoFunc "Moderato" 4 "80"
      e'4
      ^\mf | % 21
      \time 4/4  | \bar "||" % 21
      cis''4  b'4  a'4  gis'8 ( [
      fis'8 ) ]  | % 22
      e'2.  fis'8 ( [ ^\p  gis'8 ) ] ^\< \break | % 23
      a'4  b'4  d''8 ( [ ^\!  cis''8 )
      ]  b'8 ( [ ^\>  a'8 ) ] | % 24
      cis''2 (  b'4 ) ^\! ^\mf  cis''8 ( [ ^\<
      dis''8 ) ] | % 25
      e''4 ^\!  cis''4  b'4 ^\>  a'4 |\break % 26
      gis'4 (  fis'2 ) ^\!  e'4 ^\p ^\<  | % 27
      fis'4  e'4 ^\! b'4  a'8 ( [
      gis'8 ) ] | % 28
      a'2.  e'4 ^\p | % 29
      g'4  fis'4  e'4  dis'8 ( [  e'8
      ) ] | \break
      fis'2.  g'4 ^\mf  | % 31

      <<
        {

          b'4  a'4  cis''4  b'8 ( [  a'8 ])
        }

        \new Staff \with {
          \override VerticalAxisGroup.default-staff-staff-spacing =
          #'((basic-distance . 5.5)
             (padding . -10))
          \remove "Time_signature_engraver"
          alignAboveContext = #"main"
          fontSize = #-1
          \override StaffSymbol.staff-space = #(magstep -2)
          \override StaffSymbol.thickness = #(magstep -2)
          firstClef = ##f
        }
        {  b'4^\markup { \huge \italic "ossia по Л. Т."}  a'4  c''!4  b'8 ( [  a'8 ])  }
      >>


      | % 32


      d''2.  cis''4 ^\ff  | % 33
      e''4  b'4  a'4  gis'4 | \break % 34
      a'2.  gis'8 ( [ ^\p  fis'8 ) ]  | % 35
      e'4  d'4  cis'4  fis'8 ( [  gis'8
      ) ] | % 36
      a'2.  b'8 ( [ ^\pp  cis''8 ) ]
      | % 37
      b'4  a'4  gis'4  fis'8 ( [
      gis'8 ) ] | \break % 38
      a'2.  b'8 ( [  cis''8 ) ]
      ^\markup {
        \override #'(baseline-skip . 1.2)
        \column {
          \line { "   " \musicglyph #"scripts.ufermata"}
          \line { "   " \musicglyph #"scripts.caesura.straight" }
        }
      }
      | % 39
      b'4  a'4  gis'4  fis'8 ( [ ^\ppp
      gis'8 ) ] |
      a'2. \bar "|."
    }

    \addlyrics {
      Бо -- жест -- ве -- на Лю -- бов __
      ду -- ша ми раз -- ши -- ри
      и из -- пъл -- ни сър -- це -- то
      ми с~лъ -- чи. От "дъл-" -- бо -- ки
      глъ -- би -- ни пов -- диг -- на
      ду -- ха ми във ви -- си -- ни на
      кри -- ла -- та си бла -- го -- сло
      -- ве -- ни, от Бо -- жи -- я пог --
      лед о -- за -- ре -- ни, о -- за
      -- ре -- ни, от Бо -- жи -- я пог --
      лед о -- за -- ре -- ни. Лю -- бов
      ме о -- за -- ри, Лю -- бов
      ме о -- за -- ри. __ Ду --
      ша ми раз -- ши -- ри,  __ ду --
      ша ми о -- све  -- ти, ду -- ша
      ми раз -- ши  -- ри, ду -- ша ми
      о -- све -- ти. Ду -- ха ми у --
      кре -- пи и __  бла -- гост в~мен
      все -- ли, и __ бла -- гост
      в~мен все -- ли, и __ бла --
      гост в~мен все -- ли.}

      \addlyrics {
        Bo -- žest -- ve -- na Lju -- bov __
        du -- ša mi raz -- ši -- ri
        i iz -- păl -- ni săr -- ce -- to
        mi s~lă -- či. Ot "dăl-" -- bo -- ki
        glă -- bi -- ni pov -- dig -- na
        du -- ha mi văv vi -- si -- ni na
        kri -- la -- ta si bla -- go -- slo
        -- ve -- ni, ot Bo -- ži -- ja pog --
        led o -- za -- re -- ni, o -- za
        -- re -- ni, ot Bo -- ži -- ja pog --
        led o -- za -- re -- ni. Lju -- bov
        me o -- za -- ri, Lju -- bov
        me o -- za -- ri. __ Du --
        ša mi raz -- ši -- ri,  __ du --
        ša mi o -- sve  -- ti, du -- ša
        mi raz -- ši  -- ri, du -- ša mi
        o -- sve -- ti. Du -- ha mi u --
        kre -- pi i __  bla -- gost v~men
        vse -- li, i __ bla -- gost
        v~men vse -- li, i __ bla --
        gost v~men vse -- li.}


        \header {
          title = \titleFunc "Божията Любов ме озари " " Božijata Ljubov me ozari"
        }

        \midi{}

      } % score

      \markup \vspace #3

      % include foreign translation(s) of the song
      \include "../../lyrics/de/206_bozhiyata_lyubob_me_ozari_lyrics_de.ly"

    } % bookpart

    % Più mosso
    %
