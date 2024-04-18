\version "2.24.3"

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
    top-margin = 2.6\cm
    bottom-margin = 1.2\cm
    ragged-bottom = ##t % do not spread the staves to fill the whole vertical space


  }


  \markup {
    \fill-line
    \general-align #Y #DOWN {
      \epsfile #X #65 #"../../img/bd_image.eps"
    }
  }

  \markup { {  \vspace #0.4 } }

  \markup \abs-fontsize #12 { \fill-line \bold  {" Beinsa Duno "} }

  % include foreign translation(s) of the song
  %

} % bookpart

% Più mosso
%