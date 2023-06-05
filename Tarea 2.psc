//	1)Leer un carácter y deducir si está o no comprendido entre las
//	letras 'a'... 'z' y 'A'...'Z' ambas inclusive y sino verificar si es un signo de puntuacion ", . ; :"
//	y si no presentar solo el caracter.
Funcion Ejercicio1()
	Definir car Como Caracter;
	Escribir "Ingrese el caracter";
	car <- "";
	Leer car;
	si car >= "a"  y car <= "z" o car >= "A"  y car <= "Z" Entonces
		Escribir "Es una letra del alfabeto (a...z) (A...Z)";
	SiNo
		si car = "." o car = ":" o car = "," o car = ";" Entonces
			Escribir "Es un signo (, ; . :)";
		SiNo
			Escribir car;
		FinSi
	FinSi
FinFuncion

//	2)Leer un carácter y deducir si este es un numero(0..9) o una vocal(a,e,i,o,u)
Funcion Ejercicio2()
	Definir car Como Caracter;
	Escribir "Ingrese el caracter";
	car <- "";
	Leer car;
	si car > "0" y car < "9" Entonces
		Escribir "Es un numero del (0...9)";
	SiNo
		si car = "a" o car = "e" o car = "i" o car = "o" o car = "u" Entonces
			Escribir "El caravter ingresado es una vocal (a,e,i,o,u)";
		SiNo
			Escribir car;
		FinSi
	FinSi
FinFuncion

//3) Dado un caracter vocal presentar su respectivo valor ascii
Funcion Ejercicio3()
	Definir car Como Caracter
	
	Escribir "Escriba una vocal";
	car <- "";
	Leer car;
	
	Segun car Hacer
		"a":
			Escribir car " = 97";
		"e":
			Escribir car " = 101";
		"i":
			Escribir car " = 105";
		"o":
			Escribir car " = 111";
		"u":
			Escribir car " = 117";
		"A":
			Escribir car " = 65";
		"E":
			Escribir car " = 69";
		"I":
			Escribir car " = 73";
		"O":
			Escribir car " = 79";
		"U":
			Escribir car " = 85";
		De Otro Modo:
			Escribir "No es una vocal";
	Fin Segun
	
FinFuncion

//	4) Leer dos nombres y verificar si estos son iguales, si el primer nombre es menor
//	que el segundo dado su contenido.
Funcion Ejercicio4()
	Definir nombre1, nombre2 Como Caracter;
	Escribir "Ingrese nombre 1";
	Leer nombre1;
	Escribir "Ingrese nombre 2";
	Leer nombre2;
	//Calcula en la tabla ascii dado su puntaje 
	si nombre1 == nombre2 Entonces
		Escribir "Los nombres son iguales ";
	SiNo
		si nombre1 < nombre2 Entonces
			Escribir "El primer nombre es menor";
		SiNo
			Escribir "El primer nombre es mayor";
		FinSi
	FinSi
FinFuncion

//	5) Ingresar dos numeros y determinar si son iguales o si el primer numero es menor
//	que el segundo dado su valor
Funcion Ejercicio5()
	Definir num1,num2 Como Entero
	Escribir "Ingrese el numero 1 ";
	Leer num1
	Escribir "Ingrese el numero 2 ";
	Leer num2
	
	si num1 == num2 Entonces
		Escribir "El numero 1 es igual a numero 2";
	SiNo
		si num1 < num2 Entonces
			Escribir "El numero 1 es menor que el numero 2";
		SiNo
			Escribir "El numero 1 es mayor al numero 2";
		FinSi
		
	FinSi
FinFuncion

//6) Ingresar 3 números, determinar cuál es el mayor o si son iguales
Funcion Ejercicio6()
	Definir num1,num2,num3 Como Entero;
	Escribir "Ingrese el Primer numero";
	Leer num1;
	Escribir "Ingrese el Segundo numero";
	Leer num2;
	Escribir "Ingrese el Tercer numero";
	Leer num3;
	
	si (num1 > num2 ) y (num1 > num3) Entonces
		Escribir "El numero mayor es el Primer numero que ingreso: ", num1;
	FinSi
	
	si (num2 > num1 ) y (num2 > num3) Entonces
		Escribir "El numero mayor es el Segundo numero que ingreso: ", num2;
	FinSi
	
	si (num3 > num1 ) y (num3 > num2) Entonces
		Escribir "El numero mayor es el Tercer numero que ingreso: ", num3;
	FinSi
	
	si (num1 == num2 ) y (num1 == num3) Entonces
		Escribir "Los numeros son iguales ";
	FinSi
	
FinFuncion

//7) Ingresar un numero y determinar si es neutro, positivo o negativo
Funcion Ejercicio7()
	Definir num Como Entero;
	
	Escribir "Ingrese un numero";
	Leer num;
	
	si (num == 0) Entonces
		Escribir "El numero ingresado es neutro ", num;
	SiNo
		si (num > 0 ) Entonces
			Escribir "El numero ingresado es positivo ", num;
		SiNo
			Escribir "El numero ingresado es negativo ", num;
		FinSi
	FinSi
FinFuncion


//8) Determinar cuanto se debe pagar por x cantidad de lápices,
//considerando que si son más de 1000 el costo es de 1 , caso contrario
//	el precio será 1,50
Funcion Ejercicio8()	
	Definir cantidad_de_lapices Como Entero;
	Definir precio como real;
	
	Escribir "Ingrese cantidad de lapices ";
	Leer cantidad_de_lapices;
	
	si (cantidad_de_lapices > 1000) Entonces
		precio <- cantidad_de_lapices * 1;
		Escribir "Por la cantidad de: ", cantidad_de_lapices , " lapices el precio a pagar es : ", precio;
	SiNo
		precio <- cantidad_de_lapices * 1.50;
		Escribir "Por la cantidad de: ", cantidad_de_lapices , " lapices el precio a pagar es : ", precio;
	FinSi
FinFuncion


//9) Almacén "Somos Mas" tiene una promoción: a todos los trajes que
//tienen un precio superior a 2500, se les aplicará un descuento del 15%,
//a todo los demás se les aplicará sólo el 8%.
Funcion Ejercicio9()
	
	Definir descuento, precio_traje, precio_final Como Real;
	
	Escribir "Ingrese el precio del traje";
	Leer precio_traje;
	
	si (precio_traje > 2500)  Entonces
		descuento <- precio_traje * 0.15;
	SiNo
		descuento <- precio_traje * 0.08;
	FinSi
	
	precio_final <- precio_traje - descuento;
	
	Escribir "El descuento es de : " , descuento, "$";
	Escribir "El precio final es de : ", precio_final, "$";
FinFuncion

//10) "Somos Mas" es una empresa dedicada a ofrecer banquetes; sus tarifas son
//las siguientes:El costo de platillo por persona es de $95.00, pero si el número de
//personas es mayor a 200 pero menor o igual a 300, el costo es de $85.00.
//Para más de 300 personas el costo por platillo es de $75.00. Se requiere un
//algoritmo que ayude a determinar el presupuesto que se debe presentar a los
//clientes que deseen realizar un evento.

Funcion Ejercicio10()
	Definir numero_personas,costo_platillo Como Entero;
	
	Escribir "Cuantas personas son: ";
	Leer numero_personas;
	
	si numero_personas >= 1 y numero_personas <= 200 Entonces
		costo_platillo = numero_personas * 95.00
		Escribir "El presupuesto para ", numero_personas, " personas es de ", costo_platillo,"$";
	SiNo 
		si numero_personas > 200 y numero_personas <= 300 Entonces
			costo_platillo = numero_personas * 85.00
			Escribir "El presupuesto para ", numero_personas, " personas es de ", costo_platillo,"$";
		SiNo
			si numero_personas > 300 Entonces
				costo_platillo = numero_personas * 75.00
				Escribir "El presupuesto para ", numero_personas, " personas es de ", costo_platillo,"$";
			FinSi
		FinSi
		
	FinSi
FinFuncion
//11)La asociación de vinicultores tiene como política fijar un precio inicial al kilo
//de uva, la cual se clasifica en tipos A y B, y además en tamaños 1 y 2.
//Cuando se realiza la venta del producto, ésta es de un solo tipo y tamaño, se
//requiere determinar cuánto recibirá un productor por la uva que entrega en un
//embarque, considerando lo siguiente:Si es de tipo A, se le cargan 20¢ al precio
//inicial cuando es de tamaño 1; y 30¢ si es de tamaño 2. Si es de tipo B, se rebajan
//30¢ cuando es de tamaño 1, y 50¢ cuando es de tamaño 2.
//Realice un algoritmo para determinar la ganancia obtenida

//Ingresar un precio inicial
//Ingresar los tipos A - B (Leer) y los tamaños 1-2 (Leer)
//Si es tipo = A son 0.20 centavos al precio inicial cuando el tamñano es 1 y si es tamaño 2 son 30 centavos
//si es de tipo B se rebajan 30 centavos al tamaño 1 y 50 al tamaño 2
//Escribimos la ganacia obtenida
Funcion Ejercicio11()
	Definir kilos, tamaño Como Entero
	Definir tipo Como Caracter
	Definir ganancia, precio Como Real
	Escribir "Ingresa los kilos de uva"
	leer kilos
	Escribir "Ingresa el precio por kilo"
	leer precio
	Escribir "Ingresa el tipo de uva (A o B)"
	leer tipo
	Escribir "Ingresa el tamaño de la uva (1 o 2)"
	leer tamaño
	
	si tipo = "A" Entonces
		si tamaño = 1 Entonces
			precio = precio + 0.20
		SiNo
			precio = precio + 0.30
		FinSi
	SiNo
		si tipo = "B" Entonces
			si tamaño = 1 Entonces
				precio = precio - 0.30
			SiNo
				precio = precio - 0.50
			FinSi
		FinSi
	FinSi
	ganancia = precio * kilos
	Escribir "La ganancia es de : $",ganancia
FinFuncion

//12) El director de carrera de software está organizando un viaje de estudios,
//y requiere determinar cuánto debe cobrar a cada alumno y cuánto debe pagar
//a la compañía de viajes por el servicio. La forma de cobrar es la siguiente:
//si son 100 alumnos o más, el costo por cada alumno es de $65.00;
//de 50 a 99 alumnos, el costo es de $70.00, de 30 a 49, de $95.00, y si son menos
//de 30, el costo de la renta del autobús es de $4000.00, sin importar el número
//de alumnos.Realice un algoritmo que permita determinar el pago a la compañía
//de autobuses y lo que debe pagar cada alumno por el viaje

//Verificamos el numero de alumnos que van a ir al viaje
//si son mas de 100 alumnos el coto por cada almuno seria de 65.00
//si son >= 50 y <= 99 entonces cuesta 70
//si son >= 30 y <= 49 entonces pagaran 95.00
//Y si son < de 30 el costo de la renta es de 4000$

Funcion Ejercicio12()
	Definir num_alumnos Como Entero
	Definir total Como Real
	//Ingresamos la cantidd de alumons
	Escribir "Cantidad de alumnos";
	Leer num_alumnos
	
	si num_alumnos >= 100 Entonces
		total = num_alumnos * 65
	SiNo
		si num_alumnos >= 50 y num_alumnos <= 99 Entonces
			total = num_alumnos * 70
		SiNo
			si num_alumnos >= 30 y num_alumnos <= 49 Entonces
				total = num_alumnos * 95
			SiNo
				total = 4000
			FinSi
		FinSi
	FinSi
	pago_alumno <- total / num_alumnos
	Escribir "El total a pagar por alumno es: $", pago_alumno
	Escribir "El total a pagar por la renta del autobús es: $",total
FinFuncion

//13) Una compañía de viajes cuenta con tres tipos de autobuses (A, B y C),
//cada uno tiene un precio por kilómetro recorrido por persona, los costos respectivos son $2.0,
//$2.5 y $3.0. Se requiere determinar el costo total y por persona del viaje considerando que
//cuando éste se presupuesta debe haber un mínimo de 20 personas, de lo contrario el cobro se
//realiza con base en este número límite.

//Determinar cuantas personas van 
//Determinar cuantos kilometros recorrera
//Determinar cual es el tipo de bus a elegir
//Si es tipo A = tiene un costo de kilotero * 2.0
//Si es tipo B = tiene un costo de kilotero * 2.5
//Si es tipo C = tiene un costo de kilotero *3.0
//Y si hay menos de 20 personas el cobro se relaizara en base al numero limite
Funcion Ejercicio13()
	Definir tipo Como Caracter
	Definir kilometro, n_personas Como Entero
	Definir total, precio como real
	
	Escribir "Ingrese el tipo de bus (A-B-C)"
	tipo <- "";
	Leer tipo;
	Escribir "Ingrese la cantidad de personas ";
	Leer n_personas
	Escribir "Ingrese los kilometros a recorrer";
	Leer kilometros
	
	si tipo = "A" o tipo = "B" o tipo = "C" Entonces
		si tipo = "A" Entonces
			precio <- kilometros * 2.0
		sino
			si tipo = "B" Entonces
				precio <- kilometros * 2.5
			SiNo
				si tipo = "C" Entonces
					precio <- kilometros * 3.0
				FinSi
			finsi
		FinSi
	FinSi
	
	si n_personas < 20 Entonces
		total = 20 * precio
	SiNo
		total = n_personas * precio
	FinSi
	Escribir "El total a pagar por el viaje $",total
	Escribir "El total a pagar por persona es: $",total / n_personas
	
FinFuncion


//14) Determinar cuanto se debe pagar por cierta cantidad de colas,
//considerando que si son más de 23 colas, el costo por unidad
//	es de $0,50 caso contrario el precio será 20% mas.
//Al costo resultante calcular el 12% del iva. Se pide presentar:
//	cantidad comprada, el costo ´por unidad, el total sin iva
//	el iva y el total a pagar.
Funcion Ejercicio14()
	Definir cantidad, costo_unidad, costo_total, iva, total_pagar Como Real
    
    Escribir "Ingrese la cantidad de colas a comprar:"
    Leer cantidad
    
	Si cantidad > 23 Entonces
		costo_unidad <- 0.5
	Sino
		costo_unidad <- 0.5
		costo_unidad <- costo_unidad + (costo_unidad * 0.2)
	FinSi
	
	costo_total <- cantidad * costo_unidad
	iva <- costo_total * 0.12
	total_pagar <- costo_total + iva
	
	Escribir "Cantidad comprada:", cantidad
	Escribir "Costo por unidad:", costo_unidad
	Escribir "Total sin IVA:", costo_total
	Escribir "IVA:", iva
	Escribir "Total a pagar:", total_pagar
FinFuncion

//15) En un Supermercado se tiene la siguiente promocion.
//Si se compra mas de 19 productos a estos se le aplica
//	un descuento del 10 por ciento al precio del producto y si se compra
//menos de 20 productos se le aplica un descuento del 20 por ciento
//al precio del producto. Al costo obtenido se le aplica descuento
//	adicional del 5 por ciento. Se pide presentar :
//cantidad comprada, el precio orginal, el descuento inicial
//el total, el descuento adicional y el valor a pagar.

//Determinar la cantidad de productos que el consumidor llevara
//si lleva > 19 productos se le un descuento del 10%
//si compra  < 20 productos se le aplica un descuento del 20%
//y al costo se le aplicara un descuento etra del 5%
//Presentar la cantidad
//Presentar precio original
//Descuento inicial
//El total
//El descuento adicional
//El valor a pagar
Funcion Ejercicio15()
	Definir cantidad Como Entero

	Escribir "Ingrese la cantidad de productos ";
	leer cantidad
	
	si cantidad > 19 Entonces
		descuento <- cantidad * 0.10
		preciodescuento <- descuento - cantidad
	FinSi

FinFuncion


//	16) El consultorio del Dr. Paez tiene como política cobrar la consulta con
//base en el número de cita, de la siguiente forma:
//	Las tres primeras citas a $200.00 c/u.
//	Las siguientes dos citas a $150.00 c/u.
//	Las tres siguientes citas a $100.00 c/u.
//	Las restantes a $50.00 c/u, mientras dure el tratamiento.
//	Se requiere un algoritmo para determinar:
//Cuánto pagará el paciente por la cita.
//El monto de lo que ha pagado el paciente por el tratamiento.
//Para la solución de este problema se requiere saber qué número de cita se efectuará, con el
//cual se podrá determinar el costo que tendrá la consulta y cuánto se ha gastado en el
//tratamiento.
Funcion Ejercicio16()
	Definir n Como Entero
	Definir pago,total Como Real
	Escribir "Ingrese el numero de citas"
	leer n	
	si n <= 3 Entonces 
		pago = 200
		total = n * pago
	SiNo
		si n <= 5 Entonces 
			pago = 150
			total = ((n-3) * pago) + 600
		SiNo
			si n <= 8 Entonces 
				pago = 100
				total = ((n-5) * pago) + 900
			SiNo
				pago = 50
				total = ((n-8) * pago) + 1200
			FinSi
		FinSi
	FinSi
	Escribir "El pago de la cita es de: $",pago
	Escribir "Lo que ha pagado por el tramiento es: $",total
FinFuncion

//17) Fábricas "El Baraton" produce articulos con claves (1, 2, 3, 4, 5 y 6). Se requiere
//	un algoritmo para calcular los precios de venta, para esto hay que considerar lo
//	siguiente:
//	Costo de producción = materia prima + mano de obra + gastos de fabricación.
//	Precio de venta = costo de producción + 45 % de costo de producción.
//	El costo de la mano de obra se obtiene de la siguiente forma: para los productos con clave 3 o
//4 se carga 75 % del costo de la materia prima; para los que tienen clave 1 y 5 se carga 80 %, y
//para los que tienen clave 2 o 6, 85 %.
//Para calcular el gasto de fabricación se considera que si el articulo que se va a
//producir tiene claves 2 o 5, este gasto representa 30 % sobre el costo de la
//materia prima; si las claves son 3 o 6, representa 35 %; si las claves son 1 o 4,
//representa 28 %. La materia prima tiene el mismo costo para cualquier clave
Funcion Ejercicio17()
	
	Definir Producto, CostoP, MateriaP, ManoO, PrecioV,GastosF Como real
	
	Escribir "Ingrese el Producto";
	Leer Producto;
	
	Escribir "Ingrese la materia prima";
	Leer MateriaP;
	
	si Producto = 3 o Producto = 4 Entonces
		ManoO <- 0.75 * MateriaP;
	SiNo
		si Producto = 1 o Producto = 5 Entonces
			ManoO <- 0.80 * MateriaP;
		SiNo
			si Producto = 2 o Producto = 6 Entonces
				ManoO <- 0.85 * MateriaP;
			FinSi
		FinSi
	FinSi
	
	si Producto = 2 o Producto = 5 Entonces
		GastosF <- 0.30 * MateriaP;
	SiNo
		si Producto = 3 o Producto = 6 Entonces
			GastosF <- 0.35 * MateriaP;
		SiNo
			si Producto = 1 o Producto = 4 Entonces
				GastosF <- 0.28 * MateriaP;
			FinSi
		FinSi
	FinSi
	
	CostoP <- MateriaP + ManoO + GastosF;
	PrecioV <- CostoP + 0.45 * CostoP;
	
	Escribir "La clave es : ", Producto;
	Escribir "La mano de obra es de : ", ManoO;
	Escribir "Los Gastos de fabricacion son : ", GastosF;
	Escribir "El costo de produccion es : ", CostoP;
	Escribir "El precio de venta es : ", PrecioV;
	
FinFuncion

//18) El banco XYZ ha decidido aumentar el límite de crédito de las tarjetas de crédito
//de sus clientes, para esto considera que:
//Si su cliente tiene tarjeta tipo 1, el aumento será del 25%.
//Si tiene tipo 2 el aumento será del 35%
//Si tiene tipo 3, el aumento será del 40%
//Para cualquier otro tipo será del 50%
//Realizar un diagrama de flujo que ayude al banco a determinar el nuevo límite
//de crédito que tendrá una persona en su tarjeta

//Ingresar el limite del credito actual
//Leer limite del credito
//Ingesar que tipo de tarjeta tiene
//Leer el tipo de tarjeta que tenga
//Si tiene tipo 1 el aumento sera del 35%
//sino si tipo = 2 entonces 40%
//sino si tip = 3 entonces 50%

Funcion Ejercicio18()
	Definir limite Como Real
	Definir tipo Como Caracter
	
	Escribir "Ingrese su tipo de tarjeta"
	tipo <- ""
	Leer tipo;
	Segun tipo Hacer
		"1":
			Escribir "Ingrese su limite de credito"
			Leer limite
			nuevoL = limite + (limite * 0.25)
			Escribir "El nuevo limite con el 25% es de: " nuevoL
		"2":
			Escribir "Ingrese su limite de credito"
			Leer limite
			nuevoL = limite + (limite * 0.35)
			Escribir "El nuevo limite con el 35% es de: " nuevoL
		"3":
			Escribir "Ingrese su limite de credito"
			Leer limite
			nuevoL = limite + (limite * 0.40)
			Escribir "El nuevo limite con el 40% es de: " nuevoL
		De Otro Modo:
			
			Escribir "Ingrese su limite de credito"
			Leer limite
			nuevoL = limite + (limite * 0.50)
			Escribir "El nuevo limite con el 50% es de: " nuevoL
			
	Fin Segun
FinFuncion


//19) Una compañía de paquetería internacional tiene servicio en algunos países de
//América del Norte, América Central, América del Sur, Europa y Asia. El costo por
//el servicio de paquetería se basa en el peso del paquete y la zona a la que va
//dirigido. Ver tabla
//Parte de sus políticas implica que los paquetes con un peso superior a 5kg
//no son transportados , esto es por cuestión de logística y de seguridad.
Funcion Ejercicio19()
	Definir peso,costo como real
	Definir destino como entero
	Escribir "Ingresa el peso del paquete"
	leer peso	
	si peso > 5 Entonces
		Escribir "El paquete no se puede transportar"
	SiNo
		Escribir "Destino"
		Escribir "1.(America del Norte)"
		Escribir "2.(America Central)"
		Escribir "3.(America del sur)"
		Escribir "4.(Europa)"
		Escribir "5.(Asia)"
		leer destino
		si destino >= 1 y destino <= 5 Entonces
			si destino == 1 Entonces
				costo = (peso * 1000) * 11
				Escribir "1 = America del Norte"
			SiNo
				si destino == 2 Entonces
					costo = (peso * 1000) * 10
					Escribir "2.(America Central)"
				SiNo
					si destino == 3 Entonces
						costo = (peso * 1000) * 12
						Escribir "3 = America del sur"
					SiNo
						si destino == 4 Entonces
							costo = (peso * 1000) * 24
							Escribir "4 = Europa"
						SiNo
							costo = (peso * 1000) * 27
							Escribir "5 = Asia"
						FinSi
					FinSi
				FinSi
			FinSi
			Escribir "El cobro por el envio del paquete es: $",costo
			Escribir "El paquete tiene un peso de: ",peso," kilos"
		SiNo
			Escribir "El paquete no se puede enviar a esa zona"
		FinSi
	FinSi
FinFuncion

//20) Se desea realizar una estadistica de los pesos de los alumnos
//de la UNEMI de acuerdo a la siguiente tabla
//alumnos de menos 40 kg
//alumnos entre 40 y 50 kg
//alumnos mas de 50 y menos de 60 kg
//alumnos mas de 60 kg.
//La entrada de los pesos se terminará cuando se ingrese el valor
//de peso cero. Al final deberá presentar cuantos alumnos hay por
//rengo de pesos y el promedio de cada rango.
Funcion Ejercicio20()
	Definir cantidadRango40,cantidadRango40_50,cantidadRango50_60,cantidadRango60 Como Entero
	Definir peso,promedioRango40,promedioRango40_50,promedioRango50_60,promedioRango60 Como Real
	cantidadRango40=0;cantidadRango40_50=0;cantidadRango50_60=0;cantidadRango60=0
	peso=0;promedioRango40=0;promedioRango40_50=0;promedioRango50_60=0;promedioRango60=0
	Escribir "ingrese un peso"
	Leer peso
	Mientras peso <> 0 Hacer
		Si peso < 40  Entonces
			cantidadRango40 = cantidadRango40+1
			promedioRango40 = promedioRango40+peso
			Escribir cantidadRango40,"  ",promedioRango40
		SiNo
			Si peso >=40 y peso <= 50 Entonces
				cantidadRango40_50 = cantidadRango40_50+1
				promedioRango40_50 = promedioRango40_50+peso
				Escribir cantidadRango40_50," ",promedioRango40_50
			SiNo
				Si peso > 50 y peso <= 60  Entonces
					cantidadRango50_60 = cantidadRango50_60+1
					promedioRango50_60 = promedioRango50_60+peso
					Escribir cantidadRango50_60," ",promedioRango50_60
				SiNo
					cantidadRango60 = cantidadRango60+1
					promedioRango60= promedioRango60+peso
					Escribir cantidadRango60," ",promedioRango60
				Fin Si
			Fin Si
		Fin Si
		Leer peso
	Fin Mientras
	Escribir "Peso < 40 : ",cantidadRango40," ",promedioRango40/cantidadRango40
	Escribir "Peso 40-50 : ",cantidadRango40_50," ",promedioRango40_50/cantidadRango40_50
	Escribir "Peso 50-60 : ",cantidadRango50_60," ",promedioRango50_60/cantidadRango50_60
	Escribir "Peso > 60  : ",cantidadRango60," ",promedioRango60/cantidadRango60

FinFuncion

//21)Escribir un algoritmo que lea cuatro números y determine si el numero 1
//es la mitad del numero 2; Y si el numero 3 es divisor del 4.

//Ingresar 4 numeros
//num1
//num2
//num3
//num4

//Verificamos si el umero 1 es la mitad del numero 2; Y si el numero 3 es divisor del 4.
//si no es asi entonces el falso
// ejemplo num1 = 5
// num2 = 10 
// num3 = 6
// num4 = 2
// en este caso si cumple la condicion 
Funcion Ejercicio21()
	
	Definir num1,num2,num3,num4 Como Entero
	
	Escribir "Escriba numero 1 ";
	Leer num1;
	Escribir "Escriba numero 2 ";
	Leer num2;
	Escribir "Escriba numero 3 ";
	Leer num3;
	Escribir "Escriba numero 4 ";
	Leer num4;
	si (num1 = num2/2) y (num3 mod num4 == 0) Entonces
		Escribir "El numero 1 es la mitad del numero 2 y El numero 3 es divisor del numero 4"
	SiNo
		Escribir "Falso"
	FinSi
FinFuncion


//22) Escribir un algoritmo que lea tres números y determine si el numero 1 es el
//doble del numero 2 y 20% menos que el numero 3.

//Ingresar 3 numeros 
//Leerlos
//si el numero 1 es el doble del numero 2 y 20% menos que el numero 3.
//Ejemplo num1 = 8
//num2 = 4
//num3 = 10
//como si es verdad si cumple 
Funcion Ejercicio22()
	Definir num1,num2,num3 Como Entero
	
	Escribir "Ingrese numero 1 ";
	//8
	Leer num1;
	Escribir "Ingrese numero 2 ";
	//4
	Leer num2;
	Escribir "Ingrese numero 3 ";
	//10
	Leer num3;
	si (num1 = num2 * 2) y (num1 = num3 * 0.8) Entonces
		Escribir "El numero 1 es el doble del numero 2 y 20% menos que el numero 3 "
	SiNo
		Escribir "El numero 1 no cumple las condiciones"
	FinSi
FinFuncion

//23) Realizar un programa que ingrese un número presentar un mensaje equivalente a los días
//de la semana.

Funcion Ejercicio23()
	Definir dia Como Entero
	Escribir "Ingrese un numero para mostrar un dia de la semana: )";
	Leer dia;
	Segun dia Hacer
		1:
			Escribir "Lunes"
		2:
			Escribir "Martes"
		3:
			Escribir "Miercoles"
		4:
			Escribir "Jueves"
		5:
			Escribir "Viernes"
		6:
			Escribir "Sabado"
		7:
			Escribir "Domingo"
		De Otro Modo:
			Escribir "ERROR"
	Fin Segun
FinFuncion

//
//24) Realizar un programa que ingrese un número presentar un mensaje equivalente a los
//nombres de los meses del año
Funcion Ejercicio24()
	Definir num Como Entero
	Escribir "Ingresa un número del 1 al 12 para mostrar un mes del año:"
    Leer num
	
    Segun num Hacer
        1:
            Escribir "Enero"
        2:
            Escribir "Febrero"
        3:
            Escribir "Marzo"
        4:
            Escribir "Abril"
        5:
            Escribir "Mayo"
        6:
            Escribir "Junio"
        7:
            Escribir "Julio"
        8:
            Escribir "Agosto"
        9:
            Escribir "Septiembre"
        10:
            Escribir "Octubre"
        11:
            Escribir "Noviembre"
        12:
            Escribir "Diciembre"
        De Otro Modo:
            Escribir "ERROR"
    Fin Segun

FinFuncion

//25) Se requiere un algoritmo para obtener la estatura promedio de un grupo de personas, cuyo
//número de personas se desconoce, el ciclo debe efectuarse siempre y cuando se tenga una
//estatura registrada.

Funcion Ejercicio25()
    Definir estatura, totalEstaturas, sumaEstaturas, promedioEstaturas Como Real
	
    totalEstaturas <- 0
    sumaEstaturas <- 0
	
    Escribir "Ingresa las estaturas de las personas:"
    Leer estatura
	//Mientras que las estaturas sean diferentes de 0 se iran acumulando hasta que lea una estatura invalida (0)
    Mientras estatura <> 0 Hacer
        totalEstaturas <- totalEstaturas + 1
        sumaEstaturas <- sumaEstaturas + estatura
        Leer estatura
    Fin Mientras
	//Si se ingresa 0 prosigue con sacar el promedio de las estaturas añadidas 
    Si totalEstaturas > 0 Entonces
		//Aqui se encuentra el total de estaturas añadidas y la suma de cada una de ellas para dar el primedio total
        promedioEstaturas <- sumaEstaturas / totalEstaturas
        Escribir "El promedio de estaturas es:", promedioEstaturas
    Sino
        Escribir "No se ingresaron estaturas válidas."
    Fin Si

FinFuncion

//26) Realizar un algoritmo para generar e imprimir los números pares comprendidos entre 0 y 100

Funcion Ejercicio26()
	Definir i Como Entero
	i <- 0
	Mientras i <= 100 Hacer
		Escribir i
		i <- i + 2
	FinMientras
	
FinFuncion

//27) Realizar un programa que realice la suma sucesiva de 10 números que ingrese por teclado,
//presente el resultado de la suma acumulada

Funcion Ejercicio27()
	
	Definir i,suma,n Como Entero
	
	
	Para i = 1 Hasta 10 Con Paso 1 Hacer
		
		Escribir "Ingrese 10 numeros"
		Leer n
		
		suma = suma + n
		
	FinPara
	
	Escribir "La suma de los 10 numeros ingresados es de:" suma;
	
FinFuncion

//28) Se requiere un algoritmo para obtener la edad promedio de un grupo de N alumnos.

Funcion Ejercicio28()
	Definir n,i,suma Como Entero
	Definir promedio, edad Como Real
	Escribir "Ingrese cantidad de alumnos: "
	Leer n
	
	Para i = 1  Hasta n Con Paso 1 Hacer
		Escribir "Ingrese la edad del alumno ", i
		Leer edad;
		
		suma <- suma + edad
		promedio <- suma / n
		
	Fin Para
	
	Escribir "El promedio de las edad es de : ", promedio
FinFuncion


//29) Una empresa tiene el registro de las horas y el valor hora que trabaja diariamente un
//empleado durante los 20 días del mes. Requiere determinar el total de éstas, así como el sueldo
//que recibirá por las horas trabajadas. Realizar el algoritmo que resuelva este problema

//Registrar la cantiidad de horas (leer) y el valor de las horas (leer) durante 20 dias del mes
//determinar el valor de horas y el sueldo que recibe por esas horas
Funcion Ejercicio29()
	
	Definir horas Como Entero
	Definir valor_horas, cH, pagoT Como Real
	
	Escribir "Ingrese el valor por hora"
	Leer valor_horas;
	
	Para i <- 1 Hasta 20 Con Paso 1 Hacer
		Escribir "Ingrese la cantidad de horas del : ", i , " dia";
		Leer horas;
		cH <- cH + horas
	Fin Para
	
	pagoT <- valor_horas * cH

	Escribir "El total de horas trabajadas es de : ",cH
	Escribir "El total del sueldo es de : ", pagoT;
FinFuncion

//30) Un empleado de la tienda "Somos Más" realiza N ventas durante el día, se requiere saber
//cuántas de ellas fueron mayores a $1000, cuántas de ellas fueron mayores a $500 pero menores
//o iguales a $1000, y cuantas fueron menores o iguales a $500. Además, se requiere saber el
//monto de lo vendido en cada categoría y de forma global. Realizar un algoritmo

//Cuantas ventas hio en el dia ventas (leer)
// ir verificando de venta en venta y tambien saber si fueron mayores a 1000 pero menores que 500 y 1000
//y verificar el monto vendido de cada una

Funcion Ejercicio30()
	Definir i Como Entero
	Definir a,b,c,d,venta,titalA,totalB,totalC como real
	i <- 1
	Mientras i <> 0 Hacer
		Escribir "Ingresa una opción: 0 = salir, 1 = ingresar venta: "
		Leer i
		Si i = 1 Entonces
			Escribir "Ingresa la venta: "
			Leer venta
			Si venta <= 500 Entonces
				a <- a + 1
				totalA <- totalA + venta
			Sino
				Si venta <= 1000 Entonces
					b <- b + 1
					totalB <- totalB + venta
				Sino
					c <- c + 1
					totalC <- totalC + venta
				FinSi
			FinSi
		FinSi
		totalV <- a+b+c
		totalD <- total +totalB+totalC
	FinMientras
	
	
	
	Escribir "Ventas menores o iguales a 500: ", a, " el total es: $", totalA
	Escribir "Ventas mayores a $500 pero menores o iguales a $1000: ", b, " el total es: $", totalB
	Escribir "Ventas mayores a 1000: ", c, " el total es: $", totalC
	Escribir "Ventas totales en el día: ", totalV, " el total es: $", totalD
FinFuncion



//31) Se dispone de las calificaciones de n alumnos del primer semestre
//de la carrera de software de la unemi. Se tiene la nota final y la asignatura
//('logica','requerimientos','calculos'). Se pide el promedio de
//cada asignatura y el promedio general de todas las asignaturas de los
//alumnos del primer semestre.

//Se debe ingresar la calificaciones de cierta cantidad de alumnos 
// n <- alumnos
//Ingresamos las notas 

Funcion  Ejercicio31()
	Definir n Como Entero
	Definir nota, nota1, n1, c, promedioL, promedioR, promedioC, n2, n3 ,nota2, nota3, promedioG Como Real
	Escribir "Ingrese número de alumnos: "
	Leer n
	
	c <- 0
	n1 <- 0
	nota1 <- 0
    i <- 1
    Mientras i <= n Hacer
        Escribir "Alumno ", i
		Escribir "Ingrese su nota final y su asignatura (Logica - Requerimiento - Calculo)"
		Leer nota, asignatura;
		
		Si asignatura = "Logica" Entonces
			nota1 <- nota1 + nota
			n1 <- n1 + 1
		SiNo
			Si asignatura = "Requerimiento" Entonces
				nota2 <- nota2 + nota
				n2 <- n2 + 1
			SiNo
				Si asignatura = "Calculo" Entonces
					nota3 <- nota3 + nota
					n3 <- n3 + 1
				FinSi
			FinSi
		FinSi
		
        i <- i + 1
    FinMientras
	
	
	promedioL <- nota1 / n1
	promedioR <- nota2 / n2
	promedioC <- nota3 / n3
	promedioG <- promedioL+promedioC+promedioR
	
	Escribir "El promedio de Logica es: ", promedioL
	Escribir "El promedio de Requerimiento es: ", promedioR
	Escribir "El promedio de Calculo es: ", promedioC
	Escribir "El promedio General es: ", promedioG
FinFuncion


//32) Se dispone de los sueldos y categorias de los profesores de la unemi.
//segun la categoria estos reciben un bono adicional de porcentaje al sueldo:
//			categoria="Auxiliar" incremento del 10%
//			categoria="Agregado" incremento del 20%
//			categoria="principal" incremento del 50%
//			Se pide obtener el promedio de los sueldos y del bono de cada categoria
//			El programa termina cuando se ingresa una categoria inexistente


Funcion Ejercicio32()
    Definir categoria Como Cadena
    Definir sueldo, bono, sueldoTotal, bonoTotal, contador Como Real
	
    sueldoTotal <- 0
    bonoTotal <- 0
    contador <- 0
	bonoA <- 0
	sueldoA <- 0
	SueldoAg <- 0
	bonoAg <-0
	bonoP <- 0
	SueldoP <- 0
	Escribir "Ingrese la categoría (Auxiliar, Agregado, Principal) o cualquier otra tecla para salir: "
    categoria <- ""
	Leer categoria
	
    Mientras categoria = "Auxiliar" o categoria = "Agregado" o categoria = "Principal" Hacer
		
        si categoria = "Auxiliar" Entonces
            Escribir "Ingrese el sueldo: "
            Leer sueldoA
            bonoA <- sueldoA * 0.10
			A <- A + 1
		SiNo
			si categoria = "Agregado" Entonces
				Escribir "Ingrese el sueldo: "
				Leer sueldoAg
				bonoAg <- sueldoAg * 0.20
				Ag <- Ag +1
			SiNo
				si categoria = "Principal" Entonces
					Escribir "Ingrese el sueldo: "
					Leer sueldoP
					bonoP <- sueldoP * 0.50
					P <- P +1
				FinSi
			FinSi
			
        FinSi
		Escribir "Ingrese categoria"
		Leer categoria
        si categoria <> "Auxiliar" y categoria <> "Agregado" y categoria <> "Principal" Entonces
            Escribir "Categoría inválida. El ciclo ha terminado."
        FinSi
        sueldoTotal <- sueldoTotal + sueldoP + sueldoAg + sueldoA
        bonoTotal <- bonoTotal + bonoP + bonoAg + bonoA
        contador <- contador + 1
    FinMientras
	
    si contador > 0 Entonces
		promedioA <- sueldoA/A
		promedioAg <- sueldoAg/Ag
		promedioP <- sueldoP/P
		promediobA <- bonoA/A
		promediobAg <- bonoAg/Ag
		promediobP <- bonoP/P
		
		Escribir "Promedio de Sueldo de Auxiliar : ", promedioA
		Escribir "Promedio de Bono de Auxiliar : ", promediobA 
        Escribir "Promedio de Sueldo de Agregado : ", promedioAg
		Escribir "Promedio de Bono de Agregado : ", promediobAg
		Escribir "Promedio de Sueldo de Principal : ", promedioP 
		Escribir "Promedio de Bono de Principal : ", promediobP
    FinSi
FinFuncion

//33) Dado una serie de n cantidad de viajes dado cada pasaje y su recorrido determinar
//el precio de cada pasaje segun el recorrido en kilometros
//si el recorrido es hasta 100 km el pasaje no tiene incremento
//si el reccorido es mas de 100 km el pasaje tiene un incremento
//del 20%. Presentar el promedio y la cantidad de pasajes con recorrido
//hasta 100km y mayor de 100 km.

//determinar n cantidad de viajes
//ingresar cada pasaje y su recorrido

Funcion Ejercicio33()
	Definir Cviajes, pasaje, recorrido, recorrido100, recorridomas100, promedio, recorridoh100, recorridom100 Como Real
	
	Escribir "Ingrese cantidad de viajes: "
	Leer Cviajes
	
	recorridoh100 <- 0
	recorridom100 <- 0
	recorrido100 <- 0
	recorridiomas100 <- 0
	i <- 1
	
	Mientras i <= Cviajes Hacer
		Escribir "Ingrese pasaje ", i
		Leer pasaje
		Escribir "Ingrese su cantidad de recorrido (hasta 100km o mas de 100km)"
		Leer recorrido
		
		si recorrido <= 100 Entonces
			recorridoh100 <- recorridoh100 + recorrido
			recorrido100 <- recorrido100 + 1
		Sino
			recorridom100 <- recorridom100 + recorrido
			recorridiomas100 <- recorridiomas100 + 1
		FinSi
		
		i <- i + 1
	Fin Mientras
	
	promedio <- (recorridoh100 + recorridom100) / Cviajes
	
	Escribir "La cantidad de pasajes de recorrido con menos de 100km es de: ", recorrido100
	Escribir "La cantidad de pasajes de recorrido con mas de 100km es de: ", recorridiomas100
	Escribir "El promedio es de pasajes es de : ",promedio;
	
FinFuncion


//34) Diseñar un algoritmo que lea y presente una serie de números distintos de
//	cero. El algoritmo debe terminar con un valor cero que no se debe presentar.
//Finalmente se desea obtener la cantidad y el promedio de los valores distintos
//de cero


Funcion Ejercicio34()
	Definir num, suma, contador Como Entero
	Definir promedio Como Real
	
	suma <- 0
	contador <- 0
	
	Escribir "Ingrese una serie de números distintos de cero (finalice con 0):"
	
	Leer num
	
	Mientras num <> 0 Hacer
		suma <- suma + numero
		contador <- contador + 1
		
		Leer num
	Fin Mientras
	
	Si contador > 0 Entonces
		promedio <- suma / contador
		Escribir "La cantidad de valores distintos de cero es:", contador
		Escribir "El promedio de los valores distintos de cero es:", promedio
	Sino
		Escribir "No se ingresaron valores distintos de cero."
	FinSi
FinFuncion

//35) Dada una serie de números positivos lea y presente el numero.
//El algoritmo debe terminar con un valor negativo que no se debe presentar.
//Finalmente se desea obtener la cantidad y el total de los números positivos
//múltiplos de 3

Funcion Ejercicio35()
	
	Definir num, cantidad, total Como Entero
	
	cantidad <- 0
	total <- 0
	
	Escribir "Ingrese una serie de números positivos (numero negativo para finalizar):"
	
	Leer num
	
	Mientras num >= 0 Hacer
		Si num % 3 = 0 Entonces
			cantidad <- cantidad + 1
			total <- total + num
		FinSi
		
		Leer num
	Fin Mientras
	
	Escribir "La cantidad de números positivos múltiplos de 3 es:", cantidad
	Escribir "El total de los numeros multiplos de 3 es : ", total
FinFuncion

Algoritmo Ejercicios
//	Ejercicio1();
//	Ejercicio2();
//	Ejercicio3();
//	Ejercicio4();
//	Ejercicio5();
//	Ejercicio6()
//	Ejercicio7();
//	Ejercicio8();
//	Ejercicio9();
//	Ejercicio10();
//	Ejercicio11();
//	Ejercicio12();
//	Ejercicio13();
//	Ejercicio14();
//	Ejercicio15();
//	Ejercicio16();	
//	Ejercicio17();
//	Ejercicio18();
//	Ejercicio19();
//	Ejercicio20();
//	Ejercicio21();
//	Ejercicio22();
//	Ejercicio23();
//	Ejercicio24();
//	Ejercicio25();
//	Ejercicio26();
//	Ejercicio27();
//	Ejercicio28();
//	Ejercicio29();
//	Ejercicio30();
// Ejercicio31();
// Ejercicio32();
//	Ejercicio33()
//	Ejercicio34()
//	Ejercicio35()
FinAlgoritmo
