%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
%% The MSU Poster Class
%%
%% For typesetting academic posters in LaTeX at
%% Michigan State University
%%
%% Originally Commissioned by the
%% AMS Graduate Student Chapter at CMU
%%
%% Created by Rachel Domagalski and Dr. Patrick Davis
%%
%% Redesigned for use at MSU
%%
%% Original Version: 21 September 2016
%% Last Updated: 13 October 2019
%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{msuposter}[2019/10/13 v1.0 document class for MSU posters]

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%           Process Class Options            %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage{xparse}
\RequirePackage{etoolbox}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{beamer}}
\ProcessOptions \relax
\LoadClass[t]{beamer}

\newcommand{\myskip}{20pt}
\newcommand{\mybigskip}{40pt}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%          Preamble Definitions              %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\NewDocumentCommand\@advisor{}{} % SET DEFAULT TYPE
\NewDocumentCommand\advisor{O{1} m}
    {\RenewDocumentCommand\@advisor{}{\par\vspace{\mybigskip}\Large Advisor\ifnumgreater{#1}{1}{s}{}: #2}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%          Import Standard Packages          %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage[T1]{fontenc}
\RequirePackage[utf8]{inputenc}
\RequirePackage{lmodern}
\RequirePackage{amsmath,amssymb,amsfonts,amstext,amscd,mathtools,exscale}
\RequirePackage{xcolor}
\RequirePackage{graphicx}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%        Define the Official MSU Colors      %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% From Brand Identity Standards and Web Style Guide 
%% PRIMARY COLORS (backgrounds, headlines, buttons, containers)
\definecolor{msugreen}{HTML}{18453B}
\definecolor{msuwhite}{HTML}{FFFFFF}

%% SECONDARY COLORS (backgounds for pages, containers, buttons, etc)
\definecolor{msubrightgreen}{HTML}{0DB14B}
\definecolor{msugrey}{HTML}{97A2A2}
\definecolor{msubrightorange}{HTML}{F08521}
\definecolor{msuteal}{HTML}{008183}
\definecolor{msublue}{HTML}{909AB7}
\definecolor{msublack}{HTML}{535054}
\definecolor{msuyellow}{HTML}{D1DE3F}
\definecolor{msubiege}{HTML}{E8D9B5}
\definecolor{msulightorange}{HTML}{C89A58}
\definecolor{msuolive}{HTML}{94AE4A}
\definecolor{msupurple}{HTML}{6E005F}
\definecolor{msured}{HTML}{CB5A28}

% MSU TEXT COLORbeamercolortheme
\definecolor{msutext}{HTML}{333333}

%% Self Defined (not official, different saturation of official colors) %%
\definecolor{msulightgreen}{HTML}{ecf8f6}
\definecolor{msudarkgreen}{HTML}{0D2620}
\definecolor{msubrightlightgreen}{HTML}{e7fdf0}
\definecolor{msulighterpurple}{HTML}{ffe6fc}
\definecolor{msulightgrey}{HTML}{e6e5e6}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%           Set Global Properties            %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Page Layout
\RequirePackage[orientation=landscape,size=custom,width=142.24,height=106.68,scale=1.35]{beamerposter}
\setbeamercolor{background canvas}{bg=msulightgrey}
\setbeamertemplate{navigation symbols}{}

%% Change Default List Styles
\setbeamertemplate{itemize items}[square]
\setbeamertemplate{enumerate items}[default]
\setbeamercolor{item}{fg=black,bg=white}

%% Change Default Caption Styles
\setbeamertemplate{caption}[numbered]{}
\setbeamercolor{caption name}{fg=msuteal}

%% Change Default Bibliography Styles
\setbeamertemplate{bibliography item}[text]
\setbeamercolor{bibliography item}{fg=black,bg=black}
\setbeamercolor*{bibliography entry title}{fg=black,bg=black}
\setbeamercolor*{bibliography entry author}{fg=black,bg=black}
\setbeamercolor*{bibliography entry journal}{fg=black,bg=black}
\setbeamercolor*{bibliography entry note}{fg=black,bg=black}
\setbeamercolor*{bibliography entry location}{fg=black,bg=black}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%           Reformat the Blocks              %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% block
\setbeamercolor{block title}{fg=white,bg=msugreen}
\setbeamercolor{block body}{fg=black,bg=white}
\AfterEndEnvironment{block}{\vspace{\myskip}}

\setbeamertemplate{block begin}{
  \vskip.75ex
  \begin{beamercolorbox}[leftskip=1cm,colsep*=.75ex]{block title}%
  \usebeamerfont*{block title}\insertblocktitle
  \end{beamercolorbox}%
  {\ifbeamercolorempty[bg]{block body}{}{\nointerlineskip\vskip-0.5pt}}%
  \usebeamerfont{block body}%
  \begin{beamercolorbox}[colsep*=.75ex,sep=.75ex,vmode]{block body}%
  \ifbeamercolorempty[bg]{block body}{\vskip-.25ex}{\vskip-.75ex}\vbox{}%
}
\setbeamertemplate{block end}{\end{beamercolorbox}}

%% alertedblock
\setbeamercolor{block title alerted}{fg=msuwhite,bg=msubrightgreen}
\setbeamercolor{block body alerted}{fg=black,bg=white}

\AfterEndEnvironment{alertblock}{\vspace{20pt}}

\setbeamertemplate{block alerted begin}{
  \vskip.75ex
  \begin{beamercolorbox}[leftskip=1cm,colsep*=.75ex]{block title alerted}%
  \usebeamerfont*{block title}\insertblocktitle
  \end{beamercolorbox}%
  {\ifbeamercolorempty[bg]{block body}{}{\nointerlineskip\vskip-0.5pt}}%
  \usebeamerfont{block body}%
  \begin{beamercolorbox}[colsep*=.75ex,sep=.75ex,vmode]{block body}%
  \ifbeamercolorempty[bg]{block body}{\vskip-.25ex}{\vskip-.75ex}\vbox{}%
}
\setbeamertemplate{block alerted end}{\end{beamercolorbox}}

%% exampleblock
\setbeamercolor{block title example}{fg=msuwhite,bg=msupurple}
\setbeamercolor{block body example}{fg=black,bg=white}

\AfterEndEnvironment{exampleblock}{\vspace{20pt}}

\setbeamertemplate{block example begin}{
  \vskip.75ex
  \begin{beamercolorbox}[leftskip=1cm,colsep*=.75ex]{block title example}%
  \usebeamerfont*{block title}\insertblocktitle
  \end{beamercolorbox}%
  {\ifbeamercolorempty[bg]{block body}{}{\nointerlineskip\vskip-0.5pt}}%
  \usebeamerfont{block body}%
  \begin{beamercolorbox}[colsep*=.75ex,sep=.75ex,vmode]{block body}%
  \ifbeamercolorempty[bg]{block example body}{\vskip-.25ex}{\vskip-.75ex}\vbox{}%
}
\setbeamertemplate{block example end}{\end{beamercolorbox}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%           Define the Headline              %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\setbeamercolor{headline}{fg=white,bg=msugreen}

\setbeamertemplate{headline}{  
\leavevmode
\begin{beamercolorbox}[wd=\paperwidth]{headline}
  \vspace*{\mybigskip}
  \begin{columns}[c]
  \begin{column}{.7\paperwidth}
    \begin{flushleft}
      {\veryHuge\bfseries\inserttitle}\par\vspace{\mybigskip}
      {\LARGE\insertauthor}\par\vspace{\myskip}
      {\Large\insertinstitute}
      {\@advisor}
    \end{flushleft}
  \end{column}
  \begin{column}{.22\paperwidth}
  \centering
      %\includegraphics[width=.15\textwidth]{spartanhelmet.jpg}
    \includegraphics[width=\textwidth]{MSU-Wordmark-White.eps}
  \end{column}
  \end{columns}
  \vspace*{\mybigskip}
\end{beamercolorbox}
}

