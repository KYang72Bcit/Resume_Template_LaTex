\hfill\hfill\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cover_letter}[2015/05/25 An elegant cover class]
\LoadClass[11pt]{article}

% disable indent globally
\setlength{\parindent}{0pt}
% some general improvements, defines the XeTeX logo
\RequirePackage{xltxtra}
% use xifthen
\RequirePackage{xifthen}
% use progress bar for skill
\RequirePackage{progressbar}
% use hyperlink for email and url
% \RequirePackage{hyperref}
\RequirePackage[hidelinks]{hyperref}

\RequirePackage{url}
\urlstyle{tt}
% use fontawesome
\RequirePackage{fontawesome}
% use xcolor for customizing color
%\RequirePackage[usenames,dvipsnames]{xcolor}
% loading fonts
\RequirePackage{fontspec}
% \usepackage[hidelinks]{hyperref}

% Main document font
\setmainfont[
  Path = fonts/Main/ ,
  Extension = .otf ,
  UprightFont = *-Regular ,
  BoldFont = *-Bold ,
  ItalicFont = *-Italic ,
  BoldItalicFont = *-Bolditalic ,
  SmallCapsFont = Fontin-SmallCaps
]{FiraSans}


\RequirePackage[
	a4paper,
	left=1in,
	right=1in,
	top=1in,
	bottom=1in,
	nohead
]{geometry}

\RequirePackage{titlesec}
\RequirePackage{enumitem}
\setlist{noitemsep} % removes spacing from items but leaves space around the whole list
%\setlist{nosep} % removes all vertical spacing within and around the list
\setlist[itemize]{topsep=0.25em, leftmargin=1.5pc}
\setlist[enumerate]{topsep=0.25em, leftmargin=1.5pc}
\RequirePackage[super]{nth}

\titleformat{\section}         % Customise the \section command 
  % {\Large\scshape\raggedright} 
% Make the \section headers large (\Large),
{\Large\scshape}
                               % small capitals (\scshape) and left aligned (\raggedright)
  {}{0em}                      % Can be used to give a prefix to all sections, like 'Section ...'
  {}                           % Can be used to insert code before the heading
  [\titlerule]                 % Inserts a horizontal line after the heading
\titlespacing*{\section}{0cm}{*1.0}{*0.9}

\usepackage[absolute]{textpos}
% \usepackage[UKenglish]{isodate}
\setlength{\TPHorizModule}{1mm}
\setlength{\TPVertModule}{1mm}

\newcommand{\lastupdated}{\begin{textblock}{60}(155,5)
\color{date}\fontspec[Path = fonts/Main/]{FiraSans-Regular.otf}\fontsize{8pt}{10pt}\selectfont 
Last Updated on \today
\end{textblock}}

\newcommand{\name}[1]{
  \centerline{\Huge\scshape{#1}}
  \vspace{0.8ex}
}

% defines one's name
% usage: \name{<name>}
\newcommand{\nameTest}[1]{
  {\large\scshape{#1}}
}

% defines one's email
% usage: \email{<email>}
\newcommand{\email}[1]{\faEnvelope\ \href{mailto:#1}{#1}}
% defines one's phone
% usage: \phone{<phone>}
\newcommand{\phone}[1]{\faPhone\ {#1}}
% defines one's linkedin
% usage: \linkedin{<linkedin>}
\newcommand{\linkedin}[2][]{\faLinkedin\ 
  \ifthenelse{\isempty{#1}}%
    {\href{#2}{#2}}
    {\href{#2}{#1}}}
% defines one's GitHub
% usage: \github{<github>}
\newcommand{\github}[2][]{\faGithub\ 
  \ifthenelse{\isempty{#1}}%
    {\href{#2}{#2}}
    {\href{#2}{#1}}}
% defines one's homepage
% usage: \homepage{<homepage>}
\newcommand{\homepage}[2][]{\faLink\ 
  \ifthenelse{\isempty{#1}}%
    {\href{#2}{#2}}
    {\href{#2}{#1}}}

% defines progress bar with text
% usage: \pbar[3][width]{Text}{percentage}
\newcommand{\pbar}[3][10em]{{#2}\ 
  \progressbar[heightr=1, width=#1, borderwidth=0pt, roundnessr=0.45, filledcolor=green!40, subdivisions=1]{#3}
}

\newcommand{\basicInfo}[1]{
  \begin{center}
    \sffamily\large{#1}
  \end{center}
}


% Cover Letter
\newcommand{\companyname}[1]{\raggedright\fontspec[Path = fonts/Main/]{FiraSans-Bold.otf}\fontsize{12pt}{14pt}\selectfont {#1 \\} \normalfont}

\newcommand{\companyaddress}[1]{\raggedright\fontspec[Path = fonts/Main/]{FiraSans-Regular.otf}\fontsize{11pt}{13pt}\selectfont {#1 \\}\mbox{}\\\mbox{}\\ \normalfont}

\newcommand{\currentdate}[1]{\raggedleft\fontspec[Path = fonts/Main/]{FiraSans-Regular.otf}\fontsize{11pt}{13pt}\selectfont {#1} \par\normalfont}


% Letter content command
\newcommand{\lettercontent}[1]{\raggedright\fontspec[Path = fonts/Main/]{FiraSans-Regular.otf}\fontsize{11pt}{13pt}\selectfont {#1 \\}\mbox{}\\ \normalfont}

\newcommand{\closing}[1]{\raggedright\fontspec[Path = fonts/Main/]{FiraSans-Regular.otf}\fontsize{11pt}{13pt}\selectfont {#1 \\}\mbox{}\\\mbox{}\\ \normalfont}

\newcommand{\signature}[1]{\raggedright\fontspec[Path = fonts/Main/]{FiraSans-Regular.otf}\fontsize{11pt}{13pt}\selectfont {#1 \\} \normalfont}