Algoritmo Ejercicio_extra_5
	Definir a, frase como caracter
	Definir i,long Como Entero
	Dimension a[20]
	Escribir "Ingrese una frase."
	Leer frase
	long=Longitud(frase)
	Para i<-0 Hasta 19 Con Paso 1 Hacer
		a[i]=subcadena(frase,i,i)
	Fin Para
	ingresar_letra(a,frase)
FinAlgoritmo

SubProceso ingresar_letra(a Por Referencia,frase)
	Definir letra, x,z Como Caracter
	Definir long, posic, i,j,k,m como entero
	Hacer
		Escribir "Ingresar una letra."
		Leer letra
		long=longitud(letra)
		Si long>1 Entonces
			Escribir "Ingrese solo una letra, no una palabra."
		Fin Si
	Mientras Que long<>1
	Escribir "Ingrese la posición donde poner la letra"
	leer posic
	long=longitud(frase)
	i=posic-1
	j=posic-1
	// k and M are values to reserve the closest blank space of i, to the left; and of j, to the right. The point is to rest this values from the
	// position value to check the closest blank space and use it.
	k=0
	m=0
	Si a[posic-1]==" " o a[posic-1]=="" Entonces
		a[posic-1]<-letra
	SiNo
		Hacer
			Si a[i]==" " o a[i]=="" Entonces
				k=i
				i=0
			SiNo
				Si a[j]==" " o  a[j]=="" Entonces
					m=j
					j=0
				SiNo
					Si i==0 Entonces
						j=j+1
					SiNo
						Si j==0 Entonces
							i=i-1
						SiNo
							j=j+1
							i=i-1
						Fin Si
					Fin Si
				Fin Si
			Fin Si
		Mientras Que i<>0 o j<>0
		Si (posic-1)-k<m-(posic-1) Entonces
			x<-a[posic-1]
			a[posic-1]<-letra
			i=posic-2
			Hacer
				z<-a[i]
				a[i]<-x
				x<-z
				i=i-1
			Mientras Que i>=0
			a[posic-1]<-letra
		SiNo
			x<-a[posic-1]
			a[posic-1]<-letra
			Para i<-posic Hasta 19 Con Paso 1 Hacer
				z<-a[i]
				a[i]<-x
				x<-z
			Fin Para
		Fin Si
	Fin Si
	Para i<-0 Hasta 19 Con Paso 1 Hacer
		Escribir sin saltar a[i]
	Fin Para
	Escribir " "
FinSubProceso
	