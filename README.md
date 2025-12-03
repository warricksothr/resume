# Drew Short - Professional Resume

Personal resume maintained as LaTeX source with modular structure for version control and easy customization.

## Live Resume

**View the current version**: [https://warricksothr.github.io/resume/](https://warricksothr.github.io/resume/)

- 📄 **PDF**: [resume.pdf](https://warricksothr.github.io/resume/resume.pdf)
- 🌐 **HTML**: [Interactive web version](https://warricksothr.github.io/resume/)

## Features

- **Modular LaTeX Structure**: Separate files for different sections (experience, skills, education, etc.)
- **Custom Date Calculations**: Automatically compute employment durations with `\difftoday` and `\diffdates` commands
- **Version Controlled**: Full history of resume changes
- **Professional Formatting**: Clean, traditional resume layout using custom LaTeX class

## Building Locally

### Prerequisites

- LaTeX distribution with `pdflatex` (e.g., TeX Live, MiKTeX)
- Make (optional, for convenience)

### Quick Build

```bash
# Compile the resume
cd resume
pdflatex resume.tex

# Clean up auxiliary files
rm -f *.aux *.log *.out
```

The output will be `resume/resume.pdf`.

## Project Structure

```
├── resume/                             # LaTeX source files
│   ├── resume.tex                      # Main entry point
│   ├── res.cls                         # Custom LaTeX class
│   ├── helvetica.sty                   # Font styling
│   ├── datenumber.sty                  # Date calculation package
│   ├── datenumber*.ldf                 # Localization files
│   └── tex_parts/
│       ├── resume_head.tex             # Document setup
│       ├── resume_preamble.tex         # Package imports
│       ├── resume_commands.tex         # Custom commands
│       ├── resume_address.tex          # Contact information
│       ├── resume_body.tex             # Body structure
│       └── resume_body/
│           ├── intro.tex               # Professional summary
│           ├── skills.tex              # Technical skills
│           ├── experience.tex          # Work history (includes from experience/)
│           ├── experience/             # Individual job experiences
│           │   ├── 2020_flywheel.tex
│           │   ├── 2016_optum.tex
│           │   ├── 2013_cargill.tex
│           │   └── 2011_fpx.tex
│           ├── education.tex           # Education
│           ├── achievements.tex        # Notable achievements
│           └── references.tex          # References
└── .gitignore                          # Build artifact exclusions
```

## Customization Guide

### Modifying Content

The resume content is organized into modular `.tex` files in `resume/tex_parts/resume_body/`:

- **`intro.tex`** - Professional summary and key qualifications
- **`skills.tex`** - Technical skills organized by category
- **`experience.tex`** - Employment history (master file that includes individual positions)
- **`experience/*.tex`** - Individual job experiences, one file per position
- **`education.tex`** - Educational background
- **`achievements.tex`** - Notable achievements and awards

After editing, rebuild with `cd resume && pdflatex resume.tex` to see changes.

### Updating Contact Information

Edit [resume/tex_parts/resume_address.tex](resume/tex_parts/resume_address.tex) to update:
- Name
- Location
- Phone number
- Email address
- Website URL

### Adding Work Experience

Create a new file in `resume/tex_parts/resume_body/experience/` (e.g., `YYYY_company.tex`):

```latex
{\bf Position Title} \hfill {\bf Company Name} \\
\begin{tabular*}{1.0\linewidth}{@{}c@{\extracolsep{\fill}}r@{}}
City, State & StartYear - {\the\year} (\difftoday{YYYY}{MM}{DD}) \\
\hline
\end{tabular*}

\begin{itemize}  \itemsep -0.5pt
  \item Key achievement with measurable impact
  \item Another achievement or responsibility
  \item Technical skills or tools used
\end{itemize}
```

Then include it in `resume/tex_parts/resume_body/experience.tex`:

```latex
\section{EXPERIENCE}

\input{tex_parts/resume_body/experience/YYYY_company.tex}
```

**For current positions**: Use `{\the\year}` and `\difftoday{YYYY}{MM}{DD}`

**For past positions**: Use explicit years and `\diffdates{YYYY}{MM}{DD}{YYYY}{MM}{DD}`

## Custom LaTeX Commands

### Automatic Date Calculations

The resume includes custom commands for automatic duration calculations that update with each build:

#### `\difftoday{YYYY}{MM}{DD}` - Duration from date to today

Calculates the time from a start date to the current date:

```latex
\difftoday{2020}{02}{17}  % Output: "5 years, 10 months" (as of Dec 2025)
```

#### `\diffdates{YYYY}{MM}{DD}{YYYY}{MM}{DD}` - Duration between two dates

Calculates the time between two specific dates:

```latex
\diffdates{2017}{08}{01}{2020}{01}{30}  % Output: "2 years, 5 months"
```

**Important Notes**:
- Dates must use format `{YYYY}{MM}{DD}` with leading zeros (e.g., `{2020}{02}{17}` not `{2020}{2}{17}`)
- Both commands automatically format output as "X years, Y months"
- Handles singular/plural correctly (e.g., "1 year" vs "2 years")
- Based on the custom `datenumber` package included in this repository

### Other Custom Commands

The resume uses a custom LaTeX class (`res.cls`) that provides specialized formatting commands. See [resume/tex_parts/resume_preamble.tex](resume/tex_parts/resume_preamble.tex) for package configuration.

## File Organization

This resume uses a **modular file structure** for better organization and version control:

1. **Main file** (`resume/resume.tex`) - Minimal entry point that includes other files
2. **Setup files** (`resume/tex_parts/resume_*.tex`) - Document configuration and commands
3. **Content files** (`resume/tex_parts/resume_body/*.tex`) - Actual resume content
4. **Experience files** (`resume/tex_parts/resume_body/experience/*.tex`) - Individual job experiences

Benefits:
- Easy to track changes in version control (one job per file)
- Simple to reorder or exclude sections
- Clean separation of concerns (content vs. formatting)
- Reduces merge conflicts when updating

## LaTeX Class and Styling

This resume uses:
- **`res.cls`** - Custom resume class by Michael DeCorte
- **`helvetica.sty`** - Font styling
- **`datenumber.sty`** - Custom date calculation package with localization support

The formatting is traditional and professional, optimized for readability and ATS (Applicant Tracking System) compatibility.

## License

Resume content is personal and not licensed for reuse.

LaTeX class `res.cls` is Copyright (C) 1988, 1989 by Michael DeCorte (see file header for license terms).

## About

This is the professional resume of Drew Short, maintained in LaTeX for precise formatting control and version history.

**Professional Focus**: Full-Stack Development | Platform Engineering | Distributed Systems

For questions or opportunities, please use the contact information provided in the resume PDF.
