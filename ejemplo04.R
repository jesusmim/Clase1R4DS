#### configuracion ####
#verifiquemos el directorio de trabajo
getwd()
#Para ejecutar una(o mas)lineas(s) de codigo, los pasos son
#La remarcamos
#Ctrl+enter
#Modifico mi directorio actual de trabajo
setwd("C:/Users/jesus/Archivo R4DS/")
dir()
#### definicion de variables ####
x<-12.5 #<-:es el operador de asignacion
y<-2.999999
z<-y^x+pi
z
w=cos(z)^2+sin(z)^2
t<-log(pi^(sqrt(z)))
t
#No tengo la certeza de que log calcule el logaritmo en base 10

help("log")
#### Definicion de vectores ####
xNum<-c(2,3.6669,-4.5,12.9999)
xNum
xlog<-c(TRUE,FALSE,TRUE,FALSE)
xChar<-c("cadena1","nombres","Apellidos","Edad","Dni")
xMix<-c()
#### Otras funciones/sintaxis para generar vectores####
#sintaxis con:
#funciones de distribucion
#seq
#rep
vec1<-1:5
vec2<-14:20
vec3<-54:130
vec4<-c(vec1,vec2,vec3)    
vec4
# Con respecto a las variables numericas:num e integer
# num:numeros punto flotante en precision double
# int:numeros enteros
#Limitaciones de la computadora: Sistema digital
#finito
#cantidad finita de memoria ram y/o disco 
rnorm(5)
rnorm(n=10,mean = 12,sd=3.9)
runif(n=8,min=14,max=20)
rchisq(n=12,df=8)
vec5<-rnorm(n=10,mean=12,sd=3.9)
vec6<-runif(n=8,min=14,max=20)
# Tarea aprender a usar las funciones rep y seq

