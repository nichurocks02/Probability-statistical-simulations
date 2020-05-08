x=rand(1,10000);
lamda=1;
mu=1/lamda;
y=expinv(x);
a=sum(y)
d=y/a
plot(hist(d))
hold on
b=exppdf(x,mu);
c=sum(b)
e=b/c
plot(hist(e))
sum(d)
sum(e)
hold on

