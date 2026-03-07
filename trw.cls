\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{trw}[2026/03/07 v1.1 Transaction on Rubbish and Waste]

% Load base class
\LoadClass[twocolumn,a4paper,10pt]{article}

% Required packages
\RequirePackage{geometry}
\RequirePackage{fancyhdr}
\RequirePackage{hyperref}
\RequirePackage{xcolor}

% Page layout
\geometry{
  a4paper,
  left=2.5cm,
  right=2.5cm,
  top=3cm,
  bottom=3cm,
  columnsep=0.8cm
}

% TRW colors
\definecolor{trwblue}{RGB}{52, 152, 219}
\definecolor{trwgray}{RGB}{127, 140, 141}

% Header/Footer
\pagestyle{fancy}
\fancyhf{}
\fancyhead[L]{\small\textcolor{trwblue}{\textbf{Transaction on Rubbish and Waste}}}
\fancyhead[R]{\small\textcolor{trwgray}{Vol.1 No.1 \thepage}}
\renewcommand{\headrulewidth}{0.4pt}
\renewcommand{\headrule}{\hbox to\headwidth{\color{trwblue}\leaders\hrule height \headrulewidth\hfill}}

% Section styling
\renewcommand{\section}{\@startsection{section}{1}{\z@}%
  {-3.5ex \@plus -1ex \@minus -.2ex}%
  {2.3ex \@plus.2ex}%
  {\normalfont\large\bfseries\color{trwblue}}}
\renewcommand{\subsection}{\@startsection{subsection}{2}{\z@}%
  {-3.25ex\@plus -1ex \@minus -.2ex}%
  {1.5ex \@plus .2ex}%
  {\normalfont\normalsize\bfseries}}

% Title customization
\def\@affiliation{}
\newcommand{\affiliation}[1]{\gdef\@affiliation{#1}}

% Abstract environment
\def\@abstract{}
\renewenvironment{abstract}
  {\begin{center}\small\textbf{Abstract}\end{center}\begin{quote}\small}
  {\end{quote}}

\renewcommand{\@maketitle}{%
  \begin{center}
    {\LARGE\bfseries\color{trwblue} \@title \par}
    \vskip 1.5em
    {\large \@author \par}
    \vskip 1em
    {\small\textcolor{trwgray}{\@affiliation} \par}
    \vskip 2em
  \end{center}
  \@abstract
  \par\vskip 1em
  \noindent\footnotesize
  \textcolor{trwgray}{\textbf{WARNING:} This paper is published in Transaction on Rubbish and Waste, an entertainment journal. Nothing herein should be taken seriously.}\par\vskip 2em
}

% Hyperref setup
\hypersetup{
  colorlinks=true,
  linkcolor=trwblue,
  citecolor=trwblue,
  urlcolor=trwblue
}

\endinput
