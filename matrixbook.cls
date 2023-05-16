% !TEX program = xelatex
% 使用 texlive完整编译:
% xelatex -> bibtex -> xelatex -> xelatex
% 中文书籍 LaTeX 模板
%依赖的Latex版本
\NeedsTeXFormat{LaTeX2e}[2005/12/01]
\ProvidesClass{annalsbook}[2022/11/11 v1.0 update https://github.com/MobtgZhang/county-annals-books]
%使用xelex进行编译
\RequirePackage{ifxetex}
\RequireXeTeX
\ifxetex\else
\ClassError{annalsbook}{You must use the `xelatex' driver\MessageBreak Please choose `xelatex'}{%
Just choose `xelatex', no `pdflatex' or `latex' and so on.}
\fi
% -----------------------------------------------------------------
\LoadClass[UTF8,a4paper,cs4size,zihao=-4,linespread=1.625,space=auto,oneside]{ctexbook}
% 需要用到的宏包
%\usepackage{geometry}
% 选择页面参数设置
\RequirePackage[a4paper,top=1in, bottom=1in, left=0.8in, right=0.8in]{geometry}
%\geometry{a4paper,left=2.5cm,right=2.5cm,top=1.7cm,bottom=1.8cm,includehead,includefoot}
\RequirePackage{amsmath,amsthm,amssymb,amsfonts}
\RequirePackage{fancybox,mathrsfs,version,bm}
\RequirePackage{epsfig,graphicx}
\RequirePackage{url,hyperref}

\RequirePackage{longtable,booktabs}
\RequirePackage{array}


% -------- 定理设置 ---------
\theoremstyle{plain}
\newtheorem{definition}{\heiti 定义}[section]
\newtheorem{proposition}{\heiti 命题}[section]
\newtheorem{lemma}{\heiti 引理}[section]
\newtheorem{theorem}{\heiti 定理}[section]
\newtheorem{example}{\heiti 例}[section]
\newtheorem*{solution}{\heiti 解}
\newtheorem{corollary}{\heiti 推论}[section]
\newtheorem*{remark}{\heiti 注}
\newtheorem{exercise}{\heiti 练习}[section]
\newtheorem{assumption}{\heiti 假设}[section]
\newtheorem{axiom}{\heiti 公理}[section]
\newtheorem{property}{\heiti 性质}[section]
\newtheorem{conjecture}{\heiti 猜想}[section]
\let\proof\relax
\newtheorem*{proof}{\heiti 证明}
\let\endproof\relax

\RequirePackage{enumitem}


% 定公式、图、表编号为"3-1"的形式，即分隔符由.变为短杠
\renewcommand\theequation{\arabic{chapter}-\arabic{equation}}
\renewcommand\thefigure{\arabic{chapter}-\arabic{figure}}
\renewcommand\thetable{\arabic{chapter}-\arabic{table}}

\RequirePackage{fancyhdr} % 导入fancyhdr包

% 页眉设置
% 设置摘要的样式
\fancypagestyle{DocumentStyle}{
    \fancyhf{} 清空页眉、页脚设置
    \fancyhead[RO]{\leftmark}% 奇数页右页眉设置为chapter标题
    \fancyhead[LE]{矩阵论及其应用}% 偶数页左页眉设置为本书标题
    \fancyfoot[RO,LE]{\thepage}% 页脚设置为页码
    \renewcommand{\headrulewidth}{1pt}% 设置页眉
}

