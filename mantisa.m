function[y]=mantisa(x)
y=0;
for k=1:1e6
    y=y+sin(2*pi*k*x)/k;
end
y=0.5-y/pi;