#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#Hotstring c r
;-------------------------------------------HOT KEYS-------------------------------------------- 

#t::
 Run, "C:\Program Files\WindowsApps\Microsoft.WindowsTerminal_1.12.10982.0_x64__8wekyb3d8bbwe\wt.exe"
 return

#b::
 Run, "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\firefox"
 return

#o::
 Run, "C:\Users\PhuocMinh\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\obsidian"
 return

#q::
{
 Send, ^c
 Sleep 50
 Run, https://www.google.com/search?q=%clipboard%
 return
}

#j::
Run, "C:\Users\PhuocMinh\Downloads"
return

#d::
Run, "C:\Users\PhuocMinh\Desktop"
return

#s::
Run, "C:\Users\PhuocMinh\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"
return

!Capslock::
Send, $
return

;-------------------------------------------HOT STRINGS--------------------------------------------	

;---------------GENERAL-----------------


:*:]u::<u></u>

:*:]c::<center></center>
	
:*:]lorem::
(
Lorem ipsum dolor sit amet, consectetur adipiscing elit,
sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
)

:*:]Sep::------------------------------------------- --------------------------------------------

:*:]sep::--------------- -----------------

:*:]app::%appdata%

:*:]d::  ; This hotstring replaces "]d" with the current date and time via the commands below.
FormatTime, CurrentDateTime,, dd/MM/yyyy ;It will look like 9/1/2005 3:53 PM
SendInput %CurrentDateTime%
return

;The Offset variable controls pointer speed
;Ctrl + Arrow keys = move mouse
;Ctrl + comma = left click
;Ctrl + period = right click

#SingleInstance force

Offset = 20

;^Up::MouseMove, 0, (Offset * -1), 0, R
;^Down::MouseMove, 0, Offset, 0, R
;^Left::MouseMove, (Offset * -1), 0, 0, R
;^Right::MouseMove, Offset, 0, 0, R
#/::click right

;This allows to press and hold the left mouse button instead of just clicking it once. Needed for drag and drop operations.
;snippet by x79animal at https://autohotkey.com/board/topic/59665-key-press-and-hold-emulates-mouse-click-and-hold-win7/
;#,::
;   If (A_PriorHotKey = A_ThisHotKey)
;   return
;click down
return
;#, up::click up

;-------------------------------------------LATEX STUFF--------------------------------------------	

:*:/Cos::\,\text{cosh}\,

:*:/Sin::\,\text{sinh}\,

:*:/Tan::\,\text{tanh}\,

:*:/ln::\,\text{ln}\,

:*:/lhos::L'Hôpital's rule

:*:/cos::\,\text{cos}\,

:*:/sin::\,\text{sin}\,

:*:/tan::\,\text{tan}\,

:*:/cot::\,\text{cot}\,

:*:/sec::\,\text{sec}\,

:*:/cosec::\,\text{csc}\,

:*:/arcsin::\,\text{arcsin}\,

:*:/disp::\displaystyle{}

:*:/sum::\sum_{}^

:*:/lim::\lim_{to}

:*:/pmat::
(
\begin{pmatrix}
   &   &   \\ 
   &   &   \\ 	  
\end{pmatrix}
)

:*:/bmat::
(
\begin{pmatrix}
   &   &   \\ 
   &   &   \\ 	  
\end{pmatrix}
)

:*:/fr::\displaystyle{\frac{}{}}

:*:/case::
(
\begin{cases}
     &   \\ 
     &   \\
end{cases}
)

:*:/align::
(
\begin{aligned}
  &=  \\ 
  &=
\end{aligned}
)

:*:/binom::\displaystyle{\binom{}{}}

:*:/big|::\bigg|

:*:/|::\middle|

:*:/bZ::\mathbb{Z}

:*:/bQ::\mathbb{Q}

:*:/bR::\mathbb{R}

:*:/bC::\mathbb{C}

:*:/bH::\mathbb{H}

:*:/bK::\mathbb{K}

:*:/cZ::\mathcal{Z}

:*:/cQ::\mathcal{Q}

:*:/cR::\mathcal{R}

:*:/cC::\mathcal{C}

:*:/cH::\mathcal{H}

:*:/cV::\mathcal{V}

:*:/cL::\mathcal{L}

:*:/cK::\mathcal{K}

:*:/F[::F[x_1,\ldots,x_n]

:*:/<-::\leftarrow

:*:/< -::\Leftarrow

:*:/<->::\leftrightarrow

:*:/< ->::\Leftrightarrow

;-------------------------------------------MAPLE-------------------------------------------- 

;---------------General----------------- 
:*:m..::cmaple.exe

:*:m.cls::macro(cls=system(cls)):


;---------------LinearAlgebra----------------- 

:*:m.la::with(LinearAlgebra):

:*:m.st.la::with(Student[LinearAlgebra]):

:*:m.svd::
(
with(MTM)
U, S, V := svd
)

:*:m.projmat::ProjectionMatrix(

:*:m.eigen::e,v:=Eigenvectors(

:*:m.det::Determinant(

:*:m.inv::MatrixInverse(

:*:m.mat2::<<|>,<|>>

:*:m.mat3::<<||>,<||>,<||>>

:*:m.GS::
(
with(Student[LinearAlgebra]):
GS := GramSchmidt([,]]
)

:*:m.tt.eigen::EigenPlotTutor(

;-------------------------------------------CALCULUS-------------------------------------------- 
:*:m.st.cal::with(Student[Calculus1]):

:*:m.tt.diff::DiffTutor(

:*:m.tt.curve::CurveAnalysisTutor(

:*:m.tt.arc::ArcLengthTutor(

:*:m.tt.deri::DerivativeTutor(

:*:m.tt.inv::InverseTutor(


;-------------------------------------------ALGEBRAIC GEOMETRY----------------------------------

:*:m.grob::with(Groebner):



;-------------------------------------------JUPYTER-LAB-----------------------------------------

:*:jl..::jupyter-lab


;-------------------------------------------MANIM MAGIC-----------------------------------------

:*:manim.nb.conf::
(
%%manim -ql
config.media_width = "75%"
config.verbosity = "WARNING"
)



 









