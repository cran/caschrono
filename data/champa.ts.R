aa=scan(system.file("/import/champagne_2001.txt",package="caschrono"))
champa.ts = ts(aa/1000, start=c(2001,1), frequency=12)
rm(aa)