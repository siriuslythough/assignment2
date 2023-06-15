#problem(a)
library(imager)
flip_image<-function(image)
{
  image<-load.image("dog.jpeg")
  d=dim(image)
  d
  c=d[1]
  r=d[2]
  r
  c
  col.mat=as.array(image[ , ,1, ])
  copy=col.mat
  image=col.mat
  f=floor(r/2)
  for (i in 1:r)
  {
    for (j in 1:f)
    {
      a=col.mat[f-j+1,i,]
      col.mat[f-j+1,i,]=col.mat[f+j,i,]
      col.mat[f+j,i,]=a
    }
  }
  flip=as.cimg(col.mat)
  plot(flip)
}
flip_image()
