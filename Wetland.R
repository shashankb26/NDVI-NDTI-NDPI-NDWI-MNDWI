library(raster)
library(sp,rgeos)
green=brick("F:\\STUDY MATERIAL\\Semester7\\GCZM\\Lab\\sunderban\\band3.tif")
red=brick("F:\\STUDY MATERIAL\\Semester7\\GCZM\\Lab\\sunderban\\band4.tif")
nir=brick("F:\\STUDY MATERIAL\\Semester7\\GCZM\\Lab\\sunderban\\band8.tif")
mir=brick("F:\\STUDY MATERIAL\\Semester7\\GCZM\\Lab\\sunderban\\band11.tif")
print(mir)
print(green)
a=(nir-red)
b=(nir+red)
c=a/b
plot(c,main="NDVI")
print(c)
writeRaster(c,filename = "F:\\STUDY MATERIAL\\Semester7\\GCZM\\Lab\\NDVI.tif",format="GTiff",overwrite=TRUE)
cc=projectRaster(mir,green)
cc
d=(cc-green)
e=(cc+green)
f=d/e
sh=mean(f)
plot(sh,main="NDPI")
print(sh)
writeRaster(sh,filename = "F:\\STUDY MATERIAL\\Semester7\\GCZM\\Lab\\NDPI.tif",format="GTiff",overwrite=TRUE)
g=(red-green)
h=(red+green)
i=g/h
plot(i,main="NDTI")
print(i)
writeRaster(i,filename = "F:\\STUDY MATERIAL\\Semester7\\GCZM\\Lab\\NDTI.tif",format="GTiff",overwrite=TRUE)
j=(green-cc)
k=(green+cc)
l=j/k
plot(l,main="MNDWI")
print(l)
writeRaster(l,filename = "F:\\STUDY MATERIAL\\Semester7\\GCZM\\Lab\\MNDWI.tif",format="GTiff",overwrite=TRUE)
m=(green-nir)
n=(green+nir)
o=m/n
plot(o,main="NDWI")
print(o)
writeRaster(o,filename = "F:\\STUDY MATERIAL\\Semester7\\GCZM\\Lab\\NDWI.tif",format="GTiff",overwrite=TRUE)


