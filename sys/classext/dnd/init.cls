
% --- --- Initialize DnD-style --- ---

% -- Packages --
    \RequirePackage{lettrine}
        \renewcommand{\LettrineFontHook}{\lettrinefont}
    \RequirePackage{niceframe}
    \RequirePackage{yfonts}
    \RequirePackage[T1]{fontenc}
    \RequirePackage{moresize}
    \RequirePackage{swrule}
    \RequirePackage{fontspec}
    \RequirePackage{pgfornament}

% -- Introduction command --
    \let\@introd\@empty
    \newcommand{\introd}[1]{\def\@introd{#1}}

% -- Title Image command --
    \let\@titleim\@empty
    \newcommand{\titleim}[1]{\def\@titleim{#1}}

% -- Font init --
    \input{classext/dnd/fonts.cls}