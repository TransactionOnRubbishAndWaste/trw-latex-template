\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{trw}[2026/03/07 v0.0.3 Transaction on Rubbish and Waste]

% Load base class
\LoadClass[twocolumn,a4paper,10pt]{article}

% Required packages
\RequirePackage{geometry}
\RequirePackage{fancyhdr}
\RequirePackage{xcolor}
\RequirePackage[numbers,sort&compress]{natbib}

% Graphics and tables
\RequirePackage{graphicx}
\RequirePackage{booktabs}
\RequirePackage{caption}

% TRW colors
\definecolor{trwblue}{RGB}{52, 152, 219}
\definecolor{trwgray}{RGB}{127, 140, 141}
\definecolor{trwlight}{RGB}{236, 240, 241}

% Page layout
\geometry{
  a4paper,
  left=2.5cm,
  right=2.5cm,
  top=3cm,
  bottom=3cm,
  columnsep=0.8cm
}

% Journal info (customizable)
\def\@journalname{TRANSACTION ON RUBBISH AND WASTE}
\def\@journalvolume{1}
\def\@journalnumber{1}
\def\@journaldate{2026}

\newcommand{\journalinfo}[4]{%
  \gdef\@journalname{#1}%
  \gdef\@journalvolume{#2}%
  \gdef\@journalnumber{#3}%
  \gdef\@journaldate{#4}%
}

% Header/Footer with odd/even page support
\pagestyle{fancy}
\fancyhf{}

% Odd pages (right hand): journal name left, page number right
\fancyhead[LO]{\footnotesize\textcolor{trwblue}{\@journalname}}
\fancyhead[RO]{\footnotesize\textcolor{trwgray}{\thepage}}

% Even pages (left hand): page number left, journal info right
\fancyhead[LE]{\footnotesize\textcolor{trwgray}{\thepage}}
\fancyhead[RE]{\footnotesize\textcolor{trwblue}{Vol. \@journalvolume, No. \@journalnumber, \@journaldate}}

\renewcommand{\headrulewidth}{0.4pt}
\renewcommand{\headrule}{\hbox to\headwidth{\color{trwblue}\leaders\hrule height \headrulewidth\hfill}}

% Enable different headers for odd/even pages
\fancyheadoffset{0pt}

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
\def\@keywords{}
\newcommand{\affiliation}[1]{\gdef\@affiliation{#1}}
\newcommand{\keywords}[1]{\gdef\@keywords{#1}}

% Abstract environment
\def\@abstract{}
\renewenvironment{abstract}
  {\begin{center}\small\textbf{Abstract}\end{center}\begin{quote}\small}
  {\end{quote}}

% Figure and table captions
\captionsetup{
  labelfont={color=trwblue,bf},
  textfont={color=trwgray},
  labelsep=colon
}

\renewcommand{\@maketitle}{%
  % Force fancy style on first page too
  \thispagestyle{fancy}%
  \begin{center}
    {\LARGE\bfseries\color{trwblue} \@title \par}
    \vskip 1.5em
    {\large \@author \par}
    \vskip 1em
    {\small\textcolor{trwgray}{\@affiliation} \par}
    \vskip 2em
  \end{center}
  \@abstract
  \ifx\@keywords\empty\else
    \par\vskip 1em
    \noindent\footnotesize\textcolor{trwgray}{\textbf{Keywords:} \@keywords}
  \fi
  \par\vskip 1em
  \noindent\footnotesize
  \textcolor{trwgray}{\textbf{WARNING:} This paper is published in Transaction on Rubbish and Waste, an entertainment journal. Nothing herein should be taken seriously.}\par\vskip 2em
}

% Bibliography style
\bibliographystyle{ieeetr}

% Hyperref (load last)
\RequirePackage{hyperref}
\hypersetup{
  colorlinks=true,
  linkcolor=trwblue,
  citecolor=trwblue,
  urlcolor=trwblue
}

\endinput
