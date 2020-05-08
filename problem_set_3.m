X_vector = random(' Binomial ' , 10 , 0.6, 1, 2)
tt=0;
for kk =1:max(X_vector)+1
    count (kk, 1) = kk - 1
    count (kk, 2) = sum(( kk - 1) == X_vector ) 
    tt=tt+count (kk, 1)*count (kk, 2)
end
tt/2