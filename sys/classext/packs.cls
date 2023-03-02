
% === === Every generally used package === ===

\RequirePackage[utf8]{inputenc}
\ifinswedish
    \RequirePackage[swedish]{babel}
\else
    \RequirePackage[english]{babel}
\fi
\RequirePackage{fancyhdr}
\RequirePackage{microtype}
\RequirePackage[parfill]{parskip}
\RequirePackage[hidelinks]{hyperref}
\RequirePackage{multicol}
\RequirePackage{titlesec}
\RequirePackage{graphicx}
\RequirePackage{xstring}
\RequirePackage{float}
\RequirePackage{stfloats}
\RequirePackage{wrapfig}
\RequirePackage{svg}
\RequirePackage{pdfpages}
\RequirePackage{multirow}
\RequirePackage[font=it, center]{caption}
\RequirePackage{pgfplots} \pgfplotsset{compat=1.15}
\usepackage{circuitikz}
\usetikzlibrary{calc, intersections}
\RequirePackage{color}
\RequirePackage{xcolor}
\RequirePackage[binary-units]{siunitx}
\RequirePackage{amsmath, amsfonts, amssymb, amsthm}
\RequirePackage{algorithm2e}
\RequirePackage{algpseudocode}
\RequirePackage{listings}
\RequirePackage{ifthen}
\RequirePackage{appendix}
\RequirePackage[style=ieee]{biblatex}
\RequirePackage{blindtext}


%% Might be useful some later time ---

%\RequirePackage{emptypage} % Supress page numbers on otherwise empty pages
% \RequirePackage[absolute]{textpos} % to place title box in first page

%% ---