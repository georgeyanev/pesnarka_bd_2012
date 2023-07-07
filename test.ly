\version "2.22.1"

\score {
  <<
    % Main staff
    \new Staff {
      \relative c' {
        c4 d e f | % normal passage
        g a b c | % normal passage
        % ossia passage starts here
        <<
          { c2 d } % normal passage continues
          % ossia staff
          \new OssiaStaff {
            \override StaffSymbol.staff-space = #(magstep -3) % adjust staff size
            \override StaffSymbol.thickness = #(magstep -3) % adjust staff size
            \relative c' {
              c4. e8 c f4. | % ossia passage
            }
          }
        >>
        e2 f | % normal passage
      }
    }
  >>
  \layout { }
}