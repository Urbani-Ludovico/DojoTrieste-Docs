\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{djts}[2025/01/01 Latex class for Dojo Trieste files]

\LoadClass[
	a4paper,
	10pt,
	oneside
]{article}

% ========================================
% Consts
% ========================================

\newcommand{\defaultfontsize}{10pt}

% ========================================
% Modules
% ========================================

\RequirePackage{hyperref}

% ========================================
% File encode
% ========================================

\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage[italian]{babel}

% ========================================
% Page layout
% ========================================

\setlength{\parindent}{0pt}

% ========================================
% Images
% ========================================

\RequirePackage{graphicx}

\graphicspath{ {images} }

% ========================================
% Fields
% ========================================

\RequirePackage{amssymb}
\RequirePackage{enumitem}
\RequirePackage{tikz}

\newcommand{\field}[1]{\rule{#1}{0.4pt}\rule{0pt}{4ex}}
\newcommand{\fieldfill}{\hrulefill\rule{0pt}{4ex}}

\newcommand{\datesignfield}[1]{%
	\begin{center}%
		\begin{minipage}{0.5\linewidth}%
			\centering%
			Luogo e Data \\[5pt]%
			\field{0.6\linewidth}%
		\end{minipage}%
		\begin{minipage}{0.5\linewidth}%
			\centering%
			#1 \\[5pt]%
			\field{0.6\linewidth}%
		\end{minipage}%
	\end{center}%
}

\newcommand{\inlinedatesignfield}[1]{%
	\begin{center}%
		\begin{minipage}{0.5\linewidth}%
			\centering%
			Luogo e Data \field{0.5\linewidth}%
		\end{minipage}%
		\begin{minipage}{0.5\linewidth}%
			\centering%
			#1 \field{0.5\linewidth}%
		\end{minipage}%
	\end{center}%
}

\newcommand{\signfield}[1]{%
	\begin{center}%
		\begin{minipage}{0.5\linewidth}%
			\ %
		\end{minipage}%
		\begin{minipage}{0.5\linewidth}%
			\centering%
			#1 \\[5pt]%
			\field{0.6\linewidth}%
		\end{minipage}%
	\end{center}%
}

\newcommand{\circlelabel}{\tikz[baseline = -0.04cm] \draw (0.08cm, 0.08cm) circle (0.16cm);}
\newcommand{\squarelabel}{\tikz[baseline = 0.02cm]\draw (0, 0) rectangle (0.32cm, 0.32cm);}

\newenvironment{radiolist}{%
	\begin{itemize}[%
		label = \circlelabel,%
		leftmargin = 40pt,%
		itemsep = 2pt%
		]%
	}{\end{itemize}}
