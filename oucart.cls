\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{oucart}[OUC Undergraduate Thesis Template]

\LoadClass[12pt,a4paper]{article}

\RequirePackage{ctex}
\AtBeginDocument{%
	\songti  % 默认使用宋体
	\zihao{-4}  % 小四号字
	\fixbaselineskip
}
%\RequirePackage{CJKutf8}

% \RequirePackage[UTF8,scheme=plain]{ctex}

\RequirePackage{amsmath}
\RequirePackage{booktabs}
\RequirePackage{caption}
\RequirePackage{graphicx}
\RequirePackage{setspace}
\RequirePackage{subfigure}
\RequirePackage{titlesec}
\RequirePackage{titletoc}
\RequirePackage{ulem}

% 页边距设置
\RequirePackage{geometry}


\RequirePackage{fancyhdr}
\pagestyle{fancy}
% 页码
\cfoot{\zihao{-5}\thepage}

\RequirePackage{assets/cover}
\RequirePackage{assets/abstractkeywords}
\RequirePackage{assets/signature}

% ``目录'', ``参考文献''样式
\renewcommand{\contentsname}{\centerline{\zihao{3}{\heiti{目\ \ \ 录}}}}
\renewcommand{\refname}{\centerline{\zihao{-3} \heiti{参考文献}}}

% 调整页边距
\geometry{top=2.54cm,bottom=2.54cm,left=3cm,right=3cm} 

\makeatletter

% 修改引用标记为上角标
\def\@cite#1#2{\textsuperscript{[{#1\if@tempswa , #2\fi}]}}

% 定义基本信息
\newcommand*{\entitle}[1]{
  \def\@entitle{#1}
}
\newcommand*{\advisor}[1]{
  \def\@advisor{#1}
}
\newcommand*{\studentid}[1]{
  \def\@studentid{#1}
}
\newcommand*{\college}[1]{
	\def\@college{#1}
}
\newcommand*{\department}[1]{
  \def\@department{#1}
}
\newcommand*{\nian}[1]{
	\def\@nian{#1}
}
\newcommand*{\yue}[1]{
	\def\@yue{#1}
}
\newcommand*{\ri}[1]{
	\def\@ri{#1}
}

\lhead{}
\rhead{}
\chead{\zihao{-5}{\songti\@title}} % 页眉

\makeatother

% 修改标题样式
\titleformat{\section}
            {\zihao{3}\fixbaselineskip\heiti\raggedright}
            {\zihao{3}\fixbaselineskip\heiti\fontspec{SimHei}{\raggedright\arabic{section}}}{1em}
            {}
\titleformat{\subsection}
            {\zihao{4}\fixbaselineskip\heiti\raggedright}
            {\zihao{4}\fixbaselineskip\heiti\fontspec{SimHei}\raggedright\arabic{section}.\arabic{subsection}}{1em}
            {}
\titleformat{\subsubsection}
            {\zihao{4}\fixbaselineskip\heiti\raggedright}
            {\zihao{4}\fixbaselineskip\heiti\fontspec{SimHei}\raggedright\arabic{section}.\arabic{subsection}.\arabic{subsubsection}}{1em}
            {}
% 修改目录样式
\titlecontents{section}
              [10mm]
              {\zihao{4}\fixbaselineskip\songti}
              {\contentslabel{1em}}
              {}
              {\titlerule*{.}\contentspage}
\titlecontents{subsection}
              [17mm]
              {\zihao{-4}\fixbaselineskip\songti}
              {\contentslabel{2em}}
              {}
              {\titlerule*{.}\contentspage}
\titlecontents{subsubsection}
              [25mm]
              {\zihao{-4}\fixbaselineskip\songti}
              {\contentslabel{3em}}
              {}
              {\titlerule*{.}\contentspage}
% 为了把致谢和参考文献放入目录
\titlecontents{nonumbersection}
              [4.6mm]
              {\zihao{4}\fixbaselineskip\songti}
              {\contentslabel{0em}}
              {}
              {\titlerule*{.}\contentspage}



% 图、表、公式样式
\captionsetup{figurewithin=section}
\captionsetup{tablewithin=section}
\renewcommand{\figurename}{图}
\renewcommand{\tablename}{表}
\renewcommand\thefigure{\arabic{section}-\arabic{figure}}
\renewcommand\thetable{\arabic{section}-\arabic{table}}
\renewcommand{\labelenumi}{(\theenumi)}
\renewcommand{\captionfont}{\zihao{5}\fixbaselineskip\songti} 
\RequirePackage{etoolbox}

\makeatletter
\renewcommand{\tagform@}[1]{%
	\maketag@@@{\zihao{5}\setmainfont{Times New Roman} (#1)}%
}
\makeatother

