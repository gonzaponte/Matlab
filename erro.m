function[i]=erro(x)
i=0;
for k=0:300
    i=i+(-1)^k*x^(2*k+1)/((factorial(k))*(2*k+1));
end
i=i*2/pi^0.5;
end