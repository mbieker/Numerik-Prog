% Rechnen mit dem Hornerschema

x = single(0.8:5e-5:1.2);

%Zuerst in Normalform
figure(1)
p1 = x.^7 - 7*x.^6 +21*x.^5 -35*x.^4 +35*x.^3 -21*x.^2+7*x -1;
%p1 = (x-1).^7;
plot(x,p1);

%Jetzt mit Horner
figure(2)
p2 = ((((((x-7).*x + 21).*x - 35).*x + 35).*x - 21).*x + 7).*x - 1;
plot(x,p2);
