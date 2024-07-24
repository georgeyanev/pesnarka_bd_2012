\version "2.24.4"

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
    \if \should-print-page-number \fromproperty #'page:page-number-string
  }
  evenFooterMarkup = \markup
  \fill-line {
    \if \should-print-page-number \fromproperty #'page:page-number-string
    ""
  }

  left-margin = 1.5\cm
  right-margin = 1.5\cm
  top-margin = 1.2\cm
  bottom-margin = 1.0\cm
  ragged-bottom = ##t % do not spread the staves to fill the whole vertical space

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
