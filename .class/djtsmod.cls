\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{djtsmod}[2025/01/01 Latex class for Dojo Trieste modules]

\LoadClass{djts}

% ========================================
% Style
% ========================================

\RequirePackage{helvet}
\renewcommand\familydefault\sfdefault

% ========================================
% Page layout
% ========================================

\RequirePackage[
	bottom = 0.6in,
	left = 0.5in,
	right = 0.5in,
	top = 0.6in,
	headheight = 0.4in,
	headsep = 0.1in,
	footskip = 0.3in
]{geometry}

\RequirePackage{enumitem}
\setlist[itemize]{noitemsep, topsep = 4pt}
\setlist[enumerate]{noitemsep, topsep = 4pt}

% ========================================
% Headers
% ========================================

\RequirePackage{fancyhdr}

\fancypagestyle{title}{%
	\fancyhead[L]{\hspace{10pt}\includegraphics[height = 1in]{logo_fijlkam_v.png}}%
	\fancyhead[R]{\includegraphics[height = 1in]{logo_dojo.png}\hspace{10pt}}%
	\fancyhead[C]{\small%
		\textbf{\Large A.S.D. DOJO Trieste} \\[5pt]%
		C.F.: 90124290322 \\%
		Email: dojotrieste@libero.it \\%
		Sede legale: Via G. Sinico 1 - 34139 Trieste \\%
		Codice affiliazione FIJLKAM: 06TS2819 \\%
		Iscritta al n. 107500 del Registro Nazionale del C.O.N.I.%
	}%
	\renewcommand{\headrulewidth}{1pt}%
	\fancyfoot[C]{-- \thepage\ --}%
}

\fancypagestyle{std}{%
	\fancyhead[L]{\hspace{20pt}\includegraphics[height = 0.3in]{logo_fijlkam_v.png}}%
	\fancyhead[R]{\includegraphics[height = 0.3in]{logo_dojo.png}\hspace{20pt}}%
	\fancyhead[C]{%
		\textbf{\large A.S.D. DOJO Trieste} \vspace{2pt}%
	}%
	\renewcommand{\headrulewidth}{1pt}%
	\fancyfoot[C]{-- \thepage\ --}%
}

% ========================================
% Maketitle
% ========================================

\RequirePackage{afterpage}

\renewcommand{\maketitle}{%
	\pagestyle{std}%
	\thispagestyle{title}%
	\newgeometry{%
		bottom = 0.6in,
		left = 0.5in,
		right = 0.5in,
		top = 1.4in,
		headheight = 1.1in,
		headsep = 0.2in,
		footskip = 0.3in
	}%
	\afterpage{\aftergroup\restoregeometry}%
	\begin{center}%
		\Large\textbf{\@title}%
	\end{center}%
	\vspace{0.1in}%
}

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

% ========================================
% Utils
% ========================================

\newcommand{\recipient}[1]{%
	\begin{flushright}%
		\textbf{#1}%
	\end{flushright}%
}

\newcommand{\statement}[1]{%
	\begin{center}%
		\vspace{8pt}%
		\textbf{\large #1}%
		\vspace{5pt}%
	\end{center}%
}

\newcommand{\tinystatement}[1]{%
	\begin{center}%
		\vspace{2pt}%
		\textbf{#1}%
	\end{center}%
}

\newcommand{\basedata}{%
	Il/la sottoscritto/a \fieldfill\; nato/a a \field{1.5in} (\field{0.5in}) \\ 
	il \field{1.5in}, C.F. \fieldfill, residente in \field{2in} \\
	via \fieldfill, cellulare \field{3in} \\
	telefono abitazione \field{2in} email \fieldfill.%
}

\newcommand{\childbasedata}{%
	In qualità di \field{3in} \\
	del minore \fieldfill\; nato a \field{1.5in} (\field{0.5in}) \\
	il \field{1.5in}, C.F. \fieldfill, residente in \field{2in} \\
	via \fieldfill, cellulare \field{3in} \\
	telefono abitazione \field{2in} email \fieldfill.%
}