\version "2.22.1"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \relative c' {
      \clef treble
      \key bes \major
      \time 2/4
      \tempoFunc "Moderato" 4 "72"
      \autoBeamOff
      g''8 f ees d | \noBreak
      c4. c8 | \noBreak
      f8. ees16 d([c]) d f | \break

      bes,8. bes16 bes4 | \noBreak
      ees8 d c bes | \noBreak
      a4 d | \noBreak
      g,8. a16 bes([a]) bes ([d]) | \break

      g,8 g g r | \noBreak
      g'8. f16 ees([d]) ees([g]) | \noBreak
      c,8. c16 c8 c16 c | \break

      f8.([ees16]) d8 c | \noBreak
      bes4 bes8 bes | \noBreak
      ees8. d16 c([bes]) c([ees]) | \break

      a,8. a16 a8 d | \noBreak
      g,8. a16 bes([a]) bes([d]) | \noBreak
      g,8 d g r | \break

      g8 g16 a bes8([a]) | \noBreak
      g fis a([g]) | \noBreak
      g2 | \noBreak
      d16 ees ees ees ees d ees([g]) | \break

      d4 r8 d | \noBreak
      g4 a | \noBreak
      bes16 ([a]) bes ([a]) g8 fis | \noBreak
      g2 | \break

      g'16 f ees d c bes a g | \noBreak
      a8 bes c d | \noBreak
      ees d d4~ | \break

      d8 bes g d | \noBreak
      g8. a16 bes8 a | \noBreak
      a g g fis | \noBreak
      g2\fermata | \bar "||" \break

      g'8 f ees d | \noBreak
      d([c]) d4~ | \noBreak
      d8 c bes8. a16 | \noBreak
      bes8 c d ees | \break

      d cis d4~ | \noBreak
      d8 c! bes a | \noBreak
      fis8. g16 a8 g | \noBreak
      bes a c bes | \break

      a g fis a | \noBreak
      g2 | \noBreak
      bes8. bes16 bes8 bes | \noBreak
      bes4 a8([bes]) | \break

      c16([bes]) a([g]) fis8([g]) | \noBreak
      a8. bes16 a8([d,]) | \noBreak
      d2 | \noBreak
      bes'8 bes16 bes bes8 bes | \break

      c bes a16([bes]) c([d]) | \noBreak
      f4.(ees8) | \noBreak
      d8. c16 d4~ | \noBreak
      d8 bes g d | \break

      g4 \times 2/3 { g8 g g }  | \noBreak
      g4. fis8 | \noBreak
      g8. a16 bes8 a | \noBreak
      \acciaccatura { bes } a g g fis | \break

      g ees d4 | \noBreak
      d2 | \noBreak
      f!8. g16 g8 g | \noBreak
      f ees16 f g8 g | \break

      \acciaccatura { g } f ees \acciaccatura { f } ees  cis | \noBreak
      d4 d | \noBreak
      c'8. c16 c8 c | \noBreak
      c4 bes8([a]) | \break

      bes([c]) d ees | \noBreak
      d2 | \noBreak
      a8. a16 a8 a | \noBreak
      a8. a16 c4 | \break

      bes8([a]) g([fis]) | \noBreak
      a8. g16 g4
      g2\fermata \bar "||" | \noBreak
      d2 \break

      cis8([d]) ees d | \noBreak
      d2 | \noBreak
      d | \noBreak
      g | \noBreak
      fis8 g a g | \break

      g2 | \noBreak
      g4 g8 a | \noBreak
      bes2 | \noBreak
      a4 g | \noBreak
      fis8 g a g | \break

      g2 | \noBreak
      a4. bes8 | \noBreak
      c2 | \noBreak
      \acciaccatura { c8 } bes([a]) bes c | \noBreak
      d2 | \break

      d,8^\markup{ \italic { largamente } } ees16([d]) cis8 d | \noBreak
      \acciaccatura { c' } bes4. a8 | \noBreak
      g4 g | \noBreak
      g2 | \break

      \tempo "a tempo" g'8. f16 ees([d]) ees([g]) | \noBreak
      c,8. c16 c c c c | \break

      f8. ees16 d8 c | \noBreak
      bes16 r bes r bes r bes r | \noBreak
      ees8. d16 c bes c ees | \break

      a,8. a16 a a a a | \noBreak
      d8 d16([c]) bes8 a | \noBreak
      g16 r g r g r g r | \break

      d4^\markup{ \italic { largamente } } e8 fis | \noBreak
      g4 bes8. a16 | \noBreak
      g4 g8 g | \noBreak
      g2 \bar "|."
    }

    \addlyrics {
      И -- де ве -- че, | и -- де | "с~пал" -- мо -- во клон -- че |
      на Ми ра. | Сли -- за той от -- | го -- ре, | сли -- за той, вес -- |
      ти -- тел благ. | И -- де ве -- че | "с~пал" -- мо -- во клон -- че |
      ка -- то си -- | я -- ни -- е. | И -- де Ми -- рът |
      о -- бе -- щан със | не -- го -- ви -- я | по -- глед чист. |
      Всич -- ки ду -- ши | поз -- дра -- вя -- | ва, | всич -- ки сър -- ца вдъх -- но -- вя -- |
      ва "с~ли" -- | ка си | благ, мил, о -- за -- | рен. |
      Ра -- дост и ве -- се -- ли -- е раз -- | на -- ся той на -- | вред, къ -- де --
      то ми -- не. | И -- де той във  | ран -- ни -- те зо -- | ри, |
      Слън -- це -- то ко -- | га -- то про -- сти -- ра свой -- те мил -- ва -- |
      щи ръ -- це и бу -- ди | вся -- ко се -- ме, | вся -- ко цвет -- че, |
      сво -- и -- те де -- | ца. Пол -- ски -- те цве -- | тя със |
      а -- ро -- мат | го по -- сре -- | щат. Мал -- ки -- те гор -- ски |
      птич -- ки от въз -- | торг | пес -- ни пе -- ят не -- му |
      и све -- жи -- те | стру -- и | на пла -- нин -- ски | из -- вор -- че -- та |
      тук ли -- ку -- | ват. | Злат -- ни ни -- ви | бла -- го -- го -- вей -- но |
      кла -- со -- ве на -- | веж -- дат. | Ця -- ла -- та При -- | ро -- да |
      е храм ве -- | лик. | И -- де Ан -- гел | на Ми ра |
      "в~то" -- зи | храм да слу -- | жи. | А |
      сто -- и чо -- | ве -- | кът | пред | Све -- ти -- я ол -- |
      тар. | О -- гън го -- | ри | там, "в~Све" -- | ще -- ни -- я ол -- |
      тар. | И "с~мо" -- | лит -- | ва във ду -- | ша |
      Бо -- жи -- я вес -- | ти -- тел | ча -- ка | той. |
      И -- де ве -- че | Ан -- гел на Ми -- ра със |
      клон -- че пал -- мо -- | во и же -- зъл. | Сли -- за той от -- го -- ре, |
      цар -- ствен и же -- лан кат | слън -- че -- ва ус -- | мив -- ка бла -- га |
      и "с~Ра" -- дост | пъл -- ни сър -- | ца -- та ни той. |
    }

    \addlyrics {
      I -- de ve -- che, | i -- de | "s~pal" -- mo -- vo klon -- che |
      na Mi ra. | Sli -- za toy ot -- | go -- re, | sli -- za toy, ves -- |
      ti -- tel blag. | I -- de ve -- che | "s~pal" -- mo -- vo klon -- che |
      ka -- to si -- | ya -- ni -- e. | I -- de Mi -- rat |
      o -- be -- shtan sas | ne -- go -- vi -- ya | po -- gled chist. |
      Vsich -- ki du -- shi | poz -- dra -- vya -- | va, | vsich -- ki sar -- tsa vdah -- no -- vya -- |
      va "s~li" -- | ka si | blag, mil, o -- za -- | ren. |
      Ra -- dost i ve -- se -- li -- e raz -- | na -- sya toy na -- | vred, ka -- de --
      to mi -- ne. | I -- de toy vav  | ran -- ni -- te zo -- | ri, |
      Slan -- tse -- to ko -- | ga -- to pro -- sti -- ra svoy -- te mil -- va -- |
      shti ra -- tse i bu -- di | vsya -- ko se -- me, | vsya -- ko tsvet -- che, |
      svo -- i -- te de -- | tsa. Pol -- ski -- te tsve -- | tya sas |
      a -- ro -- mat | go po -- sre -- | shtat. Mal -- ki -- te gor -- ski |
      ptich -- ki ot vaz -- | torg | pes -- ni pe -- yat ne -- mu |
      i sve -- zhi -- te | stru -- i | na pla -- nin -- ski | iz -- vor -- che -- ta |
      tuk li -- ku -- | vat. | Zlat -- ni ni -- vi | bla -- go -- go -- vey -- no |
      kla -- so -- ve na -- | vezh -- dat. | Tsya -- la -- ta Pri -- | ro -- da |
      e hram ve -- | lik. | I -- de An -- gel | na Mi ra |
      "v~to" -- zi | hram da slu -- | zhi. | A |
      sto -- i cho -- | ve -- | kat | pred | Sve -- ti -- ya ol -- |
      tar. | O -- gan go -- | ri | tam, "v~Sve" -- | shte -- ni -- ya ol -- |
      tar. | I "s~mo" -- | lit -- | va vav du -- | sha |
      Bo -- zhi -- ya ves -- | ti -- tel | cha -- ka | toy. |
      I -- de ve -- che | An -- gel na Mi -- ra sas |
      klon -- che pal -- mo -- | vo i zhe -- zal. | Sli -- za toy ot -- go -- re, |
      tsar -- stven i zhe -- lan kat | slan -- che -- va us -- | miv -- ka bla -- ga |
      i "s~Ra" -- dost | pal -- ni sar -- | tsa -- ta ni toy. |
    }
    \header {
      title = \titleFunc "Мирът иде II" "Mirat ide II"
    }

    \midi{}

  } % score
  %\markup \dc-two "D.C." "con repetitione"

  \pageBreak

  % include foreign translation(s) of the song
  \include "lyrics_de/158_mirat_ide_lyrics_de.ly"

} % bookpart
