Funcion diferencia <- DiferenciaDeArreglo ( arreglo, n )
	Definir  max, min ,diferencia,i Como Entero
	min = arreglo[0];  
	max = 0 ;
	
	Para i<-0 Hasta n-1  Hacer
		si arreglo[i] > max Entonces   
			max = arreglo[i];
		FinSi
		si arreglo[i] < min Entonces
			min = arreglo[i];
		FinSi
		
	Fin Para
	
	diferencia = abs(min - max) ;
Fin Funcion

//Crear una función que devuelva la diferencia que hay entre el valor más chico de un arreglo y
//su valor más grande.


Algoritmo Ex6
	Definir arreglo , n Como Entero
	
	Escribir "Ingrese la dimension del arreglo : ";
	Leer  n ;
	
	Dimension arreglo[n];
	
	llenar(arreglo, n);
	
	escribirArreglo(arreglo,n );
	
	Escribir "La diferencia del minimo y el maximo de este arreglo es :  " DiferenciaDeArreglo(arreglo, n );
	
	
FinAlgoritmo

SubProceso escribirArreglo (arreglo,n )
	Definir i , j , min , max Como Entero
	min= arreglo[0];
	max = 0 ;
	
	Para i<-0 Hasta n-1  Hacer
		si arreglo[i] > max Entonces   
			max = arreglo[i];
		FinSi
		si arreglo[i] < min Entonces
			min = arreglo[i];
		FinSi
		
	Fin Para
	
	
	Escribir min , " ",max ;
	
	Para j<-0 Hasta n-1  Hacer
		Escribir Sin Saltar " [",arreglo[j],"]";
	Fin Para
	
FinSubProceso

SubProceso llenar (arreglo , n ) 
	Definir i Como Entero
	
	Para i<-0 Hasta n - 1  Hacer
		arreglo[i] = Aleatorio(0 , 100);
	Fin Para
FinSubProceso

	