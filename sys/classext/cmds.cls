
% === === Class specific commands === ===

% -- Segment Line --
\newcommand{\segline}{\vspace{1.5em}\hrule}

% -- Subtitles --
    \let\@subtitle\@empty
    \newcommand{\subtitle}[1]{\def\@subtitle{#1}}

% -- Emphasis box --
    \let\@emphtitle\@empty
    \let\@emphbread\@empty
    \newlength{\emphbreadlen}
    
    \newcommand{\doemphbox}{
        \ifx\@emphbread\@empty
            {
            \ifx\@emphtitle\@empty
            {}
            \else
                \fbox{\Large\textit{\@emphtitle}}
            \fi
            }
        \else
            {
            \ifx\@emphtitle\@empty
                \fbox{\@emphbread}
            \else
                \settowidth{\emphbreadlen}{\@emphbread}
                \fbox{
                    \begin{minipage}{\emphbreadlen}
                    {\Large $\cdot$ \textit{\@emphtitle}}
                    \newline
                    \@emphbread
                    \end{minipage}
                }
            \fi
            }
        \fi
    }
    \newcommand{\emphbox}[2][]{\def\@emphtitle{#1}\def\@emphbread{#2}\doemphbox}

% -- Colours --
    \definecolor{LightGrey} {RGB}{231,230,226}
    \definecolor{DarkGrey}  {RGB}{125,125,123}
    \definecolor{LightBlue} {RGB}{168,206,255}
    \definecolor{DarkBlue}  {RGB}{25,84,166}
    \definecolor{Red}       {RGB}{181,15,25}
    
% -- links --
    \hypersetup{
        colorlinks=true,
        linkcolor=DarkBlue,
        filecolor=LightBlue,      
        urlcolor=LightBlue,
        citecolor=DarkBlue
    }
    
    
% -- Unsorted --
    \addbibresource{Bibliography.bib}
    \renewcommand{\labelitemii}{$\circ$}
    \setlength{\columnsep}{15pt}
    

% === Options ===

% -- commonsec --
\newcommand{\commonsec}{

% \renewcommand{\thesection}{\Roman{section}}
\titleformat{\section}{\Large\centering\bf}{}{1ex}{}

% \renewcommand{\thesubsection}{\Alph{subsection}}
\titleformat{\subsection}{\large\bf}{}{1ex}{}
}


% -- IEEEsec --
\newcommand{\IEEEsec}[1][0ex]{%
\renewcommand{\thesection}{\Roman{section}}
\renewcommand{\thesubsection}{\Alph{subsection}}
\renewcommand{\thesubsubsection}{\arabic{subsubsection}}

\titleformat{\section}{\normalsize\centering\sc}{\thesection.}{1ex}{}[\vspace{-1ex}]
\titleformat{\subsection}{\normalsize\itshape}{\thesubsection.}{1ex}{}[\vspace{-1ex}]
\titleformat{\subsubsection}[runin]{\normalsize\itshape}{\hspace{3ex}\thesubsubsection)}{1ex}{}[:]

\setlength\parindent{#1}
\usepackage{indentfirst}
}