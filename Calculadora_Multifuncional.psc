Proceso Calculadora_Multifuncional
	
	Repetir
		Escribir "=========================================="
		Escribir "       CALCULADORA MULTIFUNCIONAL"
		Escribir "=========================================="
		Escribir "1. Operaciones Básicas"
		Escribir "2. Áreas, Diámetros y Radios"
		Escribir "3. Estadística Básica"
		Escribir "4. Sucesión de Fibonacci"
		Escribir "5. Salir"
		Leer op
		
		Segun op Hacer
			
				// =====================================================
				// 1. OPERACIONES BÁSICAS
				// =====================================================
			1:
				Escribir "OPERACIONES BÁSICAS"
				Escribir "1. Suma"
				Escribir "2. Resta"
				Escribir "3. Multiplicación"
				Escribir "4. División"
				Leer opc
				
				Escribir "Ingrese el primer número:"
				Leer a
				Escribir "Ingrese el segundo número:"
				Leer b
				
				Segun opc Hacer
					1: Escribir "Resultado: ", a + b
					2: Escribir "Resultado: ", a - b
					3: Escribir "Resultado: ", a * b
					4:
						Si b = 0 Entonces
							Escribir "ERROR: No se puede dividir entre 0."
						SiNo
							Escribir "Resultado: ", a / b
						FinSi
					De Otro Modo:
						Escribir "Opción inválida."
				FinSegun
				
				
				// =====================================================
				// 2. ÁREAS, RADIOS Y DIÁMETROS
				// =====================================================
			2:
				Escribir "ÁREAS, DIÁMETROS Y RADIOS"
				Escribir "1. Círculo"
				Escribir "2. Cuadrado"
				Escribir "3. Triángulo"
				Escribir "4. Trapecio"
				Leer fig
				
				Segun fig Hacer
					
						// ---------------- CÍRCULO ----------------
					1:
						Escribir "Ingrese el radio:"
						Leer r
						Si r <= 0 Entonces
							Escribir "ERROR: Radio inválido."
						SiNo
							diametro <- 2 * r
							area <- 3.1416 * r * r
							Escribir "Área: ", area
							Escribir "Diámetro: ", diametro
							Escribir "Radio: ", r
						FinSi
						
						// ---------------- CUADRADO ----------------
					2:
						Escribir "Ingrese el lado:"
						Leer lado
						Si lado <= 0 Entonces
							Escribir "ERROR: Lado inválido."
						SiNo
							area <- lado * lado
							Escribir "Área: ", area
						FinSi
						
						// ---------------- TRIÁNGULO ----------------
					3:
						Escribir "Base:"
						Leer base
						Escribir "Altura:"
						Leer altura
						
						Si base <= 0 O altura <= 0 Entonces
							Escribir "ERROR: Valores inválidos."
						SiNo
							area <- (base * altura) / 2
							Escribir "Área: ", area
						FinSi
						
						// ---------------- TRAPECIO ----------------
					4:
						Escribir "Base mayor:"
						Leer B
						Escribir "Base menor:"
						Leer b
						Escribir "Altura:"
						Leer h
						
						Si B <= 0 O b <= 0 O h <= 0 Entonces
							Escribir "ERROR: Valores inválidos."
						SiNo
							area <- ((B + b) / 2) * h
							Escribir "Área: ", area
						FinSi
						
					De Otro Modo:
						Escribir "Opción inválida."
				FinSegun
				
				
				// =====================================================
				// 3. ESTADÍSTICA: MEDIA, MEDIANA, MODA
				// =====================================================
			3:
				Escribir "¿Cuántos números ingresará?"
				Leer n
				
				Si n <= 0 Entonces
					Escribir "ERROR: n debe ser mayor que 0."
				SiNo
					Dimension nums[n]
					
					Para i <- 1 Hasta n Hacer
						Escribir "Número ", i, ": "
						Leer nums[i]
					FinPara
					
					// MEDIA
					suma <- 0
					Para i <- 1 Hasta n Hacer
						suma <- suma + nums[i]
					FinPara
					media <- suma / n
					
					// ORDENAMIENTO PARA MEDIANA
					Para i<-1 Hasta n-1 Hacer
						Para j<-i+1 Hasta n Hacer
							Si nums[j] < nums[i] Entonces
								aux <- nums[i]
								nums[i] <- nums[j]
								nums[j] <- aux
							FinSi
						FinPara
					FinPara
					
					Si n MOD 2 = 0 Entonces
						mediana <- (nums[n/2] + nums[n/2+1]) / 2
					SiNo
						mediana <- nums[(n+1)/2]
					FinSi
					
					// MODA
					maxRep <- 0
					moda <- nums[1]
					
					Para i<-1 Hasta n Hacer
						cont <- 0
						Para j<-1 Hasta n Hacer
							Si nums[i] = nums[j] Entonces
								cont <- cont + 1
							FinSi
						FinPara
						
						Si cont > maxRep Entonces
							maxRep <- cont
							moda <- nums[i]
						FinSi
					FinPara
					
					Escribir "Media: ", media
					Escribir "Mediana: ", mediana
					Escribir "Moda: ", moda
				FinSi
				
				
				// =====================================================
				// 4. FIBONACCI REAL
				// =====================================================
			4:
				Escribir "Número inicial:"
				Leer inicio
				
				Escribir "¿Cuántos términos quiere generar?"
				Leer t
				
				Si t <= 0 Entonces
					Escribir "ERROR: Debe ser mayor que 0."
				SiNo
					a <- 0
					b <- 1
					
					// SALTAR HASTA ALCANZAR O SUPERAR EL INICIO
					Mientras a < inicio Hacer
						c <- a + b
						a <- b
						b <- c
					FinMientras
					
					Para i <- 1 Hasta t Hacer
						Escribir a
						c <- a + b
						a <- b
						b <- c
					FinPara
				FinSi
				
				
				// =====================================================
				// 5. SALIR
				// =====================================================
			5:
				Escribir "Fin del programa."
				
			De Otro Modo:
				Escribir "Opción no válida."

		FinSegun

	Hasta Que op = 5

FinProceso
