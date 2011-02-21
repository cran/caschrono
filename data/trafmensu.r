bb=read.table(file= system.file("/import/trafquoti.txt",package="caschrono"),
header=FALSE,quote="",sep="", colClasses=c('numeric','character'),
col.names =c('trafic','date'))

# agregation par an x mois
mois.an= as.numeric(paste(substr(bb$date,1,4), substr(bb$date,6,7), sep=""))
trafmens=aggregate(bb$traf, list(Mois.An = mois.an), sum)
trafmensu=ts(trafmens$x/1000,start= c(1993,1),frequency= 12)
rm(bb)
rm(mois.an)
rm(trafmens)
