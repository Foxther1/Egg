Algoritmo Ejercicio_Integrador_Zombie
	definir matriz,muestra Como Caracter
	definir largoMuestra,m,i,j Como Entero
	definir validar Como Logico
	
	muestra = "CCADDBACCDDDDBDBCCABBAABDBCDCADDABABCDCDDABBBCABBABBDCADCCDABDDACDBBBDBDCCDDCABCAAAACDCDCCACDCDDADAADDACBDBCCDDBCBCBBAAADDAADCAABBBCBCCBCBDBCCBBCBABADAACDBDBADCBBACDADAADABBDBDBDBDCCDDCABCCCCCADBBBBCCDACCBBBDBDAADDBCCBCCBCBDDDDCCBAAACDDBBCAABAADABBBCCCCDCCBBDCDABCDACBCBACDBCCDABDBDCDCADCCBBADDBDCCADCCDCCACCDCDBCDBBADBAADBBCAADDABCAADADAABAACCBABDADADADDBCABDCCBBAADDDCDDCBADBCACCAAADCCDDABDBACBCAAADDBADBDACDDBDCBDCCCDDCACBCCCACCCCBACBAAAAACBCBCDAADCAACBCABDDABCBCBACCADABBBABBBBBAACADDDDBABACADAAABDDDCCDCACAACACADADBABACBABDBBADCDBBDACDCAABCADDBDBDCAABDCDABDDADDCDDBCBCDADCDBBDACABCDAABBCBADDDBCBADCABACDCABBCBCBCBCADBABBDBCCCADCADDCBABBDDDBBCBCDABACDDDABCCDBACCBDBADADDDAAACBDCDCCAACBDDCDCBADACDDDDBDCBAACDADBBDBDBCCACADBAABBAADAADDDACDDCDBDDBBDAADDAACCCACDBBBBBDCDCDDDABBCBAAADACADDCDCDCBCDCACAAABCADBDBBDDACCBBDABDDBCADCCCADDCDBACBBBDAADDCDAAADBBCDADBDBCBDDCAABCCDCCDCABCAACADADAACADDBBDABAABACDACDCDBBDDCCBCBCAAACBDBDBBBDBDBBCADCBACDCCBDACBBACBCADCDBACCADCDBDCDBBACBBCDCAAAAABCCDDCDDBBCBABCBCAABDBCCACBABDCABAACBDBDBCCCCADBBCDCCCAABADBACDDBADCDCAADDDCBDDBDCDCCCCCCCDBCDDBACBBCDACDADCACBDBBCCCDCCBCBCDACBDDDACCCAADBDBBDADDCCDDDBCDABCCBACCCCCBAACCBCABAAABBCABBCACCCABCDACBCDBDACACDDCACBCBBCCADABCBBDDABADDAAABACCBDCDABCBBBBACCDABAACDCACCCBBCDDACCDBCBCBAACBBBBADBCBCDABAAAABADAAAACDACADACDBBCCABADDDCACDCAACCDABBDBDAABADDBDCCCACDADBDDDCBBCBDCADCBCDAABDDDDBBBBCDDCC"
	largoMuestra=Longitud(muestra)
	validar=Falso
	
	segun largoMuestra hacer
		9:
			m=3
		16:
			m=4
		1369:
			m=37
		De Otro Modo:
			escribir "La muestra no es de 9,16 o 1369 caracteres, muestra no valida"
			
	FinSegun
	
	Dimension matriz(m,m)
	
	rellenarMatriz(matriz,m,muestra)
	verificarMatriz(matriz,m,validar)
	
	para i = 0 hasta m-1 Hacer
		para j=0 hasta m-1  Hacer
			Escribir Sin Saltar "[",matriz(i,j), "]"
		FinPara
		escribir ""
	FinPara
	escribir ""
	Escribir validar
	
	
FinAlgoritmo


SubProceso rellenarMatriz(matriz,m,muestra)
	definir i,j,k Como Entero
	
	k=0
	para i= 0 hasta m-1 Hacer
		para j=0 hasta m-1 Hacer
			matriz(i,j)= Subcadena(muestra,k,k)
			k=k+1
		FinPara
	FinPara
	
FinSubProceso


SubProceso verificarMatriz(matriz,m,validar Por Referencia)
	definir i,j,l,numeroCarga Como Entero
	definir comp1,comp2,carga Como Caracter
	definir cantidadPaso Como Real
	
	comp1=matriz(0,0)
	comp2=matriz(0,m-1)
	carga=""
	numeroCarga=0
	para i=0 hasta m-1 Hacer
		para j=0 hasta m-1 Hacer
			si i=j Entonces
				si comp1 = matriz(i,j) Entonces
					validar = Verdadero
				SiNo
					validar = Falso
					j=m
					i=m
				FinSi
			FinSi
		FinPara
	FinPara
	
	
	para i=0 hasta m-1 Hacer
		para j=0 hasta m-1 Hacer
			si m-1-i=j Entonces
				si comp2 = matriz(i,j) y validar=Verdadero Entonces
					validar = Verdadero
				SiNo
					validar = Falso
					j=m
					i=m
				FinSi
			FinSi
			
		FinPara
		

	FinPara
	
	para i=0 hasta 100 Con Paso 2 Hacer
		Limpiar Pantalla
		escribir "                 Cargando Muestra"
		escribir carga
		carga=Concatenar(carga,"/")
		escribir "                       ",i," %"
		esperar 500 Milisegundos
	FinPara
	
	
FinSubProceso
	