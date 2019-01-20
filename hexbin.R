kc_tax<-read.csv("C:\\Users\\ashwi\\Desktop\\Ashwin\\PS_DS\\psds_data\\kc_tax.csv")
kc_tax0<-subset(kc_tax,TaxAssessedValue < 750000 & SqFtTotLiving>100 & SqFtTotLiving<3500)
length(kc_tax0)
kc_tax0
nrow(kc_tax0)
ncol(kc_tax0)
library(ggplot2)
install.packages("hexbin")
ggplot(kc_tax0, (aes(x=SqFtTotLiving, y=TaxAssessedValue))) + stat_binhex(colour="white") + theme_bw() + scale_fill_gradient(low="white", high="black") + labs(x="Finished Square Feet", y="Tax Assessed Value")

ggplot(kc_tax0, (aes(x=SqFtTotLiving, y=TaxAssessedValue))) +  stat_binhex(colour="white") + theme_bw() + scale_fill_gradient(low="white", high="black") + labs(x="Finished Square Feet", y="Tax Assessed Value")
ggplot(kc_tax0, (aes(x=SqFtTotLiving, y=TaxAssessedValue))) +  stat_binhex(colour="white")  +theme_bw()+ scale_fill_gradient(low="white", high="red")
x <- kc_tax0$SqFtTotLiving
y <- kc_tax0$TaxAssessedValue
hbin <- hexbin(x,y, xbins = 40)
plot(hbin)
boxplot(data=airline_stats.csv, ylim=c(0, 50))
airline<-read.csv("C:\\Users\\ashwi\\Desktop\\Ashwin\\PS_DS\\psds_data\\airline_stats.csv")
library(ggplot2)
ggplot(subset(kc_tax0,ZipCode %in% c(98188, 98105, 98108, 98126)),aes(x=SqFtTotLiving, y=TaxAssessedValue)) +stat_binhex(colour="white") +theme_bw() +scale_fill_gradient( low="white", high="blue") +facet_wrap("ZipCode")
