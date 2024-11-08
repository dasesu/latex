%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Contact info
% mail:   dasesumail@gmail.com
% github: @dasesu
%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\ProvidesClass{generaluse}[2017/05/23 Template]
\NeedsTeXFormat{LaTeX2e}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ProcessOptions\relax
\LoadClass{book}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Configuración del documento
\usepackage[left=3cm,top=2.5cm,right=3cm,bottom=2.5cm]{geometry}
\usepackage[utf8]{inputenc}
\usepackage[spanish,es-tabla]{babel}
\usepackage[T1]{fontenc}      % Para Codificación tipo 1 del archivo.

\usepackage{parskip}           % Descomentado para eliminar sangrado de parrafos.
\setlength{\parskip}{\baselineskip} % Descomentar para agregar separacion entre parrafos
\usepackage{graphicx}          % Para incluir graficos
\usepackage{xcolor}            % Para cambiar el color de las letras
\usepackage{lastpage}          % Permite obtener la ultima pagina del documento
\usepackage{extramarks}        % Para el uso de headers y footers
\usepackage{color}             % Para cambiar el color de las letras
\usepackage{pagecolor}         % Para cambiar el color de las pagina
\usepackage{lipsum}            % Para generar texto lorem   
% \usepackage{showframe}       % Muestra los marcos del documento
% \usepackage[all]{background} % Permite colocar contenido en background
% \usepackage{lscape}          % Para activar vista horizontal (landscape) de la pagina
% \usepackage{ulem}            % Para el tachado de palabras
\usepackage{tikz}              % Creación de elementos graficos
\usepackage{ifthen}            % Para añadir validaciones en el preambulo
\usepackage{wrapfig}           % Para que el texto envuelva las figuras
% e.g
%\begin{wrapfigure}{r}{0.3\textwidth}
%  \begin{center}
%    \includegraphics[scale=0.25]{folder/image.png}
%  \end{center}
%  \caption[short title]{Image caption.}
%  \label{Image label}
%\end{wrapfigure}

% Simbolos
\usepackage{amsmath}           % Para símbolos matemáticos
\usepackage{amsthm}            % Para más símbolos matemáticos
\usepackage{amssymb}           % PAra todavia mas simbolos matematicos
\usepackage{marvosym}          % Para incluir simbolo de Euro
\usepackage{pifont}            % Para incluir simbolos ding
\usepackage{wasysym}           % Simbolos astronomicos

% Header y Footer
\usepackage{fancyhdr}          % para hacer ajustes personalizables a los titulos del cada capitulo
\fancyhf{}                     % Limpia los campos de header y footer
\fancyfoot{}                   % Limpia el campo de footer o asigna nada
\pagestyle{fancy}              % Seleccion del estilo
\fancyhead[RO,LE]{}            % Right Odds, and Left Even 
\fancyhead[LO]{}               % Left en paginas Odd (impares)
\fancyhead[RE]{}               % Right at Even pages
\lfoot[]{}                     % Texto al pie de pagina en la parte izquierda
\cfoot{ \thepage }             % Texto al pie de pagina centrado 
\rfoot{}                       % Texto al pie de pagina en la parte derecha
% \fancyfoot[C]{ \thepage }    % Texto centrado en el pie de pagina, otra notacion
\renewcommand{\headrulewidth}{0pt} % Linea de header, agregar valor positivo a pt para ver la linea
\renewcommand{\footrulewidth}{1pt} % Linea de footer, agregar valor positivo a pt para ver la linea 

% Parrafos 
% \setlength{\parindent}{2cm}  % Cambia el tamaño de Sangrado, tiene precedencia sobre parskip
% \renewcommand{\baselinestretch}{2.0} % Espacio entre lineas

% Salto de pagina
\clubpenalty=10000             % Control para lineas huerfanas (Penalización)
\widowpenalty=10000            % Control para lineas viudas (Penalización)


% Cambio de nombre en secciones
% Permite cambiar las definiciones de los nombres para un idioma con babel
% Para usarlo \addto\captions<language>
\addto\captionsspanish{%
   \renewcommand{\contentsname}{Índice general}
   \renewcommand{\listfigurename}{Índice de Figuras}
   \renewcommand{\listtablename}{Índice de Tablas}
}


% Definiciones de aspecto para el Indice
% CAPITULOS
\usepackage[titles]{tocloft}
\renewcommand{\cftchapaftersnum}{.}                    % Agrega un punto despues del numero de CAPITULO en el indice
\renewcommand{\cftchapleader}{\cftdotfill{\cftdotsep}} % Llenar con puntos entre el capitulo y el numero de pagina


% SECCIONES Y SUBSECCIONES
\renewcommand{\cftsecaftersnum}{.}           % Agrega un punto despues del numero de sección en el indice
\renewcommand{\cftsubsecaftersnum}{.}        % Agrega un punto despues del numero de subsección en el indice


% TABLAS Y FIGURAS
% Agregar la palabra Figura #, y Tabla # en el índice de figuras y Tablas respectivamente.
\newlength\mylenFig % definimos el espacio que dejaremos a anteponer, e.g: "Figura 1.1:"
\newlength\mylenTab % definimos el espacio que dejaremos a anteponer, e.g: "Tabla 1.1:"

% Afecta a las figuras
\renewcommand{\cftfigpresnum}{\figurename\enspace} % Agregamos la palabra Figura antes del numero,
                                                   % \figurename\enspace puede sustirtuirse
                                                   % por la palabra Figura directamente.
\renewcommand{\cftfigaftersnum}{:}                     % Agregamos ":" despues del numero
\settowidth{\mylenFig}{\cftfigpresnum\cftfigaftersnum} % Añadimos los espacios que consumen ambas "Palabras" a mylenFig
\addtolength{\cftfignumwidth}{\mylenFig}

% Afecta a las tablas
\renewcommand{\cfttabpresnum}{\tablename\enspace} % Agregamos la palabra Tabla antes del numero
\renewcommand{\cfttabaftersnum}{:}                % Agregamos ":" despues del numero
\settowidth{\mylenTab}{\cfttabpresnum\cfttabaftersnum} % Añadimos los espacios que consumen ambas "Palabras" a mylenTab
\addtolength{\cfttabnumwidth}{\mylenTab}



% Titulos de capitulos
\usepackage[nobottomtitles*]{titlesec}
% Definiciones del Espaciado de Titulos
%e.g: 
%\titlespacing{command}{left spacing}{before spacing}{after spacing}[right]
\titlespacing\chapter{0pt}{40pt plus 0pt minus 0pt}{30pt plus 0pt minus 0pt}
\titlespacing\section{0pt}{30pt plus 0pt minus 0pt}{0pt plus 0pt minus 0pt}
\titlespacing\subsection{0pt}{10pt plus 0pt minus 0pt}{0pt plus 0pt minus 0pt}
\titlespacing\subsubsection{0pt}{15pt plus 0pt minus 0pt}{0pt plus 0pt minus 0pt}
\titlespacing\paragraph{0pt}{15pt plus 0pt minus 0pt}{5pt plus 5pt minus 0pt}
\titlespacing\subparagraph{0pt}{15pt plus 0pt minus 0pt}{5pt plus 5pt minus 0pt}


% Estilo de titulo de capitulo
\titleformat{\chapter}[display]{\bfseries\LARGE}{\filright\MakeUppercase{\Large\chaptertitlename} \Large\thechapter}{1ex}{\titlerule\vspace{1ex}\filleft}[\vspace{1ex}\titlerule]

% Estilo de titulo de seccion
\titleformat{\section}[hang]{\bf\Large}{\thesection.}{0.8pc}{}

% Estilo de titulo de subseccion
\titleformat{\subsection}[hang]{\bf\large}{\thesubsection.}{2pc}{\hspace{-1em}{}}

% Estilo de titulo de subsubseccion
% \titlespacing*{\subsection}{0pt}{5.5ex plus 1ex minus .2ex}{4.3ex plus .2ex}

% NUMERACION DE SUBSECCIONES Y PARAGRAPH
%\setcounter{tocdepth}{3}      % Para numerar sub-subsecciones y paragraph en el indice
%\setcounter{secnumdepth}{3}   % Para numerar sub-subsecciones y paragraph en cada respectivo titulo del documento


% Figuras
\usepackage[skip=4pt]{caption} % Espacio entre figura y texto caption, link a la figura y no al caption.
\usepackage{placeins} % para evitar que se descuadre el texto con respecto a las imagenes
\usepackage{wrapfig} %  Para crear texto alrededor de las figuras
\graphicspath{{img/}} % Carga las imagenes del directorio 'img' por defecto.
\BeforeBeginEnvironment{figure}{\vspace*{0pt}} % Para personalizar el espacio entre un parrafo y una figura
\AfterEndEnvironment{figure}{\vspace*{0pt}} % Para configuar el espacio entre una figura y el parrafo siguiente 

% Tablas
\BeforeBeginEnvironment{table}{\vspace*{0pt}} % 
\AfterEndEnvironment{table}{\vspace*{0pt}} %

% LISTAS
\usepackage{enumerate} %Para trabajar con listas enumeradas
\usepackage{enumitem} % Permite dar configuración adicional a los espacios entre itemize, enumerate etc, ( listas )

% Cambios en el campo itemize, cambiando iconos por defecto e identación
\renewcommand{\labelitemi}{ $\bullet$ }
\renewcommand{\labelitemii}{ $\circ$ }
\renewcommand{\labelitemiii}{$\triangleright$} 


%\BeforeBeginEnvironment{itemize}{ \vspace*{10pt} } % Para personalizar el espacio entre parrafos y listas
%\AfterEndEnvironment{itemize}{ \vspace*{10pt}}
\setlist[itemize]{ %Configuración de espaciado vertical y orizontal para itemize
 %  noitemsep,
   topsep=5pt, % Separación entre cada nivel interno
   itemsep=0em, % Separación entre items dentro de un mismo nivel
   parsep=0.5em, % 
   partopsep=0pt
}


% TABLAS
\usepackage{longtable}     % Para tablas que se extienden mas de una pagina ( no recomendable que esto pase )
\usepackage{tabularx}      % Para hacer tablas 
\usepackage{array} 
\usepackage{multirow}      % Permite construir tablas en la que las celdas ocupan varias filas 
\usepackage{dcolumn}       % Para dividir columna por una diagonal
\usepackage{colortbl}      % Para usar colores en tablas
\usepackage{lscape}
\usepackage{array}
\usepackage{makecell}
\usepackage{booktabs}

% for table horizontal alineation when are fixed
\newcolumntype{L}[1]{>{\raggedright\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}
\newcolumntype{C}[1]{>{\centering\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}
\newcolumntype{R}[1]{>{\raggedleft\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}

% Ecuaciones y formulas
%\DeclareCaptionType{equ}[][] % PAra incluir el caption en ecuaciones
%\captionsetup[equ]{labelformat=empty}

% ENLACES
\usepackage{url}
\usepackage{hyperref} % Para incluir hipervínculos
\hypersetup{ % Para eliminar el marco rojo en los enlaces del documento
   urlcolor=blue,
   colorlinks=false,
   pdfborder={0 0 0}
}


% APENDICE
\usepackage{appendix} % Para agregar apendices
% Descomentar para modificar el nombre de apendice
% \renewcommand{\appendixname}{Apendices}
% \renewcommand{\appendixtocname}{Apendices}
% \renewcommand{\appendixpagename}{Apendices}

