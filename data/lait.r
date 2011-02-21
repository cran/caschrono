lait2 = read.table(system.file("/import/collecteLait.txt",package="caschrono"),
header=FALSE, sep=";", colClasses=c('character',rep('numeric',3)),dec=".",
col.names=c("mois","an","evol","coll.v","cum.v","coll.m","cum.m"))
lait= ts(lait2$coll.v/1000,start=c(1979,1), frequency = 12)
rm(lait2)