# PSEINT

<p>
PSeInt es un acrónimo que significa "Pseudo Intérprete" y es un software gratuito y de código abierto para enseñar y aprender programación. Está diseñado para ayudar a los estudiantes a comprender los conceptos básicos de la programación, especialmente en el ámbito de la programación estructurada y algoritmos.
</p>

<p>
PSeInt proporciona un entorno de programación simple e interactivo donde los usuarios pueden escribir, depurar y ejecutar algoritmos en lenguaje pseudocódigo. El pseudocódigo es un lenguaje informal y de propósito general que se utiliza para describir los pasos necesarios para resolver un problema, y que se asemeja mucho a la sintaxis de los lenguajes de programación de alto nivel.
</p>

<p>
PSeInt es una herramienta útil para estudiantes de programación, ya que les permite concentrarse en la lógica y la estructura de los algoritmos sin tener que preocuparse por la sintaxis de un lenguaje de programación específico. Además, PSeInt es muy útil para los profesores que deseen enseñar programación, ya que ofrece una forma interactiva y visual de enseñar los conceptos fundamentales.
</p>

# EJEMPLOS VECTOR 

- HACER UN PROGRAMA DONDE HAY ALUMNOS EN ARRAYS

<pre>
<code>
Algoritmo Arrayalumno
	Definir vcodigo, vnombre, codigo  Como Caracter
	Definir  vedad Como Entero
	Definir vestatura Como Real
	
	Dimension vcodigo[5], vnombre[5], vedad[5], vestatura[5]
	
	vcodigo[1]= "A1"
	vcodigo[2]= "A2"
	vcodigo[3]= "A3"
	vcodigo[4]= "A4"
	vcodigo[5]= "A5"
	
	vnombre[1]= "Luis"
	vnombre[2]= "Yolanda"
	vnombre[3]= "Carlos"
	vnombre[4]= "Jorge"
	vnombre[5]= "Maria"
	
	vedad[1] = 23
	vedad[2] = 25
	vedad[3] = 21
	vedad[4] = 29
	vedad[5] = 26
	
	vestatura[1] = 1.56
	vestatura[2] = 1.78
	vestatura[3] = 1.85
	vestatura[4] = 1.93
	vestatura[5] = 1.70
	
	Escribir " El promedio es: " (vedad[1] + vedad[2] + vedad[3] +vedad[4] + vedad[5])/5
	
	Escribir "Ingresa el codigo del alumno"
	Leer codigo
	
	
	encontre = Falso
	Para i=1 hasta 5 con paso 1 Hacer
		Si vcodigo[i] = codigo Entonces
			Escribir "Nombre:  ", vnombre[i]
			Escribir "Edad:  ", vedad[i]
			Escribir "Estatura:  ", vestatura[i]
			encontre = Verdadero
		FinSi
	FinPara
	Si encontre = Falso Entonces
		EScribir "CODIGO INCORRECTO"
	FinSi
	
	
	Escribir "Quiere cambiar el nombre del alumno"
	Leer cambio
	
	encontre2 =Falso
	Para i=1 hasta 5 con paso 1 Hacer
	Si vcodigo[i] = codigo Entonces
		Si cambio ="si" Entonces
			Escribir " Escriba el nuevo nombre"
			Leer Nuevon
			vnombre[i]= Nuevon
			Escribir "Nombre:  ", vnombre[i]
			Escribir "Edad:  ", vedad[i]
			Escribir "Estatura:  ", vestatura[i]
			encontre = Verdadero
		FinSi
	FinSi
Fin Para
	
Fin algoritmo
</code>
</pre>

<p align="center">
  <a href="https://www.youtube.com/watch?v=d_xDOLVZDcM"_blank">
     <img src="https://i.ytimg.com/vi/d_xDOLVZDcM/hq720.jpg" alt="Expresiones Regulares" width="400" height="300" border="10" /></a>
  <a href="https://www.youtube.com/watch?v=d_xDOLVZDcM"></a>
</p>
