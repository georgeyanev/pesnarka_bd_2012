\version "2.20.0"

\paper {
  #(set-paper-size "a5")
}

\bookpart {
  \paper {
    print-all-headers = ##t
    print-page-number = ##t
    print-first-page-number = ##t

    % put page numbers on the bottom
    oddHeaderMarkup = \markup ""
    evenHeaderMarkup = \markup ""
    oddFooterMarkup = \markup
    \fill-line {
      ""
      \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string
    }
    evenFooterMarkup = \markup
    \fill-line {
      \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string
      ""
    }

    left-margin = 1.5\cm
    right-margin = 1.5\cm
    top-margin = 1.6\cm
    bottom-margin = 1.2\cm
    ragged-bottom = ##t % do not spread the staves to fill the whole vertical space

    % change lyrics and titles font (affects notes also)
    fonts =
    #(make-pango-font-tree
      "Times New Roman"
      "DejaVu Sans"
      "DejaVu Sans Mono"
      (/ (* staff-height pt) 3.6))

    % change distance between staves
    system-system-spacing =
    #'((basic-distance . 12)
       (minimum-distance . 6)
       (padding . 1)
       (stretchability . 12))
  }

  \header {
    tagline = ##f
  }

  \score{
    \layout { 
      indent = 0.0\cm % remove first line indentation
      %ragged-last = ##t % do not spread last line to fill the whole space
      \context {
        \Score
        \omit BarNumber %remove bar numbers
      } % context

      \context { % change staff size
        \Staff
        fontSize = #+0 % affects notes size only
        \override StaffSymbol #'staff-space = #(magstep -3)
        \override StaffSymbol #'thickness = #0.5
        \override BarLine #'hair-thickness = #1
        %\override StaffSymbol #'ledger-line-thickness = #'(0 . 0)
      }

      \context { % adjust space between staff and lyrics and between the two lyric lines
        \Lyrics
        \override VerticalAxisGroup.nonstaff-relatedstaff-spacing = #'(
          (basic-distance . 4.5)
          (padding . 0.5)
        )
        \override VerticalAxisGroup.nonstaff-nonstaff-spacing = #'((minimum-distance . 2))
      }
    } % layout

    <<
      \new Lyrics = "tempVoiceLyricsBG" \with {
        % lyrics above a staff should have this override
        \override VerticalAxisGroup.staff-affinity = #DOWN
      }    
      \new Lyrics = "tempVoiceLyricsEN" \with {
        \override VerticalAxisGroup.staff-affinity = #DOWN
      }    
      \new Voice = "mainVoice" \absolute  {
        \clef treble
        \key d \minor
        \time 3/4 
        \tempo \markup { % make tempo note smaller
          \concat { "Andante " \normal-text { "(" }
            \teeny \general-align #Y #DOWN \note #"4" #0.8
            \normal-text { " = 60)" }
          }
        }  
        \partial 4
        \autoBeamOff
 
        a4 | d'2 e'4 | f'4 d'2 | \time 4/4  a'4 bes' a' gis' | \time 3/4  a'2 a'4 \break |        
        d''2 e''4 | \time 4/4  
      
        << % now temporary add a second voice
          { 
            \voiceTwo % this voice is in the same context as parent
            f''4 e'' d'' cis'' | d''4 \stemUp a'2 \stemNeutral
          }
          \new Voice = "tempVoice" { % this is a new voice context
            \voiceOne \autoBeamOff
            f''4 e''8 e'' d''4 cis'' | \hideNotes d''4 \stemDown a'2 \stemNeutral \unHideNotes
          }
        >>
        \oneVoice
      
        a'4 | \time 3/4  bes'2 a'4 | \break       
      
        \time 4/4  bes'4 a' bes' c'' | bes'4 a'2 a'4 | \time 3/4  d''2 cis''4 | \time 4/4  d''4 a' bes' a' \break |
        a'4 g'2 f'4 |  e'4 d' f' e' | d'4 cis' e'2 | \time 3/4  d'2 a'4 \break |
        d''2 a'4 | \time 4/4  bes'4 a'2 d'4 |  f'2 e'4 cis' | \time 3/4  d'2.\fermata | \bar "|." \break
      }
  
      \new Lyrics \lyricsto "mainVoice" {
        Шу -- ми,
        аз слу -- шам цял свят да шу -- ми! Шу -- мят
        сър -- ца -- та че -- ло --  веш -- ки всред
        свой -- те и -- до -- ли и греш -- ки, шу -- мят
        без -- спир -- но у -- мо -- ве -- те, го -- лям
        е при -- лив в~до -- мо -- ве -- те. Шу -- ми,
        аз слу -- шам цял свят да шу -- ми!
      }
  
      \context Lyrics = "tempVoiceLyricsBG" {
        \lyricsto "tempVoice" {
          "(4.)мис" -- ли и неж -- ни чув -- ства
        }
      }
  
      \new Lyrics \lyricsto "mainVoice" {
        Shu -- mi,
        az slu -- sham tsyal svyat da shu -- mi! Shu -- myat
        sar -- tsa -- ta che -- lo --  vesh -- ki vsred
        svoy -- te i -- do -- li i gresh -- ki, shu -- myat
        bez -- spir -- no u -- mo -- ve -- te, go -- lyam
        e pri -- liv v~do -- mo -- ve -- te. Shu -- mi,
        az slu -- sham tsyal svyat da shu -- mi!
      }
  
      \context Lyrics = "tempVoiceLyricsEN" {
        \lyricsto "tempVoice" {
          "(4.)mis" -- li i nezh -- ni chuv -- stva
        }
      }
  
    >>
  

  
    \header {
      title = \markup \column \normal-text \fontsize #2.5 {
        \center-align
        \line { Шуми }
        \vspace #-0.6
        \center-align
        \line \fontsize #-3 { Shumi }
        \vspace #-0.8
        \center-align
        \line \fontsize #-3 { " " }
      }
    }
  
    \midi{}

  } % score

  \pageBreak

  \markup \fontsize #+2.5 {
    \hspace #1
    \override #'(baseline-skip . 2.4) % affects space between column lines
    \column {
      \line {  2. И вятър вее,}

      \line {   "   "където си ще.}

      \line {   "   "Листата горски отговарят}

      \line {   "   "на неговия зов, повтарят}

      \line {   "   "любимата си песенчица,}

      \line {   "   "игрива като ладанчица.}

      \line {   "   "И вятър вее,}

      \line {   "   "където си ще.}
      \line { " " }
      \line {   3. Мой ветре, буйно}

      \line {   "   "задухай сега!}

      \line {   "   "Носи Божествената влага}

      \line {   "   "и освежаваща прохлада;}

      \line {   "   "пречиствай задушливи хижи,}

      \line {   "   "разсейвай тежки земни грижи!}

      \line {   "   "Мой ветре, буйно}

      \line {   "   "задухай сега!}
      \line { " " }
      \line {      4. Задухай, ветре,}

      \line {   "   "света разведри!}

      \line {   "   "При чисти мисли и нежни чувства}

      \line {   "   "цъфтят Божествени изкуства;}

      \line {   "   "навред да просияе радост,}

      \line {   "   "навред да диша свежа младост.}

      \line {   "   "Задухай, ветре,}

      \line {   "   "света избистри!}
    }

    \hspace #5
    \override #'(baseline-skip . 2.4)
    \column {
      \line {  2. I vyatar vee,}

      \line {   "   "kadeto si shte.}

      \line {   "   "Listata gorski otgovaryat}

      \line {   "   "na negoviya zov, povtaryat}

      \line {   "   "lyubimata si pesenchitsa,}

      \line {   "   "igriva kato ladanchitsa.}

      \line {   "   "I vyatar vee,}

      \line {   "   "kadeto si shte.}
      \line { " " }
      \line {  3. Moy vetre, buyno}

      \line {   "   "zaduhay sega!}

      \line {   "   "Nosi Bozhestvenata vlaga}

      \line {   "   "i osvezhavashta prohlada;}

      \line {   "   "prechistvay zadushlivi hizhi,}

      \line {   "   "razseyvay tezhki zemni grizhi!}

      \line {   "   "Moy vetre, buyno}

      \line {   "   "zaduhay sega!}
      \line { " " }
      \line {  4. Zaduhay, vetre,}

      \line {   "   "sveta razvedri!}

      \line {   "   "Pri chisti misli i nezhni chuvstva}

      \line {   "   "tsaftyat Bozhestveni izkustva;}

      \line {   "   "navred da prosiyae radost,}

      \line {   "   "navred da disha svezha mladost.}

      \line {   "   "Zaduhay, vetre,}

      \line {   "   "sveta izbistri!}
    } %column
  } % markup

  \pageBreak

  % include foreign translation(s) of the song
  \include "lyrics_de/032_shumi_lyrics_de.ly"

} % bookpart
