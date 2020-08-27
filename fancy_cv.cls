\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{curriculum}[2020/08/27 Custom CV class]

\LoadClass{article}
\RequirePackage{titlesec,fontspec,geometry}

\setmainfont{corbel}
\geometry{legalpaper, margin=20mm}



\titleformat{\section}
    {\LARGE\scshape\raggedright}
    {}{0em} 
    {}
    [\titlerule]

\titleformat{\subsection}
    {\large\scshape\raggedright}
    {}{0em}
    {}
    []


\newcommand{\datedsubsection}[4]{
    \subsection[#1] {{\Large\textbf{#1} \hfill #2} \\
                    {#3 \hfill #4}}
}

\newcommand{\name}[1]{
    \centerline{\Huge{#1}}
}

\newcommand{\contact}[5]{
    \centerline{
            #1 {\large\textperiodcentered} #2 {\large\textperiodcentered} #3
    }
    \centerline{
            #4 \ \ #5
    }
}

