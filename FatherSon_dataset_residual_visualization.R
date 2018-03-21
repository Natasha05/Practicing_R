x<-father.son$fheight
y<-father.son$sheight
group<-1:1078
data_f<-data.frame(x,y,group)
y<-x+3
means<-data.frame(x,y,group)
x<-c(50,80)
y<-x+3
line<-data.frame(x,y)
d<-rbind(data_f,means)
library(ggplot2)
ggplot()+
  geom_point(data=data_f,aes(x=x,y=y))+
  geom_point(data=means,aes(x=x,y=y),color="red")+
  geom_line(data=line,aes(x=x,y=y))+
  geom_line(data=d,aes(x=x,y=y,group=group))
  
                                    
