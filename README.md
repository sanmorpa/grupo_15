# Proyecto Final 'Mujeres en Tech'
Este repositorio recopila el proyecto final del grupo 15 para el bootcamp 'Mujeres en Tech' en Keepcoding de la especialización de data.

El grupo está conformado por:
- Nerea Castañares
- Olga Marín
- Sandra Moreno
- Jessica Piñas
- Carmen Santaló

En este proyecto hemos trabajado con datos de Airbnb para responder a la siguiente pregunta: **¿Qué variables influyen más en los precios de alquiler de un alojamiento en Madrid?**
En el proceso hemos realizado las siguientes etapas:
1. Definición de la Data Warehouse. En el modelo drawio, podemos ver el el siguiente modelo normalizado de la base de datos dónde se van a cargar los datos. Hemos creado además el script sql que materializa este modelo en PostgreSQL. (**Importante al ejecutar el script SQL: cambiar la autorización para que funcione**)
2. ETL. Hemos creado una ETL en Python con las librerías Pandas y NumPy. Tras la ETL, los datos limpios se descargan en formato CSV y se crea un script para insertar los datos en la base creada en el paso 1.
3. Análisis exploratorio. Con Python y las librerias Pandas, Matplotlib y Seaborn hemos hecho un primer análisis sobre algunas variables de interés. Además hemos enriquecido nuestro análisis con una fuente externa: Datos del INE del 2017.
4. Visualización de datos. Hemos creado Dashboards para ver de forma visual cómo se relaciona nuestro KPI principal, el precio, con otras variables.
5. Regresión lineal. Finalmente hemos creado en R una regresión lineal que aspira a predecir el precio de un alojamiento en Airbnb según ciertas variables.

**IMPORTANTE**
Para poder ejecutar los pasos 3, 4 y 5 es necesario haber ejecutado el Notebook 'ETL.ipynb', ya que descarga los archivos necesarios para poder realizar el resto de operaciones.
