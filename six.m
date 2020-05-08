%using uniform random values% 
X=rand(1,1000);
lamda=1;
mu=1/lamda;
%finding the inverse exponential function of of uniform random value X%  
Y=expinv(X);

%plotting the pmf of Y%
plot(hist(Y))
hold on

%finding the exponential pdf of random values 'x' %
C=exppdf(X,lamda);
% plotting the exponential pdf % 
plot(hist(C))
hold on

%repeating the above experiment but generating exponential random variables instead of uniform random variables%

x=exprnd(1,[1,1000]);
lamda=1;
y=expinv(x);
plot(hist(y))
hold on
c=exppdf(x,lamda);
plot(hist(c))
hold on


