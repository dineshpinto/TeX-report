# TeX-report
A Physics lab report written in LaTeX. Also an excellent starting point for understanding LaTeX. 

## How to use this file (for beginners on Windows)

1. Install a TeX/LaTeX system e.g. [MiKTeX](http://miktex.org/download)
2. Install a LaTeX editor e.g. [TeXmaker](http://www.xm1math.net/texmaker/download.html)
3. Download the ZIP from this page
4. Extract the files in the ZIP to a folder
5. Open SpecificRotation.tex using your LaTeX editor  
6. Compile using pdfLaTeX ('Quick Build' in TeXmaker) 

##For GNU/Linux distributions 
Replace steps 1 and 2 with the following terminal commands

#### For Ubuntu/ElementaryOS

        $ apt-get install texlive texmaker
  
#### For Fedora/RHEL

        $ dnf install texlive-basic texmaker
        
## For Advanced Users
The .cls file attached has support for adding programming code into the document. By, default the language chosen is Python, but this can be modified easily. I have used the listings package, more information can be found [here](http://texblog.org/2008/04/02/include-source-code-in-latex-with-listings/).

To test out additional fonts, I would recommend installing the full fonts package in MiKTeX  or use the following terminal command for TeXlive

        $ apt-get install texlive-fonts-extra
