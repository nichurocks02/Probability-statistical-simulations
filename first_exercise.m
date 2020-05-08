clc;
clear all;
close all;
c=0;
w=rand(100,1);


for i=drange(w)
    if w(i)<=0.25
        c=c+1;
        disp('number of occurances of 1 2 3 and 4 are'),disp(c)
    else
        disp('probability doesnt exists')
    end 
end
probability = c/100
disp(c)
