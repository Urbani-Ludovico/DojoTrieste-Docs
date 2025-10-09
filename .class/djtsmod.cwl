
\LoadClass{djts}#a

% ========================================
% Page layout
% ========================================

#include:geometry
#include:enumitem

% ========================================
% Maketitle
% ========================================

\maketitle

% ========================================
% Fields
% ========================================

\field{width}#S
\fieldfill

\datesignfield{signLabel}#S
\inlinedatesignfield{signLabel}#S
\signfield{signLabel}#S

\begin{radiolist}
\end{radiolist}

% ========================================
% Utils
% ========================================

\recipient{recipient}#S
\statement{statement}#S
\tinystatement{statement}#S

\basedata
\childbasedata