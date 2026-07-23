Algoritmo ano_bisiesto
	Definir opcion, totalAnios Como Entero
	Definir i, j Como Entero
	Definir idBuscar Como Entero
	Definir siguienteID Como Entero
	Definir encontrado Como Logico
	Definir id Como Entero
	Definir anio Como Entero
	Definir tipoAnio Como Caracter
	Definir siglo Como Caracter
	Definir divisible4 Como Caracter
	Definir divisible100 Como Caracter
	Definir divisible400 Como Caracter
	Definir estado Como Caracter
	Dimension id[100]
	Dimension anio[100]
	Dimension tipoAnio[100]
	Dimension siglo[100]
	Dimension divisible4[100]
	Dimension divisible100[100]
	Dimension divisible400[100]
	Dimension estado[100]
	totalAnios <- 0
	siguienteID <- 1
	//---------------------------------//
	//--|menu_principal_ano_bisiesto|--//
	//---------------------------------//
	Repetir
		Escribir "menu principal año bisiesto"
		Escribir "1) registrar año"
		Escribir "2) editar año"
		Escribir "3) eliminar año"
		Escribir "4) buscar año"
		Escribir "5) listar años"
		Escribir "6) ver detalles del año"
		Escribir "7) mostrar estadisticas"
		Escribir "8) salir"
		Escribir "seleccione una opcion:"
		Leer opcion
		Segun opcion Hacer
			//-------------------//
			//--|registrar_ano|--//
			//-------------------//
			1:
				Escribir "registrar año"
				id[totalAnios+1] <- siguienteID
				siguienteID <- siguienteID + 1
				Escribir "id asignado: ", id[totalAnios+1]
				Escribir "ingrese el año:"
				Leer anio[totalAnios+1]
				Si anio[totalAnios+1] MOD 400 = 0 Entonces
					tipoAnio[totalAnios+1] <- "bisiesto"
				SiNo
					Si anio[totalAnios+1] MOD 100 = 0 Entonces
						tipoAnio[totalAnios+1] <- "comun"
					SiNo
						Si anio[totalAnios+1] MOD 4 = 0 Entonces
							tipoAnio[totalAnios+1] <- "bisiesto"
						SiNo
							tipoAnio[totalAnios+1] <- "comun"
						FinSi
					FinSi
				FinSi
				Si anio[totalAnios+1] MOD 4 = 0 Entonces
					divisible4[totalAnios+1] <- "si"
				SiNo
					divisible4[totalAnios+1] <- "no"
				FinSi
				Si anio[totalAnios+1] MOD 100 = 0 Entonces
					divisible100[totalAnios+1] <- "si"
				SiNo
					divisible100[totalAnios+1] <- "no"
				FinSi
				Si anio[totalAnios+1] MOD 400 = 0 Entonces
					divisible400[totalAnios+1] <- "si"
				SiNo
					divisible400[totalAnios+1] <- "no"
				FinSi
				Si anio[totalAnios+1] >= 2001 Entonces
					siglo[totalAnios+1] <- "XXI"
				SiNo
					Si anio[totalAnios+1] >= 1901 Entonces
						siglo[totalAnios+1] <- "XX"
					SiNo
						siglo[totalAnios+1] <- "anterior"
					FinSi
				FinSi
				Escribir "ingrese el estado:"
				Leer estado[totalAnios+1]
				totalAnios <- totalAnios + 1
				Escribir "año registrado correctamente."
			//----------------//
			//--|editar_ano|--//
			//----------------//
			2:
				Escribir "editar año"
				Si totalAnios = 0 Entonces
					Escribir "no hay años registrados."
				SiNo
					Escribir "datos registrados a editar"
					Para i <- 1 Hasta totalAnios Hacer
						Escribir id[i], " | ", anio[i], " | ", tipoAnio[i], " | ", siglo[i], " | ", divisible4[i], " | ", divisible100[i], " | ", divisible400[i], " | ", estado[i]
					FinPara
					Escribir "ingrese el id del año:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalAnios Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "ingrese el nuevo año:"
							Leer anio[i]
							Si anio[i] MOD 400 = 0 Entonces
								tipoAnio[i] <- "bisiesto"
							SiNo
								Si anio[i] MOD 100 = 0 Entonces
									tipoAnio[i] <- "comun"
								SiNo
									Si anio[i] MOD 4 = 0 Entonces
										tipoAnio[i] <- "bisiesto"
									SiNo
										tipoAnio[i] <- "comun"
									FinSi
								FinSi
							FinSi
							Si anio[i] MOD 4 = 0 Entonces
								divisible4[i] <- "si"
							SiNo
								divisible4[i] <- "no"
							FinSi
							Si anio[i] MOD 100 = 0 Entonces
								divisible100[i] <- "si"
							SiNo
								divisible100[i] <- "no"
							FinSi
							Si anio[i] MOD 400 = 0 Entonces
								divisible400[i] <- "si"
							SiNo
								divisible400[i] <- "no"
							FinSi
							Si anio[i] >= 2001 Entonces
								siglo[i] <- "XXI"
							SiNo
								Si anio[i] >= 1901 Entonces
									siglo[i] <- "XX"
								SiNo
									siglo[i] <- "anterior"
								FinSi
							FinSi
							Escribir "ingrese el nuevo estado:"
							Leer estado[i]
							Escribir "año editado correctamente."
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró un año con ese id."
					FinSi
				FinSi
			//------------------//
			//--|eliminar_ano|--//
			//------------------//
			3:
				Escribir "eliminar año"
				Si totalAnios = 0 Entonces
					Escribir "no hay años registrados."
				SiNo
					Escribir "datos registrados a eliminar"
					Para i <- 1 Hasta totalAnios Hacer
						Escribir id[i], " | ", anio[i], " | ", tipoAnio[i], " | ", siglo[i], " | ", divisible4[i], " | ", divisible100[i], " | ", divisible400[i], " | ", estado[i]
					FinPara
					Escribir "ingrese el id del año:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalAnios Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Si i < totalAnios Entonces
								Para j <- i Hasta totalAnios - 1 Hacer
									id[j] <- id[j+1]
									anio[j] <- anio[j+1]
									tipoAnio[j] <- tipoAnio[j+1]
									siglo[j] <- siglo[j+1]
									divisible4[j] <- divisible4[j+1]
									divisible100[j] <- divisible100[j+1]
									divisible400[j] <- divisible400[j+1]
									estado[j] <- estado[j+1]
								FinPara
							FinSi
							totalAnios <- totalAnios - 1
							Escribir "año eliminado correctamente."
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró un año con ese id."
					FinSi
				FinSi
			//----------------//
			//--|buscar_ano|--//
			//----------------//
			4:
				Escribir "buscar año"
				Si totalAnios = 0 Entonces
					Escribir "no hay años registrados."
				SiNo
					Escribir "ingrese el id del año:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalAnios Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "datos encontrados"
							Escribir id[i], " | ", anio[i], " | ", tipoAnio[i], " | ", siglo[i], " | ", divisible4[i], " | ", divisible100[i], " | ", divisible400[i], " | ", estado[i]
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró un año con ese id."
					FinSi
				FinSi
			//-----------------//
			//--|listar_anos|--//
			//-----------------//
			5:
				Escribir "listar años"
				Si totalAnios = 0 Entonces
					Escribir "no hay años registrados."
				SiNo
					Escribir "datos registrados"
					Para i <- 1 Hasta totalAnios Hacer
						Escribir id[i], " | ", anio[i], " | ", tipoAnio[i], " | ", siglo[i], " | ", divisible4[i], " | ", divisible100[i], " | ", divisible400[i], " | ", estado[i]
					FinPara
				FinSi
			//----------------------//
			//--|ver_detalles_ano|--//
			//----------------------//
			6:
				Escribir "ver detalles del año"
				Si totalAnios = 0 Entonces
					Escribir "no hay años registrados."
				SiNo
					Escribir "ingrese el id del año:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalAnios Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "detalles del año"
							Escribir "id: ", id[i]
							Escribir "año: ", anio[i]
							Escribir "tipo de año: ", tipoAnio[i]
							Escribir "siglo: ", siglo[i]
							Escribir "divisible entre 4: ", divisible4[i]
							Escribir "divisible entre 100: ", divisible100[i]
							Escribir "divisible entre 400: ", divisible400[i]
							Escribir "estado: ", estado[i]
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró un año con ese id."
					FinSi
				FinSi
			//--------------------------//
			//--|mostrar_estadisticas|--//
			//--------------------------//
			7:
				Escribir "mostrar estadisticas"
				Si totalAnios = 0 Entonces
					Escribir "no hay años registrados."
				SiNo
					totalBisiestos <- 0
					totalComunes <- 0
					mayorAnio <- anio[1]
					menorAnio <- anio[1]
					Para i <- 1 Hasta totalAnios Hacer
						Si tipoAnio[i] = "bisiesto" Entonces
							totalBisiestos <- totalBisiestos + 1
						SiNo
							totalComunes <- totalComunes + 1
						FinSi
						Si anio[i] > mayorAnio Entonces
							mayorAnio <- anio[i]
						FinSi
						
						Si anio[i] < menorAnio Entonces
							menorAnio <- anio[i]
						FinSi
					FinPara
					Escribir "estadistica general"
					Escribir "total de años: ", totalAnios
					Escribir "años bisiestos: ", totalBisiestos
					Escribir "años comunes: ", totalComunes
					Escribir "año mayor: ", mayorAnio
					Escribir "año menor: ", menorAnio
				FinSi
			//------------------------------//
			//--|salir_del_menu_principal|--//
			//------------------------------//
			8:
				Escribir "gracias por utilizar año bisiesto."
			De Otro Modo:
				Escribir "opción no válida."
		FinSegun
	Hasta Que opcion = 8
FinAlgoritmo