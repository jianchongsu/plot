china=c(12,13,14,15)
russian=c(20,20,21,12)
#for(i in 1:3)
#{china[i+1]=china[i+1]+china[i]; 
# russian[i+1]=russian[i+1]+russian[i]}


x=1:4
lm.sol=lm(china~x)
lm.sol2=lm(russian~x)
plot(china,xlim=c(0,13),ylim=c(0,30),col=2,pch=15,xlab="quarter",
     ylab="points",main="The Hope",panel.first=grid())
points(x,russian,pch=16,col=3)
abline(lm.sol,col=2)
abline(lm.sol2,col=3)
arrows(12,15,10,20,angle=40,col=2)
text(12,17,"CHINA",col=2)
arrows(4,5,6,8,angle=40,col=3)
text(4,7,"RUSSIAN",col=3)
legend("bottomright",legend=c("CHINA","RUSSIAN"),col=c(2,3),pch=c(15,16),bty="n")

for(i in 1:3)
{china[i+1]=china[i+1]+china[i]; 
 russian[i+1]=russian[i+1]+russian[i]}



x=seq(0,25,1);
y1=x*(25+x)/2;
y2=21*x;
plot(x,y1,main="如果看成数列的话",col="red",type="l",xlab="quarter",ylab="points")
abline(0,21,col="green")
arrows(15,70,11,180,angle=40,col=2)
text(15,125,"CHINA",col=2)
arrows(2,200,5,111,angle=40,col=3)
text(5,180,"RUSSIAN",col=3)
legend("bottomright",legend=c("CHINA","RUSSIAN"),col=c(2,3),pch=c(15,16),bty="n")
points(17,357,pch=19, col="blue")
text(19.5, 358, "超越",1,col="blue")