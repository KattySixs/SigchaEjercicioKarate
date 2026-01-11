# Readme del ejercicio 2: APIS Karate -- SigchaK
Este proyecto realiza las pruebas de APIS que apunta a https://petstore.swagger.io/v2, la automatización corresponde a añadir máscotas a la tienda, buscar la mascota por ID, actualizar el nombre/estado de la mascota y buscar por el estado "sold".

	- El archivo de configuración de Karate está en: src/test/resources/karate-config.js

## Versiones de tecnologías usadas
	- Gradle (wrapper): 9.0.0
	- Java version: 17.0.12
	- Karate DSL: 1.3.1

## Requisitos Previos
- Obtener el proyecto "SigchaEjercicioKarate" e importarlo desde la herramienta IntelliJ

## Instrucciones de ejecución
	- Si necesitas apuntar a otro entorno, edita: src/test/resources/karate-config.js. Modifica: config.baseUrl.
	- Evita reusar ids que puedan chocar con otras ejecuciones.
	- Si deseas parametrizar la URL base desde variables de entorno, modifica: karate-config.js, para leer: process.env o propiedades del sistema.
	- Para entornos CI, se recomienda usar el wrapper (`./gradlew`) y fijar la JDK 17.

## Configuración relevante
	- Reporte de Karate: build/karate-reports/petstore.petstore.html
	- Reporte de JUnit/Gradle: build/reports/tests/test/index.html

## Para la ejecución
	- Abrir el archivo "PetStoreRunner": src/test/java/petstore/PetStoreRunner
	- Dar clic en el icono "play" en la parte superior de la pantalla.
	- esperar que finalice

## Interpretación de resultados
	- Revisar que se tenga el resultado: 4 tests passed
	- Dar clic en el enlace que entrega para ver el reporte: file:///C:/SerenityBDD/ApisPetstore/build/karate-reports/karate-summary.html
	- En la página visualizada del reporte dar clic en el nombre del feature: petstore/petstore.feature
	- Revisar todos los escenarios por los que pasó la prueba.
