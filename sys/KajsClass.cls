\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{KajsClass}[2019/05/05 Kaj's Class]

% -- Class options --
    \newif\ifDnD
    \DeclareOption{DnD}{\DnDtrue}
    
    \newif\ifslides
    \DeclareOption{slides}{\slidestrue}
    
    \newif\iflong
    \DeclareOption{long}{\longtrue}
    
    \newif\ifinswedish
    \DeclareOption{English}{\inswedishfalse}
    \DeclareOption{Swedish}{\inswedishtrue}

% -- Send away any unknown option --
    \ifslides
        \LoadClassWithOptions{beamer}
    \else
        \DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
        \ProcessOptions\relax
        \LoadClass[11pt]{article}
    \fi

% -- Packages --
    \input{classext/packs.cls}

% -- Define commands --
    \input{classext/cmds.cls}

% -- Style main --
    \ifslides
        \usetheme{kajsclass}
        \endinput
    \fi
    
    \RequirePackage[vmargin=2cm, hmargin=2cm]{geometry}
    
    \ifDnD
        \input{classext/dnd/main.cls}
        \endinput
    \fi
    
    \iflong
        \input{classext/long/main.cls}
        \endinput
    \fi
    
    \input{classext/small/main.cls}
