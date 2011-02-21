pkgname <- "caschrono"
source(file.path(R.home("share"), "R", "examples-header.R"))
options(warn = 1)
options(pager = "console")
library('caschrono')

assign(".oldSearch", search(), pos = 'CheckExEnv')
cleanEx()
nameEx("Box.test.2")
### * Box.test.2

flush(stderr()); flush(stdout())

### Name: Box.test.2
### Title: 'Portemanteau' tests
### Aliases: Box.test.2
### Keywords: ts

### ** Examples

set.seed(123)
y1 = arima.sim(n=100,list(ar=-.7), sd=sqrt(4))
a1=Box.test.2(y1, nlag=c(3,6,9,12),type="Ljung-Box",decim=4)



cleanEx()
nameEx("Tel_extrait")
### * Tel_extrait

flush(stderr()); flush(stdout())

### Name: Tel_extrait
### Title: Telephone consumption in a firm
### Aliases: Tel_extrait
### Keywords: datasets

### ** Examples

don.mois1=read.csv2(file= system.file("/import/Tel_extrait.csv",package="caschrono"),
  col.names=c("Date.app","Heur.deb.app", "Code Dest", "Dest Det","Dur app sec.",
  "Mont app EU"), skip=0, stringsAsFactors=FALSE)



cleanEx()
nameEx("acf2y")
### * acf2y

flush(stderr()); flush(stdout())

### Name: acf2y
### Title: Plots of the ACF and PACF of a time series
### Aliases: acf2y
### Keywords: ts

### ** Examples

data(nottem)
acf2y(nottem)



cleanEx()
nameEx("armaselect")
### * armaselect

flush(stderr()); flush(stdout())

### Name: armaselect
### Title: Minic method
### Aliases: armaselect
### Keywords: ts

### ** Examples

# Simulation of an ARMA(1,2) model
set.seed(4123)                                                                                                
n2 = 210                                                                                                     
yc = arima.sim(n = 200, list( ar = -0.8, ma= c(-0.3, 0.6)), sd = sqrt(1.5))                               
yc = yc-10                                                                               
armaselect(yc, nbmod=5) 



cleanEx()
nameEx("champa.ts")
### * champa.ts

flush(stderr()); flush(stdout())

### Name: champa.ts
### Title: Monthly shipments of bottles of champagne for the period
###   2001-2010
### Aliases: champa.ts
### Keywords: datasets

### ** Examples

data(champa.ts)
# The executed code is : 
## Not run: 
aa=scan(system.file("/import/champagne_2001.txt",package="caschrono"))
champa.ts = ts(aa/1000, start=c(2001,1), frequency=12)
## End(Not run)



cleanEx()
nameEx("cor.arma")
### * cor.arma

flush(stderr()); flush(stdout())

### Name: cor.arma
### Title: Correlation matrix of the parameters for an Arima model
### Aliases: cor.arma
### Keywords: ts

### ** Examples

# Simulation of an ARMA(1,2) model
set.seed(4123)                                                                                                
n2 = 210                                                                                                     
yc = arima.sim(n = 200, list( ar = -0.8, ma= c(-0.3, 0.6)), sd = sqrt(1.5))                               
yc = yc-10  
fit <- Arima(yc,order=c(1,0,2))
cor.arma(fit)



cleanEx()
nameEx("csdl")
### * csdl

flush(stderr()); flush(stdout())

### Name: csdl
### Title: French stock and returns
### Aliases: csdl
### Keywords: datasets

### ** Examples

data(csdl)
# we create then the returns
aa = returns(csdl, percentage = TRUE)
aab <- aa[complete.cases(aa) == TRUE,]
r.csdl = its(aab, as.POSIXct(row.names(aab)))



cleanEx()
nameEx("essil")
### * essil

flush(stderr()); flush(stdout())

### Name: essil
### Title: Essilor stock for the period 2006-2009
### Aliases: essil
### Keywords: datasets

### ** Examples

data(essil)
# code obtained like that
# deb = "2006-01-01"; fin = "2009-12-31"  
# essil= priceIts(instrument="EI.PA",start=deb ,end=fin, quote="Close")
# colnames(essil) = "essilor"



cleanEx()
nameEx("indbourse")
### * indbourse

flush(stderr()); flush(stdout())

### Name: indbourse
### Title: Stock price indices for the period 2006-2010
### Aliases: indbourse
### Keywords: datasets

### ** Examples

data(indbourse)



cleanEx()
nameEx("khct")
### * khct

flush(stderr()); flush(stdout())

### Name: khct
### Title: Monthly electricity comsumption for the period 1970-1984
### Aliases: khct
### Keywords: datasets

### ** Examples

data(khct)
# The executed code is : 
## Not run: 
khct = read.csv2(file= system.file("/import/conselec.csv",package="caschrono"))
attach(khct)
khc = ts(cbind(kwh, htdd,cldd), frequency = 12, start=c(1970,1))
kwh = khc[,1]
htdd = khc[,2]
cldd = khc[,3]
temps = time(kwh)
## End(Not run)



cleanEx()
nameEx("lait")
### * lait

flush(stderr()); flush(stdout())

### Name: lait
### Title: Milk collection in France
### Aliases: lait
### Keywords: datasets

### ** Examples

data(lait)



cleanEx()
nameEx("m30")
### * m30

flush(stderr()); flush(stdout())

### Name: m30
### Title: Fatalities in car accidents in France for the period 1973-2006
### Aliases: m30
### Keywords: datasets

### ** Examples

data(m30)



cleanEx()
nameEx("plot2acf")
### * plot2acf

flush(stderr()); flush(stdout())

### Name: plot2acf
### Title: ACF plots of two series
### Aliases: plot2acf
### Keywords: ts

### ** Examples

data(nottem)
set.seed(2561)
innov1 = rnorm(290,sd=4.18)
y  = arima.sim(list(order = c(12,0,1), ma=-.7, ar=c(rep(0,11),.9)), 
innov =innov1, n.start =50, n = 240) + 50
plot2acf(nottem, y, main=c("ACF nottem","ACF SAR"))



cleanEx()
nameEx("plotacfthemp")
### * plotacfthemp

flush(stderr()); flush(stdout())

### Name: plotacfthemp
### Title: Plots the ACF and PACF of a theoretical ARMA model and the
###   empirical ACF and PACF of an observed series
### Aliases: plotacfthemp
### Keywords: ts

### ** Examples

# Simulation of a Ma(2)
set.seed(951)                                                                                                                                                                                                    
ya = arima.sim(n = 200, list( ma = c(-0.3, 0.6)), sd = sqrt(1.5))                                                                                                                                                                                      

# Representation 
plotacfthemp(ya, ma=c(-0.3,0.6), titre="MA(2)")   



cleanEx()
nameEx("popfr")
### * popfr

flush(stderr()); flush(stdout())

### Name: popfr
### Title: French population for the period 1846-1951
### Aliases: popfr
### Keywords: datasets

### ** Examples

data(popfr)



cleanEx()
nameEx("t_stat")
### * t_stat

flush(stderr()); flush(stdout())

### Name: t_stat
### Title: Arima coefficients tests
### Aliases: t_stat
### Keywords: ts

### ** Examples

set.seed(123)
y1 = arima.sim(n=100,list(ar=-.7), sd=sqrt(4))
my1 = Arima(y1, order=c(1,0,0),include.mean = FALSE)
t_stat(my1)



cleanEx()
nameEx("trafmensu")
### * trafmensu

flush(stderr()); flush(stdout())

### Name: trafmensu
### Title: Monthly Air traffic at Toulouse Blagnac Airport for the period
###   1993-2007
### Aliases: trafmensu
### Keywords: datasets

### ** Examples

data(trafmensu)
# The executed code is : 
## Not run: 
bb=read.table(file= system.file("/import/trafquoti.txt",package="caschrono"),
header=FALSE,quote="",sep="", colClasses=c('numeric','character'),
col.names =c('trafic','date'))
mois.an= as.numeric(paste(substr(bb$date,1,4), substr(bb$date,6,7), sep=""))
trafmens=aggregate(bb$traf, list(Mois.An = mois.an), sum)
trafmensu=ts(trafmens$x/1000,start= c(1993,1),frequency= 12)
## End(Not run)



cleanEx()
nameEx("xy.acfb")
### * xy.acfb

flush(stderr()); flush(stdout())

### Name: xy.acfb
### Title: Representation of a time series and its ACF and PACF
### Aliases: xy.acfb
### Keywords: ts

### ** Examples

data(nottem)
xy.acfb(nottem)



### * <FOOTER>
###
cat("Time elapsed: ", proc.time() - get("ptime", pos = 'CheckExEnv'),"\n")
grDevices::dev.off()
###
### Local variables: ***
### mode: outline-minor ***
### outline-regexp: "\\(> \\)?### [*]+" ***
### End: ***
quit('no')
