\version "2.24.4"

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

    tocTitleMarkup = \markup \abs-fontsize #17.5 \column {
      \fill-line { \null "Съдържание" \null }
      \vspace #1.5
    }

    tocItemMarkup = \markup  \abs-fontsize #12 {
      \vspace #1.1 \fill-line {
        \fromproperty #'toc:text \tocItemWithDotsMarkup \fromproperty #'toc:page
      }
    }

    tocActMarkup = \markup \large \column {
      \vspace #1
      \fill-line { \null \abs-fontsize #14 \fromproperty #'toc:text \null }
      \vspace #0.9
    }
  }



  \markuplist \table-of-contents

  %  \pageBreak

  %   \label #'ref238
  %\tocItem \markup "Index"

  % \markup {Благославяй – Blagoslavyay \page-ref #'ref024 "0" "?" }

} % bookpart
