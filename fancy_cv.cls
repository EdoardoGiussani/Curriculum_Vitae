%Needed for all classes
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{fancy_cv}[2020/08/27 Custom CV class]

%Import external packages
\LoadClass{article}
\RequirePackage{titlesec}
\RequirePackage{fontspec}
\RequirePackage{geometry}
\RequirePackage{enumitem}
\RequirePackage{changepage}
\RequirePackage{multirow}
\RequirePackage{tabularx}
\RequirePackage{graphicx}
\RequirePackage{graphbox}

%initialize global paramenters
\setmainfont{corbel}
\geometry{paper=a4paper,margin=20mm,top=15mm}
\pagenumbering{gobble}
\setlist{nosep}
\graphicspath{{images/}}

\titleformat{\section}
    {\LARGE\scshape\bfseries}
    {}{0em} 
    {}
    [\titlerule]


%Header with name and personal informations
\newcommand{\header}[5]
{
    \begin{tabularx}{\textwidth}{lXl}
        \multirow{4}{*}{\Huge\textbf{#1}} & &
        \ \ \ \ \ \ Birth date: #5 \\ & &
        \includegraphics[align=c,width=10pt]{place.png} #2 \\ & &
        \includegraphics[align=c,width=10pt]{mobile.png} #3 \\ & &
        \includegraphics[align=c,width=10pt]{email.png} #4 
    \end{tabularx}
}


\newcommand{\experience}[5]
{
    \begin{scshape}
        \noindent
        {\Large\textbf{#1} \hfill #2}\\
        {\large#3 \hfill #4}\par
    \end{scshape}
    \begin{adjustwidth}{5pt}{0pt}
        #5
    \end{adjustwidth}
}

\newcommand{\skill}[3]
{
    \noindent
    \begin{tabular}{ p{28mm} | l}
        \multirow{#3}{28mm}{\large\textbf{#1}} & #2
    \end{tabular}
    \newline
}


