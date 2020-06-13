####Data Frames en R####
#Definicion:
Nota1<-runif(10,1,19)
Nota2<-sample(1:20,10)
MiPrimerDF<-data.frame(NOTAP=Nota1,Nota=Nota2)
class(MiPrimerDF)
dim(MiPrimerDF)
str(MiPrimerDF)
View(MiPrimerDF)
####acceso a la informacion en un Df####
MiPrimerDF$NOTAP
MiPrimerDF[[1]]
MiPrimerDF[,1]
#Desean ingresar algun parametro por teclado
help("readline")
####Cargar datos en memoria ####
dir()
gluc<-read.table(file="glucosa.txt",header=TRUE)
gluc
class(gluc)
str(gluc)
colnames(gluc)
class(colnames(gluc))
gluc$glucosa
mean(gluc$glucosa)
median(gluc$glucosa)
sd(gluc$glucosa)
var(gluc$glucosa)
quantile(gluc$glucosa, probs=0.1)

gluc$temperatura
plot(1:31,y=gluc$temperatura)
plot(1:31,y=gluc$temperatura,main = "Dataset glucosa.txt",xlab = "Indices",ylab="Temperatura",type="l")
