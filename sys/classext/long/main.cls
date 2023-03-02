
% === === Small-style main === ===

% -- Title --
    \let\@title\@empty
    \let\@subtitle\@empty
    \let\@date\@empty
    \let\@author\@empty
    \renewcommand{\maketitle}{
        \begin{titlepage}
            \begin{center}
                
                \vspace*{4cm}
                {
                    \Huge 
                    \bfseries
                    \@title
                }
                
                \vspace{1cm}
                {
                    \Large
                    \@subtitle
                }
                
                \vspace{4cm}
                {
                    \huge 
                    \bfseries
                    \@author
                }
                
                \vfill
                {
                    \Large
                    \@date
                }
                
            \end{center}
        \end{titlepage}
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
