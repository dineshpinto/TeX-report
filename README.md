# TeX-report
A Physics lab report written in LaTeX. Also an excellent starting point for understanding LaTeX. 

## How to use this file (for beginners on Windows)

1. Install a TeX/LaTeX system e.g. [MiKTeX](http://miktex.org/download)
2. Install a LaTeX editor e.g. [TeXmaker](http://www.xm1math.net/texmaker/download.html)
3. Download the ZIP given on this page
4. Extract the files in the ZIP to a folder
5. Open SpecificRotation.tex using your LaTeX editor  
6. Compile using PDFLaTeX ('Quick Build' in TeXmaker) 

##For GNU/Linux distributions 
Replace steps 1 and 2 with the following terminal commands

#### For Ubuntu/ElementaryOS

        $ apt-get install texlive texmaker
  
#### For Fedora/RHEL

        $ dnf install texlive-basic texmaker
        
## Additional Tools (for more advanced users)
The following options are available in `dkpinto-report.cls`:

### Fonts
Natively, the code supports Linux libertine and Latin modern fonts. These are good choices as they do not interfere with the rendering of math equations. To test out these additional fonts, I would recommend installing the full fonts package in MiKTeX  or use the following terminal command for TeXlive,

        $ apt-get install texlive-fonts-extra
Then enable them in the .cls by removing the comment signs.

Linux libertine: `\usepackage{libertine} \usepackage[libertine]{newtxmath}`

Latin modern: `\usepackage{lmodern}`

### Inserting Programming Code
I chose to use the minted package to insert programming code. Installation on Linux requires a bit of work, but it's worth it. If you are on Windows, I would recommend replacing minted with [listings](https://en.wikibooks.org/wiki/LaTeX/Source_Code_Listings).  

1. Make sure you have Python 2.7+ installed `$ python --version`
2. Install the Pygments library `$ apt-get install Pygments` or `$ pip install Pygments`
3. Install minted using `$ apt-get install texlive-latex-extra`
4. In TeXmaker, Options -> Configure TeXmaker. Replace the line in PdfLaTeX with 
        
        pdflatex -shell-escape -synctex=1 -interaction=nonstopmode %.tex

5. Insert your code in the LaTeX source file. You can insert your code directly (copy-paste) or read a programming source file (over 300 programming languages supported). For more information, check out the [ShareLaTeX page](https://www.sharelatex.com/learn/Code_Highlighting_with_minted#Reference_guide).
6. Complile the code with PDFLaTeX

I would recommend reading through the minted [documentation](http://ftp.sunet.se/pub/text-processing/CTAN/macros/latex/contrib/minted/minted.pdf). Also note that `-shell-escape` option in Step 4 is not entirely safe as it could allow LaTeX to run potentially arbitrary commands on your system, it is however, nescessary as minted makes calls to Pygments (an external Python library). Please disable it when not using minted. The original PDFLaTeX is: `pdflatex -synctex=1 -interaction=nonstopmode %.tex`
