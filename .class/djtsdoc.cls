\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{djtsdoc}[2025/01/01 Latex class for Dojo Trieste modules]

\LoadClass{djts}

% ========================================
% Page layout
% ========================================

\RequirePackage[
	bottom = 1.4in,
	left = 0.8in,
	right = 0.8in,
	top = 2in,
	headheight = 1.1in,
	headsep = 0.4in,
	footskip = 0.8in
]{geometry}

\setlength{\parindent}{0pt}

% ========================================
% Headers
% ========================================

\RequirePackage{fancyhdr}

\fancypagestyle{std}{%
	\fancyhead[L]{\includegraphics[height = 1in]{logo_dojo.png}}%
	\fancyhead[R]{\small%
		\textbf{\large A.S.D. DOJO Trieste} \\[5pt]%
		C.F.: 90124290322 \\%
		Email: dojotrieste@libero.it \\%
		Sede legale: Via G. Sinico 1 - 34139 Trieste \\%
		Codice affiliazione FIJLKAM: 06TS2819 \\%
		Iscritta al n. 107500 del Registro Nazionale del C.O.N.I.%
	}%
	\renewcommand{\headrulewidth}{1pt}%
	\fancyfoot[C]{-- \thepage\ --}%
}

% ========================================
% Maketitle
% ========================================

\renewcommand{\maketitle}{%
	\pagestyle{std}%
	\pagenumbering{arabic}
	\ %
	\begin{center}%
		\textbf{\Large\@title}%
		\ifx\@date\@empty
		\else
			\\[0.5in] {\large\@date}
		\fi
	\end{center}%
	\vspace{0.5in}%
}

% ========================================
% Style
% ========================================

\RequirePackage{enumerate}
\RequirePackage{enumitem}
\RequirePackage{romannum}

\renewcommand{\labelenumi}{\arabic*.}
\renewcommand{\labelenumii}{\alph*.}
\renewcommand{\labelenumiii}{\roman*.}