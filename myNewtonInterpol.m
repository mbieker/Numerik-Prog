function c = myNewtonInterpol(x,f)
%Gleiche Anzahl von Funktionswerten und Stuetzstellen
if (length(x) == length(f))
  n =  length(x);
else
  printf("Error!\n")
  return
end
%Coeffizienten mit dem Schema der dividierten Differenzen ausrechnen

dd(:,1) = x;
dd(:,2) = f;

for k = [1:n-1]
  dd(1:n-k, k+2) = (dd(2:n-k+1,k+1)-dd(1:n-k,k+1))./(dd(k+1:n,1) - dd(1:n-k,1));
end
c = dd(1,2:n+1);
end
