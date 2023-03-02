
% --- --- DnD-style main --- ---

\input{classext/dnd/init.cls}

% -- Column seperation --
    \setlength\columnsep{20pt}

% -- Title page --
    \renewcommand{\maketitle}{
        \begin{titlepage}
        {
        \centering
        \includegraphics[width=\textwidth]{figs/Decorated_header.pdf}
        }
        \bigskip\bigskip \\
        {
        \centering
        \Huge
        \gothfamily
        \curlyframe{
            \ifx\@subtitle\@empty
                \vspace{1.5em}
                \@title
                \vspace{1.5em}
            \else
                \vspace{1.25em}
                \@title
                \\
                ~\swrule{0.6\textwidth}{1pt}~
                \bigskip \\
                \huge
                \@subtitle
                \vspace{0.5em}
            \fi
        }
        }
        \medskip\\
        {
        \ifx\@titleim\@empty
            \ifx\@introd\@empty
            {Not Yet Done}
            \else
            {
                \large
                \begin{multicols}{2}
                    \doilettrine{\@introd}
                \end{multicols}
            }
            \fi
        \else
        {Not Yet Done}
        \fi
        }
        \bigskip\bigskip
        {
        \begin{center}
            \pgfornament[width=0.6\textwidth]{89}    
        \end{center}
        }
        \bigskip\bigskip
        {
        \begin{center}
            {\sectitlefont\@date}
            \bigskip\\
            {\introdfont\addfontfeature{Scale=1.2}\@author}
            \bigskip\bigskip\\
            % \pgfornament[height=10ex]{75}
            \pgfornament[height=12.5ex]{71}
        \end{center}
        }
        \end{titlepage}
    }

% -- Section titles --
\titleformat{\section}[hang]%
  {\sectitlefont\centering}%
  {\textsc{\textbf{\thesection}}--}%
  {5pt}%
  {}
\titlespacing*{\section}
  {0pt}{0pt}{0pt}
  
  \titleformat{\subsection}[hang]%
  {\sectitlefont\addfontfeature{Scale=1}\centering}%
  {\addfontfeature{Scale=1}\thesubsection--}%
  {5pt}%
  {}
\titlespacing*{\subsection}
  {0pt}{0pt}{0pt}
  
  \titleformat{\subsubsection}[hang]%
  {\sectitlefont\addfontfeature{Scale=0.8}\centering}%
  {\addfontfeature{Scale=0.8}\thesubsubsection--}%
  {5pt}%
  {}
\titlespacing*{\subsubsection}
  {0pt}{0pt}{0pt}
  
\def\lsec#1#2 {
    \section{#1}
    \dolettrine{#2}
    
}

\def\lsubsec#1#2 {
    \subsection{#1}
    \dolettrine{#2}
    
}

\def\lsubsubsec#1#2 {
    \subsubsection{#1}
    \dolettrine{#2}
    
}
