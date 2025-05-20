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
% ResumeTeX Variables
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand{\elemsep}{0.2em}
\newcommand{\cvsectionpad}{0.4em}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ResumeTeX Commands
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

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
	\hspace{-18pt} #1
}

% \school command
% #1: School name
% #2: School location
% #3: School degree
% #4: School years
\makeatletter
\newcommand{\school}[4] {
	\textbf{#1} \hfill #2\\
	#3 \hfill #4\\
	\vspace{\elemsep}
}
\makeatother

% \experience command
% #1: Entity name
% #2: Entity location
% #3: Experience Role
% #4: Work years
\newcommand{\experience} [4] {
	\textbf{#1} \hfill #2\\
	\textit{#3} \hfill #4\\
}

% \project command
% #1: Publication name
% #2: Publication description
\newcommand{\project}[2] {
	\textbf{#1}\\
	#2\\
	\vspace*{\elemsep}
}

% \publication command
% #1: Publication title
% #2: Publication date
% #3: Publication outlet
% #4: Publication description
% #5: Publication url
\newcommand{\publication}[5] {
	\textbf{#1} \hfill #2\\
	\textit{#3}\\
	#4\\
	\href{#5}{#5}\\
	\vspace{\elemsep}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ResumeTeX Environments
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% cvsection environment
% #1: Section title
\newenvironment{cvsection}[1]
{
	\header{#1}\\
	\vspace*{-\cvsectionpad}
	\hspace*{-18pt} \hrulefill \\
	\vspace*{\cvsectionpad}
	%\ignorespaces
}
{
	\vspace*{-\elemsep}
	\vspace*{\cvsectionpad}
	%\ignorespacesafterend
}


% keyvaltable environment
\newenvironment{keyvaltable}
{
	% \keyvalpair command
	% #1: Key
	% #2: Value
	\newcommand{\keyvalpair}[2] {
		\textbf{##1:} & ##2 \vspace{\elemsep}\\
	}
	\begin{tabular}{l p{0.8\linewidth}}
}
{
	\end{tabular}
}

% achievements environment
\newenvironment{achievements}
{
	\begin{itemize}[topsep=0.5em, itemsep=0.125em]
}
{
	\end{itemize}
}
