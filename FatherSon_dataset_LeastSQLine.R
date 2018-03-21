library(ggplot2)
x<-father.son$fheight
y<-father.son$sheight
group<-1:1078
data_f<-data.frame(x,y,group)
y<-x+3
means<-data.frame(x,y,group)
#x<-c(50,80)
#y<-x+3
d<-rbind(data_f,means)
slope<-coef(lm(y~x,data=data_f))["x"]
intercept<-coef(lm(y~x,data=data_f))["(Intercept)"]
x<-c(57,78)
y<-slope*x+intercept
line<-data.frame(x,y)
ggplot()+
  geom_point(data=data_f,aes(x=x,y=y))+
  geom_point(data=means,aes(x=x,y=y),color="red")+
  geom_line(data=line,aes(x=x,y=y),color="green")+
  geom_line(data=d,aes(x=x,y=y,group=group))

x<-means$x
y<-slope*x+intercept
means<-data.frame(x,y,group)

ggplot()+
  geom_point(data=data_f,aes(x=x,y=y))+
  geom_point(data=means,aes(x=x,y=y),color="red")+
  geom_line(data=line,aes(x=x,y=y),color="green")+
  geom_line(data=d,aes(x=x,y=y,group=group))

d<-rbind(data_f,means)
ggplot()+
  geom_point(data=data_f,aes(x=x,y=y))+
  geom_point(data=means,aes(x=x,y=y),color="red")+
  geom_line(data=line,aes(x=x,y=y),color="green")+
  geom_line(data=d,aes(x=x,y=y,group=group))

                                    
