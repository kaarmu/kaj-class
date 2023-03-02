% --- --- Fonts for DnD-style --- ---

% -- Get fonts --
    \RequirePackage{ebgaramond}


% -- Fonts --
    \defaultfontfeatures{
        Ligatures={
            TeX,
            Rare,
            Historic,
            Discretionary,
            Required,
            Contextual,
            Common},
        Contextuals={Alternate, WordInitial},
        Numbers=OldStyle,
        RawFeature={+ss05},
        CharacterVariant=11:1,
        ItalicFeatures={
            CharacterVariant={27:0, 5:1}
        }
    }

    \setmainfont{EB Garamond}
        
    \newfontfamily\spacedfont{EB Garamond}[
        LetterSpace=20,
        WordSpace=1
        ]
        
    \newfontfamily\sectitlefont{EB Garamond}[
        Scale = 1.2,
        RawFeature={+smcp},
        LetterSpace=30,
        WordSpace=1.2
        ]    
    
    \newfontfamily\introdfont{EB Garamond 12 Italic}[
        CharacterVariant=27:0,
        RawFeature = {
            +swsh
        }]



% -- Lettrine --
    \newfontfamily\goudy
        {Goudy Initialen}[Scale=3.5]
    \renewcommand*{\LettrineFont}{\goudy}
    
    \def\lettparse#1 {
        \StrPosition{#1}{ }[\@spacepos]
        \StrLeft{#1}{\@spacepos}[\@firstword]
        \StrLeft{\@firstword}{1}[\@firstletter]
        \StrGobbleLeft{#1}{\@spacepos}[\@follword]
        \StrGobbleLeft{\@firstword}{1}[\@firstword]
        %''\@firstletter'' \\
        %''\@firstword'' \\
        %''\@follword'' \\
        %''\@spacepos'' \\
    }
    
    \def\dolettrine#1 {
        \lettparse{#1}
        \ifcat\@firstletter a
            \lettrine[
                lines=2,
                depth=1,
                % loversize=0.0,
                lraise=-0.75,
                findent=0.5ex,
                nindent=0em
            ]%
            {\@firstletter}
            {\scshape\spacedfont\@firstword}%
            {\@follword}
        \else
            #1
        \fi
    }
    
    \def\doilettrine#1 {
        \lettparse{#1}
        \ifcat\@firstletter a
            \lettrine[
                lines=2,
                depth=1,
                % loversize=0.0,
                lraise=-0.75,
                findent=0.5ex,
                nindent=0em
            ]%
            {\@firstletter}
            {\scshape\spacedfont\@firstword}%
            {\introdfont\@follword}
        \else
            #1
        \fi
    }