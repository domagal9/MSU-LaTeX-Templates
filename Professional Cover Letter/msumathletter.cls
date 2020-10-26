% MSU Math Dept letter class file

% Identification
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{msumathletter}[2016/12/15 MSU Math Dept letter, WWYW version]
\DeclareOption*{\PassOptionsToClass{\currentOption}{letter}}
\ProcessOptions\relax

% Bring in the regular letter class
\LoadClass{letter}

% Bring in needed packages
\RequirePackage{ifthen}
\RequirePackage{graphicx}
\RequirePackage[T1]{fontenc}
\RequirePackage{amsmath}
\RequirePackage{kpfonts}
\RequirePackage[english]{babel}
\RequirePackage{microtype}
\RequirePackage{lmodern}

\renewcommand{\ps@firstpage}%
  {%
  \setlength{\headheight}{1.3in}%
  \setlength{\headsep}{25pt}%
  
% Place MSU header in header of first page
  \renewcommand{\@oddhead}
  {\makebox[2.1in][r]{\includegraphics[width=2.3in]{MSUheading}}}%  
  \renewcommand{\@evenhead}{}%
  \renewcommand{\@oddfoot}{}%

% Place icon and Dept. return address in margin
  \vspace*{.61\textheight}%
   \hspace{-.9in} \parbox{1.39in}
  {\flushright
  \includegraphics[width=0.8in]{MSUSealGreen}\\[12pt]
     {\small {\usefont{T1}{phv}{bc}{n} DEPARTMENT OF\\}
     {\usefont{T1}{phv}{bc}{n}MATHEMATICS}\\[4pt]
     {\usefont{T1}{phv}{mc}{n}Michigan State University\\
      Wells Hall\\
       619 Red Cedar Road\\
       East Lansing, MI\\ 
  48824-1027\\ 
  Phone: 517-353-0844\\
  Fax: 517-432-1562}\\[2pt]
  \texttt{www.math.msu.edu}}\\%
  
  \vspace*{.3\textheight}
 \flushleft 
\textit{\tiny MSU is an affirmative-action/\\[-1\baselineskip]
  equal opportunity employer.}}
  %
  %
% Return to top of first page.
  \vspace*{-1.35\textheight}
 } 
  \setlength{\topmargin}{0in}
