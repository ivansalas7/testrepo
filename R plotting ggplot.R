# Vamos a crear graficos usando el dataset "mtcars" y el paquete "ggplot"
library(ggplot2)
library(datasets)
data("mtcars")
# visualizamoas las primeras y ultimas 5 lineas de datos en consola
head(mtcars, 5)
tail (mtcars, 5)
# se puede usar ?"datos" para obtener informacion de las variables. Se enseña en "help"
?mtcars

# creamos graficos de dispersion de autonomia (disp, displacement) y consumo (mpg, miles per galon)
ggplot(aes(x=disp,y=mpg),data=mtcars)+geom_point()
# se puede añadir titulo al grafico
ggplot(aes(x=disp,y=mpg),data=mtcars)+geom_point()+ggtitle("autonomia frente consumo")
# Igual se pueden cambiar los nombres de los ejes
ggplot(aes(x=disp,y=mpg),data=mtcars)+geom_point()+ggtitle("autonomia frente consumo")+labs(x="autonomia",y="consumo")

# Creamos un grafico de caja de la distribucion de consumo (mpg) para los distintos tipos de motores (motor en linea o motor en V)
# Primero hay que convertir la variable de tipo de motor ("vs") en una variable string/factor
mtcars$vs=as.factor(mtcars$vs)
ggplot(aes(x=vs,y=mpg),data=mtcars)+geom_boxplot()
# Podemos añadir color a los graficos de caja
ggplot(aes(x=vs,y=mpg,fill=vs),data=mtcars)+
  geom_boxplot(alpha=0.3)+
  theme(legend.position="none")

# Para terminar creamos un histograma del peso (wt)
ggplot(aes(x=wt),data=mtcars)+geom_histogram(binwith=0.5)
