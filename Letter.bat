if %1==97 set L!char!=a
if %1==65 set L!char!=A
if %1==98 set L!char!=b
if %1==66 set L!char!=B
if %1==99 set L!char!=c
if %1==67 set L!char!=C
if %1==100 set L!char!=d
if %1==68 set L!char!=D
if %1==101 set L!char!=e
if %1==69 set L!char!=E
if %1==102 set L!char!=f
if %1==70 set L!char!=F
if %1==103 set L!char!=g
if %1==71 set L!char!=G
if %1==104 set L!char!=h
if %1==72 set L!char!=H
if %1==105 set L!char!=i
if %1==73 set L!char!=I
if %1==106 set L!char!=j
if %1==74 set L!char!=J
if %1==107 set L!char!=k
if %1==75 set L!char!=K
if %1==108 set L!char!=l
if %1==76 set L!char!=L
if %1==109 set L!char!=m
if %1==77 set L!char!=M
if %1==110 set L!char!=n
if %1==78 set L!char!=N
if %1==111 set L!char!=o
if %1==79 set L!char!=O
if %1==112 set L!char!=p
if %1==80 set L!char!=P
if %1==113 set L!char!=q
if %1==81 set L!char!=Q
if %1==114 set L!char!=r
if %1==82 set L!char!=R
if %1==115 set L!char!=s
if %1==83 set L!char!=S
if %1==116 set L!char!=t
if %1==84 set L!char!=T
if %1==117 set L!char!=u
if %1==85 set L!char!=U
if %1==118 set L!char!=v
if %1==86 set L!char!=V
if %1==119 set L!char!=w
if %1==87 set L!char!=W
if %1==120 set L!char!=x
if %1==88 set L!char!=X
if %1==121 set L!char!=y
if %1==89 set L!char!=Y
if %1==122 set L!char!=z
if %1==90 set L!char!=Z
if %1==48 set L!char!=0
if %1==49 set L!char!=1
if %1==50 set L!char!=2
if %1==51 set L!char!=3
if %1==52 set L!char!=4
if %1==53 set L!char!=5
if %1==54 set L!char!=6
if %1==55 set L!char!=7
if %1==56 set L!char!=8
if %1==57 set L!char!=9
if %1==32 set "L!char!= "
if %1==96 set L!char!=`
if %1==126 set L!char!=~
if %1==33 set /a char+= -1
if %1==64 set L!char!=@
if %1==35 set L!char!=#
if %1==36 set L!char!=$
if %1==37 set /a char+= -1
if %1==94 set /a char+= -1
if %1==38 set /a char+= -1
if %1==42 set L!char!=*
if %1==40 set L!char!=(
if %1==41 set L!char!=)
if %1==45 set L!char!=-
if %1==61 set L!char!==
if %1==95 set L!char!=_
if %1==43 set L!char!=+
if %1==92 set L!char!=\
if %1==91 set L!char!=[
if %1==93 set L!char!=]
if %1==125 set L!char!=}
if %1==123 set L!char!={
if %1==124 set /a char+= -1
if %1==59 set L!char!=;
if %1==39 set L!char!='
if %1==58 set L!char!=:
if %1==34 set L!char!="
if %1==44 set L!char!=,
if %1==46 set L!char!=.
if %1==47 set L!char!=/
if %1==60 set /a char+= -1
if %1==62 set /a char+= -1
if %1==63 set L!char!=?
if %1==8 (
	set /a char+= -1
	set L!char!= 
	if !char!==0 set /a char+=1
	set /a char+= -1
)
exit /b