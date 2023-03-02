
% === === Small-style main === ===

% -- Title --
    \let\@title\@empty
    \let\@subtitle\@empty
    \let\@date\@empty
    \let\@author\@empty
    \renewcommand{\maketitle}{
        \begin{figure*}
        \begin{minipage}{\textwidth}
            \ifx\@title\@empty
            {}
            \else
                {\huge\raggedright\noindent\rmfamily\bfseries\@title}    
            \fi
            \ifx\@subtitle\@empty
                \hfill
                {
                \normalsize\raggedleft\noindent\rmfamily\slshape
                \ifx\@author\@empty
                    \@date
                \else
                    \ifx\@date\@empty
                        \@author
                    \else
                        \@author\enspace$\cdot$\enspace\@date
                    \fi
                \fi
                }
            \else
                \par
                {\large\raggedright\noindent\rmfamily\bfseries\@subtitle}
                \hfill
                {
                \normalsize\raggedleft\noindent\rmfamily\slshape
                \ifx\@author\@empty
                    \@date
                \else
                    \ifx\@date\@empty
                        \@author
                    \else
                        \@author\enspace$\cdot$\enspace\@date
                    \fi
                \fi
                }
            \fi
            \par\vspace{-1em}
            \hrulefill
        \end{minipage}
        \end{figure*}
    }
    
% -- Overview section --
    \newenvironment{overview}
    {
        \begin{figure*}
            \begin{minipage}{\textwidth}
                \vspace{1ex}
    }{
                \vspace{-1ex}
                \segline
            \end{minipage}
        \end{figure*}
    }
    

% -- Section title --
    \titleformat{\section}{\vspace{-1em}\Large}{\thesection}{1em}{}[\vspace{-1ex}]
    \titleformat{\subsection}{\vspace{-1ex}\large}{\thesubsection}{1em}{}[\vspace{-1ex}]
