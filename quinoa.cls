% quinoa.cls
%  Typesets quizbowl notes
%
% 2014-02-09
% Ophir Lifshitz
% hangfromthefloor@gmail.com

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{quinoa}[2014/02/09 Typesets quizbowl notes]

\PassOptionsToClass{oneside,openany}{book}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ProcessOptions\relax
\LoadClass{book}

% LAYOUT
\RequirePackage{enumerate}
\RequirePackage[xetex]{hyperref}
\RequirePackage{makeidx}
\makeindex

% TYPOGRAPHY
\RequirePackage{fontspec}
\newcommand{\myfont}{Brill}
\setmainfont[Ligatures={Common}]{\myfont}

\setcounter{secnumdepth}{0}
\renewcommand{\chaptermark}[1]{\markboth{#1}{}}

\newcommand\name[2]{\index{#2, #1@\textbf{#2, #1}}#1 #2}
\let\oldemph\emph
\renewcommand\emph[1]{\oldemph{#1}\index{#1@\textit{#1}}}
