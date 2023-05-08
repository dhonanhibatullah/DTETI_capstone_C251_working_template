% Dokumen menggunakan format LaTeX2e format.
% Class ini dibangun berdasarkan report class yang sudah tersedia.
\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\LoadClass[12pt,a4paper]{report}



% ================[ PACKAGES IMPORT ]================
%%	Ukuran margin yang telah ditentukan
\RequirePackage[a4paper, top=25mm, bottom=25mm, left=25mm, right=20mm]{geometry}

%% Font huruf yang digunakan adalah Times New Roman
\usepackage{savesym}
\usepackage{amsmath}
\savesymbol{iint}
\usepackage{mathptmx}
\restoresymbol{TXF}{iint}

%% Pengaturan TOC, LOF dan LOT
\usepackage[subfigure]{tocloft}
\usepackage{titletoc}

%% Pengaturan spasi
\usepackage{setspace}

%% Underline
\usepackage[normalem]{ulem}

%% Bookmarks
\usepackage{hyperref}

%% Array package
\usepackage{array}

%% Menghitung total halaman
\usepackage{lastpage}

%% Pengaturan header dan footer
\usepackage{fancyhdr}
\usepackage[table,xcdraw]{xcolor}

%% Pengaturan bahasa
\RequirePackage[bahasa]{babel}

%% Mengganti gaya judul bahasa
\RequirePackage{titlesec}

%% Menambahkan "Daftar Isi" ke dalam daftar isi
\RequirePackage{tocbibind}



% ================[ CUSTOMIZATIONS ]================
%% Pengaturan underline
\setlength{\ULdepth}{3pt}
\renewcommand{\ULthickness}{1.5pt}

%% Untuk import gambar
\RequirePackage{graphicx}
\graphicspath{ {figures/example/} }
\usepackage[export]{adjustbox}

%% Numbering : Equation
\numberwithin{equation}{chapter}
\renewcommand{\theequation}{\arabic{chapter}.\arabic{equation}}

%% Numbering : Figure
\renewcommand{\thefigure}{\arabic{chapter}.\arabic{figure}}

%% Numbering : Table
\renewcommand{\thetable}{\arabic{chapter}.\arabic{table}}

%% Caption : Algoritma
\RequirePackage{algorithm}
\renewcommand{\ALG@name}{Algoritma}

%% Table command
\newcolumntype{L}[1]{>{\raggedright\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}
\newcolumntype{C}[1]{>{\centering\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}
\newcolumntype{R}[1]{>{\raggedleft\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}
\newcolumntype{M}[1]{>{\raggedright\let\newline\\\arraybackslash\hspace{0pt}}p{#1}}
\newcolumntype{D}[1]{>{\centering\let\newline\\\arraybackslash\hspace{0pt}}p{#1}}

%% Pengaturan header dan footer
\fancypagestyle{fancymod}
{
	\fancyhf{}
	\renewcommand{\headrulewidth}{0pt}
	\fancyfoot[R]{\thepage}
}

%% Mendefinisikan ulang gaya plain
\fancypagestyle{plain}
{
	\fancyhf{}
	\renewcommand{\headrulewidth}{0pt}
	\fancyfoot[R]{\thepage}
}



% ================[ TOC, LOF, and LOT CUSTOMIZATIONS ]================

%% Pengaturan jarak antara caption dan nama chapter
\renewcommand\cfttoctitlefont{\vspace{-0.8cm}\large\bfseries\centering\MakeUppercase}
\renewcommand\cftloftitlefont{\vspace{-0.8cm}\hspace{.1cm}\large\bfseries\centering\MakeUppercase}
\renewcommand\cftlottitlefont{\vspace{-0.8cm}\hspace{.1cm}\large\bfseries\centering\MakeUppercase}
\dottedcontents{chapter}[1.5cm]{}{1.5cm}{0.3pc}
\dottedcontents{section}[2.25cm]{}{.75cm}{0.3pc}
\dottedcontents{subsection}[3.25cm]{}{1cm}{0.3pc}

% Pengaturan posisi judul chapter
\titlespacing*{\chapter}{0pt}{-2.5em}{20pt}

%% Pengaturan di LOF (List of Figure) dan LOT (List of Table)
\renewcommand{\cftfigfont}{Gambar }
\renewcommand{\cfttabfont}{Tabel }
\setlength{\cftfignumwidth}{1.1cm}
\setlength{\cfttabnumwidth}{1.1cm}
\renewcommand\cftdotsep{0.3}
\renewcommand{\cftfigleader}{\cftdotfill{\cftdotsep}}
\renewcommand{\cfttableader}{\cftdotfill{\cftdotsep}}
    


% ================[ COMMANDS DEFINITION ]================

%% Judul bahasa Indonesia
\newcommand\judul[1]{\renewcommand\@judul{#1}}
\newcommand\@judul{\@latex@error{"Judul Capstone" belum lengkap}\@ehc}

%% Nomor dokumen
\newcommand\NoDok[1]{\renewcommand\@NoDok{#1}}
\newcommand\@NoDok{\@latex@error{Data "Nomor Dokumen" belum diinputkan}\@ehc}

%% Nomor revisi
\newcommand\NoRev[1]{\renewcommand\@NoRev{#1}}
\newcommand\@NoRev{\@latex@error{Data "Nomor Revisi" belum diinputkan}\@ehc}

%% Data mahasiswa capstone : Mahasiswa 1
\newcommand\MHSA[4]{\renewcommand\@MHSANama{#1}
\renewcommand\@MHSANIM{#2}
\renewcommand\@MHSAProdiKonsentrasi{#3}
\renewcommand\@MHSAEmail{#4}}
\newcommand\@MHSANama{\@latex@error{Data "Mahasiswa 1" belum lengkap}\@ehc}
\newcommand\@MHSANIM{\@latex@error{Data "Mahasiswa 1" belum lengkap}\@ehc}
\newcommand\@MHSAProdiKonsentrasi{\@latex@error{Data "Mahasiswa 1" belum lengkap}\@ehc}
\newcommand\@MHSAEmail{\@latex@error{Data "Mahasiswa 1" belum lengkap}\@ehc}

%% Data mahasiswa capstone : Mahasiswa 2
\newcommand\MHSB[4]{\renewcommand\@MHSBNama{#1}
\renewcommand\@MHSBNIM{#2}
\renewcommand\@MHSBProdiKonsentrasi{#3}
\renewcommand\@MHSBEmail{#4}}
\newcommand\@MHSBNama{\@latex@error{Data "Mahasiswa 2" belum lengkap}\@ehc}
\newcommand\@MHSBNIM{\@latex@error{Data "Mahasiswa 2" belum lengkap}\@ehc}
\newcommand\@MHSBProdiKonsentrasi{\@latex@error{Data "Mahasiswa 2" belum lengkap}\@ehc}
\newcommand\@MHSBEmail{\@latex@error{Data "Mahasiswa 2" belum lengkap}\@ehc}

%% Data mahasiswa capstone : Mahasiswa 3
\newcommand\MHSC[4]{\renewcommand\@MHSCNama{#1}
\renewcommand\@MHSCNIM{#2}
\renewcommand\@MHSCProdiKonsentrasi{#3}
\renewcommand\@MHSCEmail{#4}}
\newcommand\@MHSCNama{\@latex@error{Data "Mahasiswa 3" belum lengkap}\@ehc}
\newcommand\@MHSCNIM{\@latex@error{Data "Mahasiswa 3" belum lengkap}\@ehc}
\newcommand\@MHSCProdiKonsentrasi{\@latex@error{Data "Mahasiswa 3" belum lengkap}\@ehc}
\newcommand\@MHSCEmail{\@latex@error{Data "Mahasiswa 3" belum lengkap}\@ehc}

%% Data mahasiswa capstone : Mahasiswa 4
\newcommand\MHSD[4]{\renewcommand\@MHSDNama{#1}
\renewcommand\@MHSDNIM{#2}
\renewcommand\@MHSDProdiKonsentrasi{#3}
\renewcommand\@MHSDEmail{#4}}
\newcommand\@MHSDNama{\@latex@error{Data "Mahasiswa 4" belum lengkap}\@ehc}
\newcommand\@MHSDNIM{\@latex@error{Data "Mahasiswa 4" belum lengkap}\@ehc}
\newcommand\@MHSDProdiKonsentrasi{\@latex@error{Data "Mahasiswa 4" belum lengkap}\@ehc}
\newcommand\@MHSDEmail{\@latex@error{Data "Mahasiswa 4" belum lengkap}\@ehc}

%% Data mahasiswa capstone : Mahasiswa 5
\newcommand\MHSE[4]{\renewcommand\@MHSENama{#1}
\renewcommand\@MHSENIM{#2}
\renewcommand\@MHSEProdiKonsentrasi{#3}
\renewcommand\@MHSEEmail{#4}}
\newcommand\@MHSENama{\@latex@error{Data "Mahasiswa 5" belum lengkap}\@ehc}
\newcommand\@MHSENIM{\@latex@error{Data "Mahasiswa 5" belum lengkap}\@ehc}
\newcommand\@MHSEProdiKonsentrasi{\@latex@error{Data "Mahasiswa 5" belum lengkap}\@ehc}
\newcommand\@MHSEEmail{\@latex@error{Data "Mahasiswa 5" belum lengkap}\@ehc}

%% Data dosen pembimbing
\newcommand\DPA[2]{\renewcommand\@DPANama{#1}
\renewcommand\@DPANIP{#2}}
\newcommand\@DPANama{\@latex@error{Data "Dosen Pembimbing" belum lengkap}\@ehc}
\newcommand\@DPANIP{\@latex@error{Data "Dosen Pembimbing" belum lengkap}\@ehc}

%% Tempat pelaksanaan
\newcommand\Tempat[1]{\renewcommand\@Tempat{#1}}
\newcommand\@Tempat{\@latex@error{Data "Tempat Pelaksanaan" belum diinputkan}\@ehc}

%% Memperbarui command "maketitle" untuk membuat halaman judul hingga catatan revisi dokumen 
\renewcommand\maketitle{%
    %%% Pengaturan caption gambar, tabel, dan algoritma
    \captionsetup[figure]{labelfont={default},labelformat={default},labelsep=period,name={Gambar }}
    \captionsetup[table]{labelfont={default},labelformat={default},labelsep=period,name={Tabel }}
    \captionsetup[algorithm]{labelfont={bf},labelformat={default},labelsep=period,name={Algoritma }}
    
 	\let\footnotesize\normalsize
	\let\footnoterule\relax
	\let\footnote\thanks
	
	\global\let\thanks\relax
	\global\let\maketitle\relax
	\global\let\@thanks\@empty
	\global\let\@author\@empty
	\global\let\@date\@empty
	\global\let\title\relax
	\global\let\author\relax
	\global\let\date\relax
	\global\let\and\relax
  

	%%% <<<<<<<<<<<<<<<<<<<<<[ COVER ]>>>>>>>>>>>>>>>>>>>>>
	\clearpage
	\frontmatters
	\begin{center}%
		{\Large {\MakeUppercase{\textbf{\@judul}}} \par}%
		\vskip 5mm
		{\Large {\textbf{DOKUMEN C-251}} \par}%
		\vskip 15mm%
		
		\includegraphics[width=85mm]{Logo_UGM.pdf}
		\vskip 10mm%
		
		\singlespacing
		{\large {\textbf{Disusun Oleh :}} \par}%
		\vskip 5mm%
		
		\begin{table}[!ht]
			\begin{center}
			\begin{tabular}{l C{1cm} l}
				{\large {\textbf{\@MHSANama}} }	&	{}	&
				{\large {\textbf{\@MHSANIM}} }		\\
				{\large {\textbf{\@MHSBNama}} }	&	{}	&
				{\large {\textbf{\@MHSBNIM}} }		\\
				{\large {\textbf{\@MHSCNama}} }	&	{}	&
				{\large {\textbf{\@MHSCNIM}} }		\\
				{\large {\textbf{\@MHSDNama}} }	&	{}	&
				{\large {\textbf{\@MHSDNIM}} }		\\
				{\large {\textbf{\@MHSENama}} }	&	{}	&
				{\large {\textbf{\@MHSENIM}} }		\\
			\end{tabular}
			\end{center}
		\end{table}
		\vskip 15mm%
		
		\onehalfspacing
		{\large {\textbf{DOKUMENTASI \textit{CAPSTONE PROJECT}}} \par}%
		{\large {\textbf{DEPARTEMEN TEKNIK ELEKTRO DAN TEKNOLOGI INFORMASI}} \par}%
		{\large {\textbf{FAKULTAS TEKNIK}} \par}%
		{\large {\textbf{UNIVERSITAS GADJAH MADA}} \par}%
		{\large {\textbf{\number\year}}}%
	\end{center}\par
  	

  	%%% <<<<<<<<<<<<<<<<<<<<<[ HALAMAN PENGESAHAN ]>>>>>>>>>>>>>>>>>>>>>
  	\clearpage
  	\preface
	\addcontentsline{toc}{chapter}{HALAMAN PENGESAHAN}
	\setcounter{page}{2}%
	\begin{center}
		\begin{small}
			{\large {\textbf{HALAMAN PENGESAHAN}} \par}%
    		% \vskip 2em%
    		
    		\begin{table}[!ht]
			\begin{center}
			\setlength{\tabcolsep}{2pt}	% Control the horizontal cell margin
			\setlength{\extrarowheight}{0.5mm}
			\begin{tabular}{|C{0.6cm} L{5.0cm} C{0.2cm} p{10.0cm}|}
				\hline
					{1.}								&
					{USULAN JUDUL}				        &
					{:}									&
					{\@judul}							\\
					
					{ }									&
					{ }									&
					{:}									&
					{\textit{\@title}}					\\
				\hline
					{2.}								&
					{JENIS DOKUMEN}						&
					{:}									&
					{PERANCANGAN PRODUK DAN SPESIFIKASI}\\
				\hline
					{3.}								&
					{KODE DOKUMEN}						&
					{:}									&
					{C-251}							    \\
				\hline
					{4.}								&
					{NOMOR DOKUMEN}						&
					{:}									&
					{C-251-\@NoDok}							\\
				\hline
					{5.}								&
					{NOMOR REVISI}						&
					{:}									&
					{\@NoRev}							\\
				\hline
					{6.}								&
					{TANGGAL PENERBITAN}				&
					{:}									&
					{\protect\foreignlanguage{bahasa}{\today}}  \\
				\hline
					{7.}								&
					{KETUA KELOMPOK}					&
					{ }									&
					{\hspace{7.0cm} Tanda Tangan :}		\\
					
					{ }									&
					{a. Nama Lengkap}					&
					{:}									&
					{\@MHSANama}						\\
					
					{ }									&
					{b. NIM}							&
					{:}									&
					{\@MHSANIM}						    \\
					
					{ }									&
					{c. Prodi}				&
					{:}									&
					{\@MHSAProdiKonsentrasi}			\\
					
					{ }									&
					{d. Email}				&
					{:}									&
					{\@MHSAEmail}			            \\
				\hline
					{8.}								&
					{ANGGOTA 1}					        &
					{ }									&
					{\hspace{7.0cm} Tanda Tangan :}		\\
					
					{ }									&
					{a. Nama Lengkap}					&
					{:}									&
					{\@MHSBNama}						\\
					
					{ }									&
					{b. NIM}							&
					{:}									&
					{\@MHSBNIM}						    \\
					
					{ }									&
					{c. Prodi}				&
					{:}									&
					{\@MHSBProdiKonsentrasi}			\\
					
					{ }									&
					{d. Email}				&
					{:}									&
					{\@MHSBEmail}			            \\
				\hline
					{9.}								&
					{ANGGOTA 2}					        &
					{ }									&
					{\hspace{7.0cm} Tanda Tangan :}		\\
					
					{ }									&
					{a. Nama Lengkap}					&
					{:}									&
					{\@MHSCNama}						\\
					
					{ }									&
					{b. NIM}							&
					{:}									&
					{\@MHSCNIM}						    \\
					
					{ }									&
					{c. Prodi}				&
					{:}									&
					{\@MHSCProdiKonsentrasi}			\\
					
					{ }									&
					{d. Email}				&
					{:}									&
					{\@MHSCEmail}			            \\
				\hline
					{10.}								&
					{ANGGOTA 3}					        &
					{ }									&
					{\hspace{7.0cm} Tanda Tangan :}		\\
					
					{ }									&
					{a. Nama Lengkap}					&
					{:}									&
					{\@MHSDNama}						\\
					
					{ }									&
					{b. NIM}							&
					{:}									&
					{\@MHSDNIM}						    \\
					
					{ }									&
					{c. Prodi}				&
					{:}									&
					{\@MHSDProdiKonsentrasi}			\\
					
					{ }									&
					{d. Email}				&
					{:}									&
					{\@MHSDEmail}			            \\
				\hline
					{11.}								&
					{ANGGOTA 4}					        &
					{ }									&
					{\hspace{7.0cm} Tanda Tangan :}		\\
					
					{ }									&
					{a. Nama Lengkap}					&
					{:}									&
					{\@MHSENama}						\\
					
					{ }									&
					{b. NIM}							&
					{:}									&
					{\@MHSENIM}						    \\
					
					{ }									&
					{c. Prodi}				&
					{:}									&
					{\@MHSEProdiKonsentrasi}			\\
					
					{ }									&
					{d. Email}				&
					{:}									&
					{\@MHSEEmail}			            \\
				\hline
					{12.}								&
					{DOSEN PEMBIMBING}				    &
					{ }									&
					{\hspace{7.0cm} Tanda Tangan :}		\\
					
					{ }									&
					{a. Nama Lengkap}					&
					{:}									&
					{\@DPANama}							\\
					
					{ }									&
					{b. NIP}							&
					{:}									&
					{\@DPANIP}							\\
				\hline
					{13.}								&
					{TEMPAT PELAKSANAAN}				&
					{:}									&
					{\@Tempat}							\\
				\hline
					{14.}								&
					{JUMLAH HALAMAN}					&
					{:}									&
					{\pageref{LastPage}}				\\
				\hline
			\end{tabular}
			\end{center}
			\end{table}		
		\end{small}
	\end{center} \par
	

	%%% <<<<<<<<<<<<<<<<<<<<<[ BUKTI BEBAS PLAGIASI ]>>>>>>>>>>>>>>>>>>>>>
	\newpage
	\addcontentsline{toc}{chapter}{BUKTI BEBAS PLAGIASI}
	\begin{center}%
	    {\large {\textbf{BUKTI BEBAS PLAGIASI}} \par}%
	    
		\vskip 10mm%
		
		\includegraphics[width=\textwidth, frame]{Bukti_Bebas_Plagiasi.pdf}%
	\end{center} \par
	
    
	%%% <<<<<<<<<<<<<<<<<<<<<[ DAFTAR ISI, DAFTAR GAMBAR, DAFTAR TABEL ]>>>>>>>>>>>>>>>>>>>>>
	%%%% Pengaturan judul TOC, LOF, dan LOT
    \renewcommand{\contentsname}{{\uppercase{Daftar Isi}}}
    \renewcommand{\listfigurename}{{\uppercase{Daftar Gambar}}}
    \renewcommand{\listtablename}{{\uppercase{Daftar Tabel}}}
    
    %%%% Mengganti nama chapter untuk Daftar Pustaka
    \renewcommand\bibname{REFERENSI}

	\onehalfspacing{
    	%%%%% Daftar Isi
    	\newpage
    	\chapter*{ }
    	\centering
    	\vspace*{-5.5em}	% Pengaturan jarak vertikal judul TOC dari atas kertas
    	\tableofcontents
    
    	%%%%% Daftar Gambar
    	\newpage
    	\chapter*{ }
    	\centering
    	\vspace*{-5.5em}	% Pengaturan jarak vertikal judul LOF dari atas kertas
    	\listoffigures
    
    	%%%%% Daftar Tabel
    	\newpage
    	\chapter*{ }
    	\centering
    	\vspace*{-5.5em}	% Pengaturan jarak vertikal judul LOT dari atas kertas
    	\listoftables
    }
    

    %%% <<<<<<<<<<<<<<<<<<<<<[ CATATAN REVISI ]>>>>>>>>>>>>>>>>>>>>>
    \begin{revisi}
        \noindent
    	\begin{longtable}{|D{1.5cm} | D{2.5cm} | M{11cm}|}
    		\hline
    			\textbf{VERSI}	& 
    			\textbf{TANGGAL} &
    			\multicolumn{1}{|D{11cm}|}{\textbf{PERBAIKAN}} \\
    		\hline
    		    %%%% Catatan Revisi Ke-0
    			\input{revision_notes/example/Revisi_00.tex}	% Catatan pembuatan dokumen
                \\
                \hline
				%
    			%%%% Catatan Revisi Ke-1 dan seterusnya
    			\ifnum\@NoRev>0
    			    \input{revision_notes/example/Revisi_01.tex}	% Rincian perbaikan versi ke-1
                    \\
                    \hline
    			\fi
    			\ifnum\@NoRev>1
    			    \input{revision_notes/example/Revisi_02.tex}	% RincianpPerbaikan versi ke-2
                    \\
                    \hline
    			\fi
    			\ifnum\@NoRev>2
    			    \input{revision_notes/example/Revisi_03.tex}	% Rincian perbaikan versi ke-3
                    \\
                    \hline
    			\fi
    			\ifnum\@NoRev>3
    			    \input{revision_notes/example/Revisi_04.tex}	% Rincian perbaikan versi ke-4
                    \\
                    \hline
    			\fi
    			\ifnum\@NoRev>4
    			    \input{revision_notes/example/Revisi_05.tex}	% Rincian perbaikan versi ke-5
                    \\
                    \hline
    			\fi
    			\ifnum\@NoRev>5
    			    \input{revision_notes/example/Revisi_06.tex}	% Rincian perbaikan versi ke-6
                    \\
                    \hline
    			\fi
    			\ifnum\@NoRev>6
    			    \input{revision_notes/example/Revisi_07.tex}	% Rincian perbaikan versi ke-7
                    \\
                    \hline
    			\fi
    			\ifnum\@NoRev>7
    			    \input{revision_notes/example/Revisi_08.tex}	% Rincian perbaikan versi ke-8
                    \\
                    \hline
    			\fi
    			\ifnum\@NoRev>8
    			    \input{revision_notes/example/Revisi_09.tex}	% Rincian perbaikan versi ke-9
                    \\
                    \hline
    			\fi
    	\end{longtable}	
    \end{revisi}
    

    %%% <<<<<<<<<<<<<<<<<<<<<[ INTISARI ]>>>>>>>>>>>>>>>>>>>>>
    \begin{intisari}
        \setlength{\parindent}{20pt}
    	\input{contents/example/Intisari.tex}
    \end{intisari}
    
    % Memulai style page numbering yang baru
    \clearpage
    \contents
}



% ================[ ENVIRONMENT SETTINGS ]================
%% Setting environment baru : Catatan Revisi Dokumen
\newenvironment{revisi}{%
	\newpage
	\addcontentsline{toc}{chapter}{CATATAN REVISI DOKUMEN}
	\@beginparpenalty\@lowpenalty
	\begin{center}%
		\bfseries \large\textbf{CATATAN REVISI DOKUMEN}
		\@endparpenalty\@M
	\end{center}}%
{\par\vfil\null}

%% Setting environment baru : Intisari
\newenvironment{intisari}{%
	\newpage
	\addcontentsline{toc}{chapter}{INTISARI}
	\singlespacing
	\@beginparpenalty\@lowpenalty
	\begin{center}%
		\bfseries \large\textbf{INTISARI}
		\@endparpenalty\@M
	\end{center}}%
{\par\vfil\null}

%% Setting enviroment baru : Ringkasan Eksekutif
\newenvironment{ringkasan}{%
	\newpage
	\addcontentsline{toc}{chapter}{RINGKASAN EKSEKUTIF}
	\@beginparpenalty\@lowpenalty
	\begin{center}%
		\bfseries \large\textbf{RINGKASAN EKSEKUTIF}
		\@endparpenalty\@M
	\end{center}}%
{\par\vfil\null}

%% Mengganti gaya penomoran bab dan subbab 
\renewcommand{\thechapter}{BAB \arabic{chapter}}
\renewcommand{\thesection}{\arabic{chapter}.\arabic{section}}
\renewcommand{\thesubsection}{\arabic{chapter}.\arabic{section}.\arabic{subsection}}

%% Mengganti page numbering setting
% Menghilangkan nomor halaman pada cover
\newcommand\frontmatters{\pagestyle{empty}}
% Memulai nomor halaman pada halaman pengesahan
\newcommand\preface{\pagestyle{fancymod} \pagenumbering{roman} \doublespacing}
% Memulai nomor laporan pada isi laporan
\newcommand\contents{\pagestyle{fancymod} \pagenumbering{arabic} \onehalfspacing}

%% Mengganti gaya title bab dan subbab
\titleformat{\chapter}[block]
{\bfseries\filcenter\large}{\thechapter}{0.5em}{\\ \MakeUppercase}
\titleformat{\section}[hang]
{\bfseries}{\thesection}{0.5em}{}
\titleformat{\subsection}[hang]
{\bfseries}{\thesubsection}{0.5em}{}