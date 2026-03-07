# TRW LaTeX Template

**Official LaTeX template for *Transaction on Rubbish and Waste*.** 🗑️

## 📥 Installation

### Option 1: Clone
```bash
git clone https://github.com/TransactionOnRubbishAndWaste/trw-latex-template.git
```

### Option 2: Overleaf
Import this template to Overleaf (coming soon™).

## 📝 Usage

### Quick Start

```latex
\documentclass{trw}

\title{Your Amazing (But Not Serious) Research}
\author{Your Name}
\affiliation{Your Institution}

\begin{document}
\maketitle

\begin{abstract}
This paper presents groundbreaking results that may or may not be reproducible.
\end{abstract}

\section{Introduction}
Write something fun here.

\end{document}
```

### Compile

```bash
pdflatex template.tex
bibtex template
pdflatex template.tex
pdflatex template.tex
```

## 📁 Files

| File | Description |
|------|-------------|
| `trw.cls` | Main document class |
| `template.tex` | Example paper |
| `sample-bib.bib` | Sample references (IEEE style) |
| `logo/` | Journal logo files (coming soon) |

## 🎨 Features

- ✅ Two-column layout (because real journals have it)
- ✅ Custom TRW header/footer
- ✅ Built-in disclaimer on first page
- ✅ Fun section styles
- ✅ BibTeX support (ieeetr style)
- ✅ Blue color theme

## 📚 Bibliography

This template uses the `ieeetr` bibliography style. Add your references in a `.bib` file:

```bibtex
@article{example2024,
  author={Author, A. and Author, B.},
  title={Example Paper},
  journal={Journal of Fun Science},
  year={2024}
}
```

Then cite in your paper with `\cite{example2024}` and add `\bibliography{your-bib-file}` at the end.

## ⚠️ Disclaimer

This template is for **entertainment purposes only**. Using it in a serious academic submission may result in raised eyebrows.

## 📬 Issues & Contributions

Found a bug? Want to add a feature? Open an issue!

## 📜 License

Whatever, It's Fine License 🗑️
