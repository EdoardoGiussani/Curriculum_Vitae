%Needed for all classes
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{fancy_cv}[2020/08/27 Custom CV class]

%Import external files
\LoadClass{article}
\RequirePackage{titlesec,fontspec,geometry,enumitem}

%initialize global paramenters
\setmainfont{corbel}
\geometry{paper=a4paper,margin=20mm}
\pagenumbering{arabic}
\setlist{nosep}

\titleformat{\section}
    {\LARGE\scshape\bfseries}
    {}{0em} 
    {}
    [\titlerule]

\titleformat{\subsection}
    {\large\scshape}
    {}{0em}
    {}
    []


\newcommand{\name}[1]{
    \centerline{\Huge{#1}}
}

\newcommand{\contact}[2]{
    \centerline{
        #1 \ \ #2
    }
}

\newcommand{\address}[3]{
    \centerline{
        #1 {\large\textperiodcentered} #2 {\large\textperiodcentered} #3
    }
}


\newcommand{\experience}[4]{
    \subsection[#1] {
        {\vspace{3px}\Large\textbf{#1} \hfill #2} \\
        {#3 \hfill #4}
    }
}

\newcommand{\skill}[2]{
    \textbf{#1}: #2
}


