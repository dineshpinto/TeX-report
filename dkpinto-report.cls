%--------------------------------------------------------------
% TeX-report 
% Written in LaTeX 2e.
% Work of Dinesh K. Pinto, St. Stephen's College, 2015.
%--------------------------------------------------------------

\ProvidesClass{dkpinto-report}
\NeedsTeXFormat{LaTeX2e}
\LoadClass{article}

%---------------------------Packages---------------------------
\usepackage[T1]{fontenc}
\usepackage[utf8]{inputenc}
\usepackage{amsmath, amsthm}
\usepackage{graphicx}
\usepackage[margin=1in]{geometry} 
\usepackage{cite}
\usepackage{listings}
\usepackage{color}
\usepackage[final]{hyperref} 
\usepackage{fancyhdr, lastpage}
\usepackage{parskip}
\usepackage{multicol, multirow}
% Uncomment the next line to use minted. For information on how to install minted, read the Additional Tools section on https://github.com/dkpinto/TeX-report
%\usepackage{minted}

%---------------------Font Choices-----------------------------
% Default - Computer Modern, Optional - Linux libertine, Latin modern
%\usepackage{libertine} \usepackage[libertine]{newtxmath}
%\usepackage{lmodern}

%--------------------------Setup-------------------------------
\hypersetup
{
	colorlinks=true,       % false: boxed links; true: colored links
	linkcolor=blue,        % color of internal links
	citecolor=blue,        % color of links to bibliography
	filecolor=magenta,     % color of file links
	urlcolor=blue          % color of URLs
}
\fancyhf{}			
\pagestyle{fancy}
\cfoot{\slshape Page \thepage/\pageref*{LastPage}}
