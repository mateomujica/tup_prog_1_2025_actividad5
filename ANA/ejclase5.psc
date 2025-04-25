Algoritmo sin_titulo
	
	Definir prod, lineas, aceptados, rechazados como Entero;
	Definir kcal,carbo,grasas,fibra,sodio,porccarbo,porcgrasa,porcfibra,porcsodio como Real;
	Definir i como Entero;
	Definir bandera como Logico;
	
	
	
	
	Escribir "Ingrese cant de prod";
	Leer prod;
	
	Para i=0 Hasta prod-1 con Paso 1 Hacer 
		
		bandera=Verdadero;
		lineas=1;
		
		
		Mientras bandera Hacer
			
			
			Segun lineas Hacer
				
				1: Escribir "Ingrese calorias del producto"; 
					leer kcal; 
					
					Si kcal>=100 y kcal<=200 Entonces 
						lineas=lineas+1;
					SiNo
						bandera=Falso;
					FinSi
				2:Escribir "Ingrese carbos";
					Leer carbo;
					porccarbo=trunc(carbo/100*100);
					Si porccarbo>=0 y porccarbo<=15 Entonces
						lineas=lineas+1;
					SiNo 
						bandera=Falso;
					FinSi
				3:Escribir "Ingrese grasas";
					Leer grasas;
					porcgrasa=trunc(grasas/100*100);
					Si grasas>=1 y grasas<=13 Entonces
						lineas=lineas+1;
					SiNo 
						bandera=Falso;
					FinSi
				4: Escribir "Ingrese fibra";
					Leer fibra;
					porcfibra=trunc(fibra/100*100);
					Si fibra>=0 y fibra<=15 Entonces
						lineas=lineas+1;
					SiNo 
						bandera=Falso;
					FinSi
				De Otro Modo:
					Escribir "Ingrese sodio";					
					leer sodio; 
					porcfibra=trunc(fibra/100*100);
					Si sodio>=0 o sodio<=2 Entonces
						lineas=lineas+1;
					SiNo 
						bandera=Falso;
					FinSi
					
			FinSegun
			
			Si bandera=Falso Entonces
				rechazados=rechazados+1;
			FinSi
			
			Si lineas == 5 Entonces
				bandera=Falso;
			FinSi
			
			
		Fin Mientras
	FinPara
	
	aceptados=prod-rechazados; 
	Escribir "Numero de productos aceptados: ",aceptados; 
	Escribir "Numero de rechazados: ",rechazados;
	
	
	
FinAlgoritmo
