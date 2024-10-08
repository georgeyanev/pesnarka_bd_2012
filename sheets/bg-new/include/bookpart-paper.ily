\version "2.24.4"

\paper {
  print-all-headers = ##t
  print-page-number = ##t
  print-first-page-number = ##t


  % put page numbers on the bottom
  oddHeaderMarkup = \markup {

    \fill-line {
      ""
      \if \should-print-page-number  \abs-fontsize #10 {
        \bold \fromproperty #'page:page-number-string

      }
    }
  }
  evenHeaderMarkup = \markup {

    \fill-line {
      \if \should-print-page-number \abs-fontsize #10 {
        \bold  \fromproperty #'page:page-number-string
        ""
      }
    }
  }

  oddFooterMarkup = \markup ""

  evenFooterMarkup = ""
  left-margin = 1.5\cm
  right-margin = 1.5\cm
  top-margin = 1\cm
  bottom-margin = 1.2\cm
  ragged-bottom = ##t % do not spread the staves to fill the whole vertical space
  top-markup-spacing.basic-distance = 6\mm % margin between page number and system for the first page
  top-system-spacing.basic-distance = 10\mm % margin between page number and system for the other pages 

  % change distance between staves
  system-system-spacing =
  #'((basic-distance . 16)
     (minimum-distance . 6)
     (padding . 1)
     (stretchability . 12))
}

\header {
  tagline = ##f
}
