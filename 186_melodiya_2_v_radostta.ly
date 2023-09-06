\version "2.24.2"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref186
  \tocItem \markup "Мелодия – В радостта... – Melodija – V radostta..."
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute {
      \clef treble
      \key des \major
      \time 3/8
      \tempoFunc "Allegro" 4. "48"
      \autoBeamOff
      des''8. des''16 c''16 des''16
      | % 2
      es''4 des''8 | % 3
      des''8. c''16 c''16 des''16
      | % 4
      c''4 bes'8 \break | % 5
      bes'4  as'8 | % 6
      as'4. | % 7
      es'8.  es'16  f'16  ges'16  | % 8
      bes'8.  as'16  as'16 bes'16 \break | % 9
      as'8.  ges'16  f'16  ges'16 |

      f'8.  es'16  des'16  es'16 | % 11
      des'4. | % 12
      as'4  as'8   | % 13
      as'8 [(  g'8 )]  as'8 \break| % 14
      bes'4  as'8  | % 15
      as'4  as'8 | % 16
      des''4.  | % 17
      des''8 c''8 des''8 | % 18
      es''4 des''8 | % 19
      c''8. bes'16  as'16 bes'16 \break |

      as'4  ges'8  | % 21
      f'8.  es'16  des'16  es'16 | % 22
      des'4. \bar "||"
      es'8  f'8  ges'8 | % 24
      as'4 bes'16 c''16 \break | % 25
      des''4  f'8 | % 26
      as'4  ges'8 | % 27
      ges'4. | % 28
      bes4  c'16  des'16   | % 29
      f'4  es'8  |
      des'4  c'8  \break | % 31
      es'4  des'8 | % 32
      des'4. | % 33
      as'16  as'16 f''8 f''8 | % 34
      ges''16 f''16 es''16 f''16
      es''16 des''16 \break  | % 35
      as'8 es''8 es''8 | % 36
      es''4.  | % 37
      as'8 es''8 es''8   | % 38
      f''16 es''16 des''16 es''16
      des''16 c''16 \break| % 39
      des''16 c''16 bes'16 c''16
      bes'16  as'16 |
      as'8 des''8 des''8 | % 41
      des''4. \break | % 42
      as'16 des''16 des''16 des''16
      des''16 des''16  | % 43
      as'16 es''16 es''16 es''16
      es''16 es''16 \break | % 44
      f''16 es''16 des''16 c''16
      des''16 es''16 | % 45
      des''4. | % 46
      as'16 des''16 des''16 des''16
      des''16 des''16 \break | % 47
      as'16 es''16 es''16 es''16
      es''16 es''16 | % 48
      f''16 es''16 des''16 c''16
      des''16 es''16 | % 49
      des''4. \bar "|."
    }

    \addlyrics {
      Рад -- ва се Зе -- мя -- та, рад --
      ва се Не -- бе -- то в~Свет -- ли
      -- на. Се -- ме -- то, по -- ся -- то
      "в~плод-" -- на ни -- ва, "рас-" -- не
      свя -- то "в~Лю-" -- бов -- та. Бог
      въз -- раст -- ва Но -- ви -- я
      жи -- вот "в~Ра-" -- дост и Мир и
      ця -- ло -- то Не -- бе пре -- ли --
      ва от Лю -- бов. Е -- то го, гре --
      е де -- нят кра -- сив и свят, и
      "Лю-" -- бов -- та е жи -- ва бла --
      го -- дат. Грей, "раз-" -- "пръск" -- вай
      "Ра-" -- дост, Мир и О -- бич, свят
      Бо -- жи ден. Все -- благ, все --
      мъ -- дър Бог О -- тец в~ду -- ши
      -- те ми -- лост -- та Си да въз --
      рас -- ти. Да пре -- бъ -- де Ра --
      дост, да пре -- бъ -- де бла --
      гост в~Но -- ви -- я жи -- вот бла
      -- жен. Бо -- жи -- я -- та во -- ля
      да пре -- бъ -- де свя -- та в~то
      -- зи ден бла -- го -- сло -- вен.}
 
    \addlyrics {
      Rad -- va se Ze -- mja -- ta, rad --
      va se Ne -- be -- to v~Svet -- li
      -- na. Se -- me -- to, po -- sja -- to
      v~plod -- na ni -- va, ras -- ne
      svja -- to "v~Lju-" -- bov -- ta. Bog
      văz -- rast -- va No -- vi -- ja
      ži -- vot "v~Ra-" -- dost i Mir i
      cja -- lo -- to Ne -- be pre -- li --
      va ot Lju -- bov. E -- to go, gre --
      e de -- njat kra -- siv i svjat, i
      "Lju-" -- bov -- ta e ži -- va bla --
      go -- dat. Grej, raz -- "prăsk" -- vaj
      "Ra-" -- dost, Mir i O -- bič, svjat
      Bo -- ži den. Vse -- blag, vse --
      mă -- dăr Bog O -- tec v~du -- ši
      -- te mi -- lost -- ta Si da văz --
      ras -- ti. Da pre -- bă -- de Ra --
      dost, da pre -- bă -- de bla --
      gost v~No -- vi -- ja ži -- vot bla
      -- žen. Bo -- ži -- ja -- ta vo -- lja
      da pre -- bă -- de svja -- ta v~to
      -- zi den bla -- go -- slo -- ven.}


        \header {
          title = \titleFunc "Мелодия – В радостта на деня" " Melodija – V radostta na denja"
        }

        \midi{}

      } % score

      \markup \fontsize #bgCoupletFontSize {
        \hspace #3
        \override #`(baseline-skip . ,bgCoupletBaselineSkip)
        \column {
          \line {  2. Слънчевото ято}

          \line {   "   " Бога благославя}

          \line {   "   " и зари,}

          \line {   "   " Божията Слава}

          \line {   "   " новия Свещен Живот}

          \line {   "   " да озари.}

          \line {   "   " Целият всемир е светлина}

          \line {   "   " и светлината}

          \line {   "   " извор е на радост,}

          \line {   "   " сила и живот.}
          \line {   "   " }
          \line \italic {   "      " Припев:}
          \line {   "      " Ето, го грее денят ...}


        }

        \hspace #10
        \override #`(baseline-skip . ,bgCoupletBaselineSkip)
        \column {
          \line {  2. Slănčevoto jato}

          \line {   "   " Boga blagoslavja}

          \line {   "   " i zari,}

          \line {   "   " Božijata Slava}

          \line {   "   " novija Svešten Život}

          \line {   "   " da ozari.}

          \line {   "   " Celijat vsemir e svetlina}

          \line {   "   " i svetlinata}

          \line {   "   " izvor e na radost,}

          \line {   "   " sila i život.}
          \line {   "   " }
          \line \italic {   "      " Pripev:}
          \line {   "      " Eto, go gree denjat ...}


        }%column
      } % markup

      \pageBreak

      % include foreign translation(s) of the song
      \include "lyrics_de/186_melodiya_2_radostta_na_denya_lyrics_de.ly"

    } % bookpart

    % Più mosso
    %
