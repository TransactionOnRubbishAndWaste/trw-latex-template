\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{trw}[2026/03/07 v0.0.3 Transaction on Rubbish and Waste]

% Load base class with twoside for odd/even pages
\LoadClass[twocolumn,a4paper,10pt,twoside]{article}

% Required packages
\RequirePackage{geometry}
\RequirePackage{fancyhdr}
\RequirePackage{xcolor}
\RequirePackage[numbers,sort&compress]{natbib}
\RequirePackage{graphicx}
\RequirePackage{booktabs}
\RequirePackage{caption}

% TRW colors
\definecolor{trwblue}{RGB}{52, 152, 219}
\definecolor{trwgray}{RGB}{127, 140, 141}

% Page layout
\geometry{
  a4paper,
  left=2.5cm,
  right=2.5cm,
  top=3cm,
  bottom=3cm,
  columnsep=0.8cm
}

\setlength{\headheight}{1\baselineskip}

% Journal info
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

% Caption styling
\captionsetup{
  labelfont={color=trwblue,bf},
  textfont={color=trwgray},
  labelsep=colon
}

% Setup headers for normal pages (odd/even)
\def\trw@setupheaders{%
  \fancyhf{}%
  % Odd pages: journal name left, page number right
  \fancyhead[LO]{\footnotesize\textcolor{trwblue}{\@journalname\ | Vol. \@journalvolume, No. \@journalnumber, \@journaldate}}%
  \fancyhead[RO]{\footnotesize\textcolor{trwgray}{\thepage}}%
  % Even pages: page number left, journal name + vol info right
  \fancyhead[LE]{\footnotesize\textcolor{trwgray}{\thepage}}%
  \fancyhead[RE]{\footnotesize\textcolor{trwblue}{\@journalname\ | Vol. \@journalvolume, No. \@journalnumber, \@journaldate}}%
  \renewcommand{\headrulewidth}{0.4pt}%
  \renewcommand{\headrule}{\hbox to\headwidth{\color{trwblue}\leaders\hrule height \headrulewidth\hfill}}%
}

% Setup headers globally
\trw@setupheaders
\pagestyle{fancy}

% Redefine maketitle
\def\@maketitle{%
  \vspace*{2em}%
  \begin{center}%
    {\LARGE\bfseries\color{trwblue} \@title \par}%
    \vskip 1.5em%
    {\large \@author \par}%
    \vskip 1em%
    {\small\textcolor{trwgray}{\@affiliation} \par}%
    \vskip 2em%
  \end{center}%
  \@abstract
  \ifx\@keywords\empty\else
    \par\vskip 1em%
    \noindent\footnotesize\textcolor{trwgray}{\textbf{Keywords:} \@keywords}%
  \fi
  \par\vskip 1em%
  \noindent\footnotesize%
  \par\vskip 2em%
}

% Bibliography
\bibliographystyle{ieeetr}

% Hyperref
\RequirePackage{hyperref}
\hypersetup{
  colorlinks=true,
  linkcolor=trwblue,
  citecolor=trwblue,
  urlcolor=trwblue
}

\g@addto@macro\maketitle{\thispagestyle{fancy}}

\endinput
