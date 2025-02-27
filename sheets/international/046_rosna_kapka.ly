\version "2.24.4"

% include paper part and global functions
\include "include/globals.ily"
"rightBraces046" = \markup {
  \column {
    % repeat braces
    \translate #'(0 . -12.3 )
    \right-brace #29

    \translate #'(0 . -16.7 )
    \right-brace #29
  }
  \column {
    % repeat numbers
    \translate #'(0 . -13.2 )
    2

    \translate #'(0 . -21.0 )
    2
  }
}

\bookpart {
  \label #'ref046
  \tocItem \markup "Росна капка – Rosna kapka"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute  {
      \clef treble
      \key a \minor
      \time 3/4
      \tempoFunc "Larghetto" 4 "58"
      \partial 4
      \autoBeamOff

      e'8 e' a'4 b' c''8 b' |  a'4 a' b'8 b' | c''4 c'' d''8 c'' \break | % 5

      b'4 a' e''8 e'' | e''4 d'' c''8 d'' | e''2 c''8 c'' | c''4 b' c''8 b' \break |

      a'2 e''8 d'' \repeat volta 2 {
        | c''4 c'' d''8 c'' |  b'4 b' c''8 b' \break |

        a'4 gis' a'8 b' |
      }  \alternative {
        { c''4 b' a'8 b' | c''4 d'' e''8 f'' | e''2 e''8 d''  \break |  }

        { c''4 b' c''8 b'8 | a'4 gis'4 a'8 b'8 | a'2 \bar "|." }
      }
    }

    \addlyrics {
      \set stanza = "1." Рос -- на кап -- ко, свят ла -- зу -- рен, чист, кра -- сив и тих, без --
      бу -- рен, мир на рай -- ски -- я жи -- вот, мир на рай -- ски -- я жи --
      вот! В~те -- бе, кап -- ко, ви -- кам всич -- ки бра -- тя
      ми -- ли и се -- стрич -- ки, да ти ста -- не -- ме на -- род. В~те -- бе,
      стрич -- ки, да ти ста -- не -- ме на -- род.
    }
    \addlyrics {
      \set stanza = "1." Ros -- na kap -- ko, svjat la -- zu -- ren, čist, kra -- siv i tih, bez --
      bu -- ren, mir na raj -- ski -- ja ži -- vot, mir na raj -- ski -- ja ži --
      vot! V~te -- be, kap -- ko, vi -- kam vsič -- ki bra -- tja
      mi -- li i se -- strič -- ki, da ti sta -- ne -- me na -- rod. V~te -- be,
      strič -- ki, da ti sta -- ne -- me na -- rod.
    }

    \header {
      title = \titleFunc "Росна капка" "Rosna kapka"
    }

    \midi{}

  } % score

  \markup \empty-two

  \markup \abs-fontsize #11 {
    \hspace #7
    \override #`(baseline-skip . ,bgCoupletBaselineSkip)
    \column {
      \line { 2. Всяка сутрин във росата }
      \line {   "   " ще си къпеме сърцата }

      \line {   "   " като слънчеви лъчи (2)}

      \line {   "   " и ще пеем нови песни}

      \line {   "   " със мелодии чудесни –}

      \line {   "   " сводът красен да ечи.}

      \vspace #0.5

      \line {   3.  И тъй чисти, в бели дрехи}

      \line {   "   " и препасани с доспехи}

      \line {   "   " на Великата Любов, (2)}

      \line {   "   " ново царство ще направим,}

      \line {   "   " Бога нашего да славим}

      \line {   "   " всеки ден, во век веков.}
    }  \"rightBraces046"

    \hspace #5
    \override #`(baseline-skip . ,bgCoupletBaselineSkip)
    \column {
      \line { 2. Vsjaka sutrin văv rosata }
      \line {   "   " šte si kăpeme sărcata }

      \line {   "   " kato slănčevi lăči (2)}

      \line {   "   " i šte peem novi pesni}

      \line {   "   " săs melodii čudesni –}

      \line {   "   " svodăt krasen da eči.}

      \vspace #0.5

      \line {   3.  I tăj čisti, v beli drehi}

      \line {   "   " i prepasani s dospehi}

      \line {   "   " na Velikata Ljubov, (2)}

      \line {   "   " novo carstvo šte napravim,}

      \line {   "   " Boga našego da slavim}

      \line {   "   " vseki den, vo vek vekov.}
    } %column

    \"rightBraces046"
  } % markup

  \pageBreak

  % include foreign translation(s) of the song
  \include "../../lyrics/de/046_rosna_kapka_lyrics_de.ly"

} % bookpart
