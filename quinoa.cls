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

% TYPOGRAPHY
\RequirePackage{fontspec}
\newcommand{\myfont}{Brill}
\setmainfont[Ligatures={Common}]{\myfont}

\setcounter{secnumdepth}{0}
\renewcommand{\chaptermark}[1]{\markboth{#1}{}}
