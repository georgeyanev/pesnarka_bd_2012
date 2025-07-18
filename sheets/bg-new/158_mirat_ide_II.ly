\version "2.24.4"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref158
  \tocItem \markup "Мирът иде II"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \relative c' {
      \clef treble
      \key g \minor
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
      f8. g16 g8 g | \noBreak
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
      g2\fermata \bar "||" | \break
      d2 \noBreak

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

      d,8^\markup{\huge \italic { largamente } } ees16([d]) cis8 d | \noBreak
      \acciaccatura { c' } bes4. a8 | \noBreak
      g4 g | \noBreak
      g2 | \bar "||" \break

      \tempo "a tempo" g'8. f16 ees([d]) ees([g]) | \noBreak
      c,8. c16 c c c c | \break

      f8. ees16 d8 c | \noBreak
      bes8 r  bes r | bes r bes r | \noBreak
      ees8. d16 c bes c ees | \break

      a,8. a16 a a a a | \noBreak
      d8 d16([c]) bes8 a | \noBreak
      g8 r g r | g r g r | \break

      d4^\markup{ \huge \italic { largamente } } e8 fis | \noBreak
      g4 bes8. a16 | \noBreak
      g4 g8 g | \noBreak
      g2 \fermata \bar "|."
    }

    \addlyrics {
      И -- де ве -- че, | и -- де | с~пал -- мо -- во __ клон -- че |
      на ми -- ра. | Сли -- за той от -- | го -- ре, | сли -- за той, вес -- |
      ти -- тел благ. | И -- де ве -- че __ | с~пал -- мо -- во клон -- че |
      ка -- то си -- | я -- ни -- е. | И -- де ми -- рът __ |
      о -- бе -- щан със | не -- го -- ви -- я __ | пог -- лед чист. |
      Всич -- ки ду -- ши __ | поз -- дра -- вя -- | ва, | всич -- ки сър -- ца вдъх -- но -- вя -- |
      ва с~ли -- | ка си | благ, мил, о -- за -- | рен. |
      Ра -- дост и ве -- се -- ли -- е раз -- | на -- ся той на -- | вред, къ -- де --
      то ми -- не. | И -- де той във  | ран -- ни -- те зо -- | ри, |
      слън -- це -- то ко -- | га -- то __ про -- сти -- ра свой -- те мил -- ва -- |
      щи ръ -- це __ и бу -- ди | вся -- ко се -- ме, | вся -- ко цвет -- че, |
      сво -- и -- те де -- | ца. Пол -- ски -- те цве -- | тя със __ |
      а -- ро -- мат __ | го по -- сре -- | щат. Мал -- ки -- те гор -- ски |
      птич -- ки от __ въз -- | торг __ | пес -- ни пе -- ят не -- му |
      и све -- жи -- те | стру -- и | на пла -- нин -- ски | из -- вор -- че -- та |
      тук ли -- ку -- | ват. | Злат -- ни ни -- ви | бла -- го -- го -- вей -- но |
      кла -- со -- ве на -- | веж -- дат. | Ця -- ла -- та При -- | ро -- да __ |
      е __ храм ве -- | лик. | И -- де ан -- гел | на ми -- ра |
      в~то -- зи __ | храм да слу -- | жи. | А |
      сто -- и чо -- | ве -- | кът | пред | све -- ти -- я ол -- |
      тар. | О -- гън го -- | ри | там, в~све -- | ще -- ни -- я ол -- |
      тар. | И с~мо -- | лит -- | ва __ във ду -- | ша |
      Бо -- жи -- я вес -- | ти -- тел | ча -- ка | той. |
      И -- де ве -- че __ | ан -- гел на ми -- ра със |
      клон -- че пал -- мо -- | во и же -- зъл. | Сли -- за той от -- го -- ре, |
      цар -- ствен и же -- лан кат | слън -- че -- ва ус -- | мив -- ка бла -- га |
      и с~ра -- дост | пъл -- ни сър -- | ца -- та ни той. |
    }

    \header {
      title = \titleFunc #'ref_desc_14 "Мирът иде II" "Mirăt ide II"
    }

    \midi{}

  } % score


} % bookpart
