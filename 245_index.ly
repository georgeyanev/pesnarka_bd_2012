\version "2.24.0"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \paper {
    print-all-headers = ##f
    print-page-number = ##f
    print-first-page-number = ##f

    % put page numbers on the bottom
    oddHeaderMarkup = \markup ""
    evenHeaderMarkup = \markup ""
    oddFooterMarkup = \markup
    \fill-line {
      ""
      \if \should-print-page-number \fromproperty #'page:page-number-string
    }
    evenFooterMarkup = \markup
    \fill-line {
      \if \should-print-page-number \fromproperty #'page:page-number-string
      ""
    }

    left-margin = 1.5\cm
    right-margin = 1.5\cm
    top-margin = 1.6\cm
    bottom-margin = 1.2\cm
    ragged-bottom = ##t % do not spread the staves to fill the whole vertical space
  
    tocTitleMarkup = \markup \fontsize  #+6.5 \bold \column {
      \fill-line { \null "INHALT" \null }
      \null
    }

    tocItemMarkup = \markup \fontsize  #+3.5 \fill-line {
      \fromproperty #'toc:text \tocItemWithDotsMarkup \fromproperty #'toc:page 
    }  

    tocActMarkup = \markup \large \column {
      \hspace #1
      \fill-line { \null \fontsize #+4 \bold \fromproperty #'toc:text \null }
      \hspace #1
    }    
  }
 
  \markup \large \column {
      \fill-line { \null \fontsize #+4 \bold "АЗБУЧЕН ПОКАЗАТЕЛ" \null }
      \hspace #1
  }

  \markup \column \fontsize  #+3.5 {
    \fill-line {
      \fill-with-pattern #1 #RIGHT . "А бре, синко – A bre, sinko" \page-ref #'ref137 "0" "?"
    }
    \fill-line {
      \fill-with-pattern #1 #RIGHT . "Аз мога да дишам – Az moga da disham" \page-ref #'ref171 "0" "?"
    }
    \fill-line {
      \fill-with-pattern #1 #RIGHT . "Аз смея да кажа – Az smeya da kaza" \page-ref #'ref109 "0" "?"
    }
    \fill-line {
      \fill-with-pattern #1 #RIGHT . "Аз съм бялото кокиче –  Аz sam byaloto kokiche" \page-ref #'ref047 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "Аин фаси – Ain fasi" \page-ref #'ref135 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "Ангел вопияше – Angel vopiyashe" \page-ref #'ref064 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "Аум – Aum" \page-ref #'ref75 "0" "?"
    }

   \fill-line {
      \fill-with-pattern #1 #RIGHT . "Бащина песен – Угледна – Bashtina pesen – ugledna" \page-ref #'ref138 "0" "?"
    }

   \fill-line {
      \fill-with-pattern #1 #RIGHT . "Берхан Ази – Berhan Azi" \page-ref #'ref169 "0" "?"
    }

   \fill-line {
      \fill-with-pattern #1 #RIGHT . "" \page-ref #'ref135 "0" "?"
    }

   \fill-line {
      \fill-with-pattern #1 #RIGHT . "" \page-ref #'ref135 "0" "?"
    }

   \fill-line {
      \fill-with-pattern #1 #RIGHT . "" \page-ref #'ref135 "0" "?"
    }

   \fill-line {
      \fill-with-pattern #1 #RIGHT . "" \page-ref #'ref135 "0" "?"
    }

   \fill-line {
      \fill-with-pattern #1 #RIGHT . "" \page-ref #'ref135 "0" "?"
    }

   \fill-line {
      \fill-with-pattern #1 #RIGHT . "" \page-ref #'ref135 "0" "?"
    }



  }









} % bookpart

