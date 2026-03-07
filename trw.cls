\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{trw}[2026/03/07 v1.0 Transaction on Rubbish and Waste]

% Load base class
\LoadClass[twocolumn,a4paper,10pt]{article}

% Required packages
\RequirePackage{geometry}
\RequirePackage{fancyhdr}
\RequirePackage{titlesec}
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
\titleformat{\section}{\large\bfseries\color{trwblue}}{\thesection}{1em}{}
\titleformat{\subsection}{\normalsize\bfseries}{\thesubsection}{1em}{}

% Title customization
\renewcommand{\@maketitle}{%
  \begin{center}
    {\LARGE\bfseries\color{trwblue} \@title \par}
    \vskip 1.5em
    {\large \@author \par}
    \vskip 1em
    {\small\textcolor{trwgray}{\@affiliation} \par}
    \vskip 2em
  \end{center}
  \begin{abstract}
  \noindent\small
  \@abstract
  \end{abstract}
  \par\noindent\footnotesize
  \textcolor{trwgray}{\textbf{⚠️ Disclaimer:} This paper is published in Transaction on Rubbish and Waste, an entertainment journal. Nothing herein should be taken seriously. If you cite this in a real paper, that's on you. No actual science was harmed.}
  \par\vskip 2em
}

% New commands
\newcommand{\affiliation}[1]{\gdef\@affiliation{#1}}
\newcommand{\keywords}[1]{\gdef\@keywords{#1}}

% Hyperref setup
\hypersetup{
  colorlinks=true,
  linkcolor=trwblue,
  citecolor=trwblue,
  urlcolor=trwblue
}

\endinput
