\version "2.24.2"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \paper {
    print-all-headers = ##f
    print-page-number = ##t
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


  }

  \tocItem \markup "Предговор"
  \markup \fontsize  #+3.0 { \fill-line \bold {"ПРЕДГОВОР"} }


  \markup \fontsize #+2.5 {
    \vspace #1.5 \override #'(baseline-skip . 2.7)
    \justify-string "
   
  Настоящият сборник съдържа вокални и инструментални композиции от Учителя Петър Константинов Дънов – Беинса Дуно (1864 – 1944), основоположник на Духовно Общество „Бяло Братство“ в България, и от негови ученици. Изданието представлява четвърто преработено и допълнено издание на сборника „Песни от Учителя“, отпечатан през 1949 г. в София под редакцията на Мария Тодорова. За база на настоящото издание послужи последното трето издание на „Песни от Учителя“ от 2012 съставено от: Георги Стратев, Иоана Стратева, Станка Желева, Пенка Кадиева, Благовест Жеков, Ина Дойнова.

  Екипът, изготвил настоящето издание, видя необходимостта от установяване на ясна редакторска линия, съдържаща се в следните точки: 1. запазване на оригиналите и автентичността на музикалните композиции; 2. професионализиране на нотописа, посредством установяване на конвенции при нотния правопис според правилата на музикалната теория; 3. последователно прилагане на същите спрямо нотния текст. Тази редакторска линия наложи преосмиляне структурната организация на някои песни, минимално осъвременяване на лирическия им текст, спрямо нормите и синтаксиса на съвремения български език, както и корекции в нотния правопис. Освен гореспоменатите аскпекти редакционната линия засяга още логическите акценти в поетичния и музикалния текст, разпределени синхронно в дадения размер на песента както и хармоничния строеж на мелодията, чиито посоки определят музикалните образи. Съобразно това целта на редакторската работа бе да съхрани музикалния и словесен текст, разполагайки го логично в съответните размери, съобразени с хармоничния строеж на мелодията. Разбира се подготовката на този сборник не би била възможна без предишните поколения музиканти, работили с и върху музикалните композиции на Учителя Петър Дънов. Сред тях са проф. Асен Арнаудов, Боян Икономов, Христо Дързев, Лиляна-Цветана Табакова, Мария Тодорова, Матей Калудов, Христо Дързев и други. 




    
 
  "
  }
  
    \markup \fontsize #+2.5 \override #'(baseline-skip . 2.7) {
    \justify-string "

    Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.   

Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Lorem ipsum dolor sit amet,
 

   "
  }




} % bookpart

% Più mosso
% „Weiße Bruderschaft“
