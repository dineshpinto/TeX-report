%--------------------------------------------------------------
% TeX-report 
% Written in LaTeX 2e.
% Work of Dinesh K. Pinto, St. Stephen's College, 2016.
%--------------------------------------------------------------

\ProvidesClass{dkpinto-report}
\NeedsTeXFormat{LaTeX2e}
\LoadClass{article}

%---------------------------Packages---------------------------
\usepackage[utf8]{inputenc}
\usepackage{amsmath, amsthm}
\usepackage{graphicx}
\usepackage[margin=1in]{geometry} 
\usepackage{cite}
\usepackage[final]{hyperref} 
\usepackage{fancyhdr, lastpage}
\usepackage{parskip}
\usepackage[l2tabu, orthodox]{nag}
\usepackage{multicol, multirow}
% To insert programming code uncomment the next 2 lines. For installation information, read the Additional Tools section on https://github.com/dkpinto/TeX-report
%\usepackage[T1]{fontenc}
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
