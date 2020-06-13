rm(list=ls())
dir()

retail<-read.csv(file="RetailSales.csv.txt")
class(retail)
str(retail)
colnames(retail)
View(retail)

#Limpieza de datos####
#Notamos que existen filas que poseen elementos vacios
#Asi como elementos del NA
help("na.omit")
retail<-na.omit(retail)
#Na.omit elimina todas las filas que por lo menos tengan un elemento de tipo NA
str(retail)

####retail :analisis por año ####
#Veamos cuanto es lo que produjo de ventas por año
retail[retail$Year==2000,]
class(retail[retail$Year==2000,])
retail[retail$Year==2000,]$Sales
sum(retail[retail$Year==2000,]$Sales)
unique(retail$Year)
ResumenSales<-rbind(Resumensales,NuevaFila)

#Utilicemos una estructura for para crear un data frame donde almacenaremos un resumen por año
ResumenSales<-data.frame(Year=integer(),ventatotal=double())
NuevaFila<-data.frame()
for(y in unique(retail$Year)){
 NuevaFila<-data.frame((Year=y,VentaTotal=sum(retail[retail$Year==2000,]$Sales))
ResumenSales<-rbind(ResumenSales$VentaTotal)                       
}
View(ResumenSales)


####Comportamiento de la data por mes####
retail[retail$Month=="Jan",]$Sales
unique(retail$Month)
help("aggregate")
RetailMes<-aggregate(Sales~Month,data=retail,FUN=sum)
RetailMes
month.abb
month.name
RetailMes<-RetailMes[order(match(RetailMes$Month,month.abb)),]
