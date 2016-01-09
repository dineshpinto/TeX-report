# TeX-report
A Physics lab report written in LaTeX. Also a good starting point for understanding LaTeX. 

## How to use this file (for beginners on Windows)

1. Install a TeX/LaTeX system e.g. [MiKTeX](http://miktex.org/download)
2. Install a LaTeX editor e.g. [TeXmaker](http://www.xm1math.net/texmaker/download.html)
3. Download the ZIP given on this page
4. Extract the files in the ZIP to a folder
5. Open `SpecificRotation.tex` using your LaTeX editor  
6. Compile using PDFLaTeX ('Quick Build' in TeXmaker) 

Modify TeX-report as you see fit. The source file (`SpecificRotation.tex`) is extensively commented and contains many frequently used LaTeX commands. For a rundown of math equations, check out the [ShareLaTeX ](https://en.wikibooks.org/wiki/LaTeX/Mathematics) page.
##For GNU/Linux distributions 
On GNU/Linux, TeXlive can be used in place of MiKTeX. Replace steps 1 and 2 with the terminal commands

#### For Ubuntu/ElementaryOS/Linux Mint

        $ apt-get install texlive texmaker
  
#### For Fedora/RHEL

        $ dnf install texlive-basic texmaker
        
## Additional Tools (for more advanced users)
The following options are available in `dkpinto-report.cls`:

### 1. Fonts
Natively, the code supports Linux libertine and Latin modern fonts. These are good choices as they do not interfere with the rendering of math equations. To test out these additional fonts, I would recommend installing the full fonts package in MiKTeX  or use the terminal command for TeXlive,

        $ apt-get install texlive-fonts-extra
Then enable them in the .cls by removing the '#' before the command.

Linux libertine: `\usepackage{libertine} \usepackage[libertine]{newtxmath}`

Latin modern: `\usepackage{lmodern}`

### 2. Inserting Programming Code
I chose to use the minted package to insert programming code. Installation on Linux requires a bit of work, but it's worth it. If you are on Windows, I would recommend replacing the minted package with the [listings](https://en.wikibooks.org/wiki/LaTeX/Source_Code_Listings) package.  

1. Make sure you have Python 2.7+ installed `$ python --version`
2. Install the Python Pygments library `$ apt-get install Pygments` or `$ pip install Pygments`
3. Install minted from `$ apt-get install texlive-latex-extra`
4. In TeXmaker, Options -> Configure TeXmaker. Add a -shell-escape in PdfLaTeX by replacing the line with: 
        
        pdflatex -shell-escape -synctex=1 -interaction=nonstopmode %.tex

5. Call minted in your LaTeX source file. You can call it directly (copy-paste the programming code into the file) or read a programming source file (over 300 languages supported). For more information, check out the [ShareLaTeX page](https://www.sharelatex.com/learn/Code_Highlighting_with_minted#Reference_guide).
6. Complile the code with PDFLaTeX

I would recommend a quick glance through the minted [documentation](http://ftp.sunet.se/pub/text-processing/CTAN/macros/latex/contrib/minted/minted.pdf). Also note that the `-shell-escape` option in Step 4 is not entirely safe as it could allow LaTeX to run potentially arbitrary commands on your system, however, it is nescessary as minted makes calls to Pygments (an external Python library). Please disable it when not using minted. The original PDFLaTeX is: `pdflatex -synctex=1 -interaction=nonstopmode %.tex`
