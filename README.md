# Proyecto Final 'Mujeres en Tech'
Este repositorio recopila el proyecto final del grupo 15 para el bootcamp 'Mujeres en Tech' en Keepcoding de la especialización de data.

El grupo está conformado por:
- Nerea Castañares
- Olga Marín
- Sandra Moreno
- Jessica Piñas
- Carmen Santaló

En este proyecto hemos trabajado con datos de Airbnb para responder a la siguiente pregunta: **¿Qué variables influyen más en los precios de alquiler de un alojamiento en Madrid?**. Como feutne principal hemos recibido un [archivo excel](https://github.com/sanmorpa/grupo_15/blob/main/raw_airbnb.xlsx) con los datos en bruto sacados de Airbnb.
En el proceso hemos realizado las siguientes etapas:
1. Definición de la Data Warehouse. En el [modelo drawio](https://github.com/sanmorpa/grupo_15/blob/main/Diagrama.drawio), podemos ver el el siguiente modelo normalizado de la base de datos dónde se van a cargar los datos. Hemos creado además el [script sql](https://github.com/sanmorpa/grupo_15/blob/main/script.sql) que materializa este modelo en PostgreSQL. (**Importante al ejecutar el script SQL: cambiar la autorización para que funcione**)
![Modelo normalizado de la base de datos](https://github.com/sanmorpa/grupo_15/blob/main/diagrama.png?raw=true)
2. ETL. Hemos creado una [ETL en Python](https://github.com/sanmorpa/grupo_15/blob/main/ETL.ipynb) con las librerías Pandas y NumPy. Tras la ETL, los datos limpios se descargan en formato CSV y se crea un script para insertar los datos en la base creada en el paso 1.
3. Análisis exploratorio. Con Python y las librerias Pandas, Matplotlib y Seaborn hemos hecho un primer análisis sobre algunas variables de interés en un [Jupyter Notebook](https://github.com/sanmorpa/grupo_15/blob/main/analisis_exploratorio.ipynb). Además hemos enriquecido nuestro análisis con una fuente externa: [Datos del INE del 2017](https://github.com/sanmorpa/grupo_15/blob/main/30677bsc.csv).
4. Visualización de datos. Hemos creado [Dashboards](https://github.com/sanmorpa/grupo_15/blob/main/Dashboard.twbx) en Tableau para ver de forma visual cómo se relaciona nuestro KPI principal, el precio, con otras variables. Además los hemos subido a Tableau public
	- [Dashboard 1](https://public.tableau.com/app/profile/jesica.pinas/viz/DashboardProyectofinalG15_/DashboardPrecio)
	- [Dashboard 2](https://public.tableau.com/app/profile/jesica.pinas/viz/DashboardProyectofinalG15/DashboardReviews#8)
5. Regresión lineal. Finalmente hemos [creado en R](https://github.com/sanmorpa/grupo_15/blob/main/Regresion.qmd) una regresión lineal que aspira a predecir el precio de un alojamiento en Airbnb según ciertas variables.

**¡IMPORTANTE!**
Para poder ejecutar los pasos 3, 4 y 5 es necesario haber ejecutado el Notebook 'ETL.ipynb', ya que descarga los archivos necesarios para poder realizar el resto de operaciones.

El orden para ejecutar los archivos es el siguiente:
1. ETL.ipynb (tarde un rato)
2. analisis_exploratorio.ipynb
3. script.sql (en Dbeaver)
4. data_upload.sql (en Dbeaver)
5. Dashboard.twbx en Tableau
6. Regresion.qmd en RStudio
