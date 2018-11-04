%%
%% Customizações do abnTeX2 (http://abnTeX2.googlecode.com) para a
%% Universidade Federal do Rio Grande (FURG). Centro de Ciências Computacionais (C3).
%%
%% This work may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.3
%% of this license or (at your option) any later version.
%% The latest version of this license is in
%%   http://www.latex-project.org/lppl.txt
%% and version 1.3 or later is part of all distributions of LaTeX
%% version 2005/12/01 or later.
%%
%% This work has the LPPL maintenance status `maintained'.
%% 
%% The Current Maintainer of this work is Cleo Zanella Billa, cleobilla@furg.br
%%
%% Further information about abnTeX2 are available on http://abntex2.googlecode.com/
%%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{C3FURG}[2018/06/10 v1.0 Modelo do Centro de Ciências Computacionais da Universidade Federal do Rio Grande baseado em abnTeX2]

%
% Repassa todos os parametros a classe abntex2, 
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{abntex2}%
}

% Definicoes

\newcommand{\course}[1]{\gdef\@course{#1}}
\newcommand{\tituloacademico}[1]{\gdef\@tituloacademico{#1}}

\def\furg{Universidade Federal do Rio Grande}
\def\ctres{Centro de Ci{\^e}ncias Computacionais}
\def\ppgcomp{Programa de P{\'o}s-Gradua{\c{c}}{\~a}o em Computa{\c{c}}{\~a}o}
\def\ec{Engenharia de Computa{\c{c}}{\~a}o}
\def\ea{Engenharia de Automa{\c{c}}{\~a}o}
\def\si{Sistemas de Informa{\c{c}}{\~a}o}

\DeclareOption{ec}{\course{Curso de \ec}\tituloacademico{Bacharel em \ec}}
\DeclareOption{si}{\course{Curso de \si}\tituloacademico{Bacharel em \si}}
\DeclareOption{ea}{\course{Curso de \ea}\tituloacademico{Bacharel em \ea}}
\DeclareOption{mestrado}{\course{\ppgcomp}\tituloacademico{Mestre em Engenharia de Computa{\c{c}}{\~a}o}}


\ProcessOptions\relax
\LoadClass{abntex2}

% alterando a capa
\renewcommand{\imprimircapa}{%
  \begin{capa}%
    \center
    \ABNTEXchapterfont\Large UNIVERSIDADE FEDERAL DO RIO GRANDE
    
    \vspace*{1cm}
    
    {\ABNTEXchapterfont\large\imprimirautor}

    \vfill
    \begin{center}
    \ABNTEXchapterfont\bfseries\LARGE\imprimirtitulo
    \end{center}
    \vfill
    
    \large\imprimirlocal

    \large\imprimirdata
    
    \vspace*{1cm}
  \end{capa}
}

% Definindo preambulo
  \preambulo{
    Trabalho acad{\^e}mico apresentado ao \@course\ da
    \furg, como requisito parcial para a obten{\c{c}}{\~a}o do grau de \@tituloacademico%.
  }%



% folha de rosto 

\makeatletter

\renewcommand{\folhaderostocontent}{
\begin{center}
{\ABNTEXchapterfont\Large UNIVERSIDADE FEDERAL DO RIO GRANDE}
    
    \vspace*{1cm}
    
{\ABNTEXchapterfont\large\imprimirautor}

\vspace*{\fill}\vspace*{\fill}

\begin{center}
\ABNTEXchapterfont\bfseries\Large\imprimirtitulo
\end{center}

\vspace*{\fill}

\abntex@ifnotempty{\imprimirpreambulo}{%
  \hspace{.45\textwidth}
  \begin{minipage}{.5\textwidth}
  \SingleSpacing
  \imprimirpreambulo
  \end{minipage}%
  \vspace*{\fill}
}%

{\large\imprimirorientadorRotulo~\imprimirorientador\par}

\abntex@ifnotempty{\imprimircoorientador}{%
  {\large\imprimircoorientadorRotulo~\imprimircoorientador}%
}%

\vspace*{\fill}

{\abntex@ifnotempty{\imprimirinstituicao}{\imprimirinstituicao\vspace*{\fill}}}

{\large\imprimirlocal}

\par

{\large\imprimirdata}
\vspace*{1cm}
\end{center}
}

\makeatother