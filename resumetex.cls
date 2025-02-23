%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ResumeTeX Document Class
% Version 1.0 (2025-02-15)
% By Iskander Gaba
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\NeedsTeXFormat{LaTeX2e}

% Base Document Class
\LoadClass[a4paper]{article}

% Reduce Document Top Margin
\AtBeginDocument{\vspace*{-50pt}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Required Packages
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{tikz}
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{enumitem}
\RequirePackage{fullpage}
\RequirePackage{textcomp}
\RequirePackage{makecell}
\RequirePackage{hyperref}
\RequirePackage{adjustbox}
\RequirePackage[T1]{fontenc}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Default Settings
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% PDF file settings
\hypersetup{
	colorlinks=true,
	linkcolor=green,
	filecolor=magenta,
	urlcolor=blue,
	%pdfpagemode=FullScreen,
}

% No page numbering and more text space
\textheight=10in
\pagestyle{empty}

% RTL-LTR compatibility configuration
\raggedright

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ResumeTeX Commands
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% \lineunder command
\newcommand{\lineunder} {
	\vspace*{-4pt} \\
	\hspace*{-18pt} \hrulefill \\
	\vspace*{4pt}
}

% \name command
% #1: Name
\newcommand{\name}[1] {
	{\Huge #1}
}

% \namesc command (same as \name but with small caps)
% #1: Name
\newcommand{\namesc}[1] {
	\name{\scshape{#1}}
}

% \photo command
% #1: Photo file path
\newcommand{\photo}[1] {
	\begin{adjustbox}{width=3.5cm, valign=m, keepaspectratio}
		\begin{tikzpicture}
			\clip (1.75cm, 1.75cm) circle(1.75cm);
			\includegraphics[width=3.5cm]{#1};
		\end{tikzpicture}
	\end{adjustbox}
}

% \header command
% #1: Header title
\newcommand{\header}[1] {
	\hspace{-18pt} #1 \lineunder
}

% \headersc command (same as \header but with small caps)
% #1: Header title
\newcommand{\headersc}[1] {
	\header{\textsc{#1}}
}

% \school command
% #1: School name
% #2: School location
% #3: School degree
% #4: School years
\newcommand{\school} [4] {
	\textbf{#1} \hfill #2\\
	#3 \hfill #4\\
	\vspace{2mm}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ResumeTeX Environments
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% keyvaltable environment
\newenvironment{keyvaltable}
{
	% \keyvalpair command
	% #1: Key
	% #2: Value
	\newcommand{\keyvalpair}[2] {
		\textbf{##1:} & ##2 \\
	}
	\begin{tabular}{l p{0.8\linewidth}}
}
{
	\end{tabular}
}

% achievements environment
\newenvironment{achievements}
{
	\begin{itemize}[itemsep=1pt]
}
{
	\end{itemize}
}
