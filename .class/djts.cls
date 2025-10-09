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
