Algoritmo Desfio5
	definir cadenaV, matriz Como Caracter
	definir tam Como Entero
	definir genZ Como Logico
	
	tam=0
	genZ=Falso
	
	cadenaV="ADDDABBDD"

	//cadenaV="ABCDABADA"
	tamanoMatriz(cadenaV, tam)
	escribir tam
	dimension matriz[tam, tam]
	llenaMatriz(matriz, cadenaV, tam)
	evaluarDiagonales(matriz, tam, genZ)
	escribir genZ

FinAlgoritmo

SubProceso tamanomatriz(cadenaV, tam por referencia) 
	definir long Como Entero
	
	tam=trunc(raiz(longitud(cadenaV)))
	
FinSubProceso

subproceso llenaMatriz(matriz Por Referencia, cadenaV, tam)
	definir i, j, k Como Entero
	definir carac Como Caracter
	
	k=0
	para i<-0 hasta tam-1 Hacer
		para j<-0 hasta tam-1 Hacer
			matriz[i,j]= subcadena(cadenaV, k, k)
			escribir sin saltar matriz[i,j] " "
			k=k+1
		FinPara
		escribir ""
	FinPara
FinSubProceso

subproceso evaluarDiagonales(matriz, tam, genZ Por Referencia)
	definir i, j, c, contA, contB Como Entero
	definir vectorA, vectorB Como Caracter
	dimension vectorA[tam], vectorB[tam]
	
	contA=0
	contB=0
	//Evaluar diagonal principal
	para i<-0 hasta tam-1 Hacer
		para j<-0 hasta tam-1 Hacer
			si i=j Entonces
				vectorA[i] = matriz[i,j]
			FinSi
		FinPara
	FinPara
	
	Para i<-0 hasta tam-1 hacer
		si i+1<=tam-1 Entonces
			si vectorA[i]==vectorA[i+1] y i<tam-1
				contA=contA+1
				escribir contA
			FinSi
		finsi
	FinPara
	
	//Diagonal secundaria
	c=tam-1
	para i<-0 hasta tam-1 Hacer
		vectorB[i]=matriz[i,c]
		c=c-1
	FinPara
	
	Para i<-0 hasta tam-1 hacer
		si i+1<=tam-1 Entonces
			si vectorB[i]=vectorB[i+1] y i<tam-1
				contB=contB+1
				escribir contB
			FinSi
		finsi
	FinPara

	si contA==tam-1 y contB==tam-1 Entonces
		genz=Verdadero
	SiNo
		genZ=Falso
	FinSi
	
FinSubProceso
