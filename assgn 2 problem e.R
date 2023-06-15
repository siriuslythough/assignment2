#problem(e)
array=numeric(length=100)
for (i in 1:100){
  array[i]=1
  i=i+1
}
vit<-function()
{
  n=100
  d=0
  while(n){
    j=sample(x=1:100, size=1)
    if(array[j]==1){
      array[j]=0.5
      n=n-1
    }
    else{
      array[j]=0.5
      break
    }
    d=d+1
  }
  print(d)
}
vit() 
days=numeric(length=1000)
for(i in 1:1000){
  days[i]=vit()
  i=i+1
}
answer=ceiling(mean(days))
answer