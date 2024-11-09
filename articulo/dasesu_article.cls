%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% dasesu
% dasesumail@gmail.com
%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\ProvidesClass{generaluse}[2017/05/23 Template]
\NeedsTeXFormat{LaTeX2e}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
\LoadClass{article}


% CONFIGURACIÓN DEL DOCUMENTO
\usepackage[left=3cm,top=2.5cm,right=3cm,bottom=2.5cm]{geometry}
\usepackage[utf8]{inputenc}
\usepackage[spanish,es-tabla]{babel}
\usepackage[T1]{fontenc}           % Para Codificación tipo 1 del archivo.


% OPCIONES
\usepackage{lastpage}              % Permite obtener la ultima pagina del documento
\usepackage{extramarks}            % Required for headers and footers
\usepackage{color}                 % Para cambiar el color de las letras
\usepackage{pagecolor}             % Para cambiar el color de las pagina
\usepackage{lipsum}
% \usepackage{showframe}           % Muestra los marcos del documento
\usepackage{tikz}                  % Creación d imagenes
\usepackage{ifthen}                % Para validaciones en el preambulo
% \usepackage{wrapfig}             % Para que el texto quede al lado de la figura 
%Ejemplo
%\begin{wrapfigure}{r}{0.3\textwidth}
%  \begin{center}
%    \includegraphics[scale=0.25]{image.png}
%  \end{center}
%  \caption[short description]{Description.}
%  \label{reference_to_image}
%\end{wrapfigure}


% DIAGRAMADO
% SANGRIA, PARRAFOS, INTERLINEADO
\usepackage{parskip}               % Descomentar para que los parrafos no comiencen con sangria. y espacio interlineado
\renewcommand{\baselinestretch}{1} % Espacio entre lineas
%\setlength{\parindent}{2cm}       % Cambia el tamaño de Sangrado, tiene precedencia sobre parskip
\setlength{\parskip}{\baselineskip} % Descomentar para agregar separacion entre parrafos
% SALTO DE PAGINA
\clubpenalty=10000                 % Control para lineas huerfanas (Penalización)
\widowpenalty=10000                % Control para lineas viudas (Penalización)



% SIMBOLOS
\usepackage{amsmath}               % Para más símbolos matemáticos
\usepackage{amsthm}                % Para más símbolos matemáticos
\usepackage{amssymb}               % Para incluir algunos simbolos matematicos
\usepackage{marvosym}              % Para incluir simbolo de Euro
\usepackage{pifont}                % Para incluir simbolos ding
\usepackage{wasysym}               % Simbolos astronomicos


% HEADER Y FOOTER
% \usepackage{fancyhdr}            % para hacer ajustes personalizables a los titulos del cada capitulo
% \fancyhf{}                       % Limpia los campos de header y footer
% \pagestyle{fancy}                % seleccionamos un estilo
% \fancyhead[RO,LE]{}
% \fancyhead[LO]{}
% \fancyhead[RE]{}
% \fancyfoot[C]{ \thepage }
% \renewcommand{\headrulewidth}{0pt} % Linea de header, agregar valor positivo a pt para ver la linea
% \renewcommand{\footrulewidth}{1pt} % Linea de footer, agregar valor positivo a pt para ver la linea 


% TITULOS
\usepackage{titlesec}
% ESTILO DE TITULO DE SECCION
\titleformat{\section}[hang]{\bf\Large}{\thesection.}{2pc}{\hspace{-0.8em}{}}
% ESTILO DE TITULO DE SUBSECCION
\titleformat{\subsection}[hang]{\bf\large}{\thesubsection.}{2pc}{\hspace{-1em}{}}
% ESPACIADO DE TITULOS
\titlespacing\section{0pt}{30pt plus 0pt minus 0pt}{0pt plus 0pt minus 0pt}
\titlespacing\subsection{0pt}{20pt plus 0pt minus 0pt}{0pt plus 0pt minus 0pt}
\titlespacing\subsubsection{0pt}{15pt plus 0pt minus 0pt}{0pt plus 0pt minus 0pt}
\titlespacing\paragraph{0pt}{15pt plus 0pt minus 0pt}{5pt plus 5pt minus 0pt}
\titlespacing\subparagraph{0pt}{15pt plus 0pt minus 0pt}{5pt plus 5pt minus 0pt}



% INDICES
\usepackage[titles]{tocloft}
% SECCIONES Y SUBSECCIONES
\renewcommand{\cftsecaftersnum}{.} % Agrega un punto despues del numero de seccion en el idice
\renewcommand{\cftsecleader}{\cftdotfill{\cftdotsep}}  % Llenar con puntos entre el seccion y el numero de pagina
\renewcommand{\cftsecaftersnum}{.}  % Agrega un punto despues del numero de sección en el idice
\renewcommand{\cftsubsecaftersnum}{.} % Agrega un punto despues del numero de subsección en el idice



% FIGURAS
\usepackage{graphicx} % Para incluir graficos
\usepackage[skip=4pt]{caption} % Espacio entre figura y texto caption, link a la figura y no al caption.
\usepackage{placeins} % para evitar que se descuadre el texto con respecto a las imagenes
\usepackage{wrapfig} %  Para texto alrededor de las figuras
\graphicspath{{img/}} % Las imágenes se cargan del directorio 'img' por defecto.
% \BeforeBeginEnvironment{figure}{\vspace*{-5pt}} % Para personalizar el espacio entre un parrafo y una figura
% \AfterEndEnvironment{figure}{\vskip-5ex} % Para configuar el espacio entre una figura y el parrafo siguiente 

% \BeforeBeginEnvironment{table}{ \vspace*{-5pt}} % PAra personalizar el espacio entre un parrafo y una figura
% \AfterEndEnvironment{table}{\vskip-5ex} % Para configuar el espacio entre una figura y el parrafo siguiente 


% LISTAS
\usepackage{enumerate} %Para trabajar con listas enumeradas
\usepackage{enumitem} % Permite dar configuración adicional a los espacios entre itemize, enumerate etc, ( listas )
% Cambios en el campo itemize, cambiando iconos por defecto e identación
\renewcommand{\labelitemi}{$\bullet$}
\renewcommand{\labelitemii}{\ding{226}}
%  \renewcommand{\labelitemiii}{$\ast$}
\BeforeBeginEnvironment{itemize}{ \vspace*{5pt}} % Para personalizar el espacio entre parrafos y listas
\AfterEndEnvironment{itemize}{ \vspace*{5pt}}
\setlist[itemize]{                 %Configuración de espaciado vertical y orizontal para itemize
   topsep=-10pt,                   % Separación entre cada nivel interno
   itemsep=0em,                    % Separación entre items dentro de un mismo nivel
   parsep=0.5em,                   % Separación entre todos los items
}

% TABLAS
\usepackage{longtable}             % Para tablas que se extienden mas de una pagina ( no recomendable que esto pase )
\usepackage{tabularx}              % Para hacer tablas 
\usepackage{array} 
\usepackage{multirow}              % Permite construir tablas en la que las celdas ocupan varias filas 
\usepackage{dcolumn}               % Para dividir columna por una diagonal
\usepackage{colortbl}              % Para usar colores en tablas


% ENLACES
\usepackage{url}
\usepackage{hyperref}              % Para incluir hipervínculos
\hypersetup{                       % Para eliminar el marco rojo en los enlaces del documento
   urlcolor=blue,
   colorlinks=false,
   pdfborder={0 0 0}
}
