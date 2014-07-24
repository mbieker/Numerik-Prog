% Dieses Skript soll die Newto Interpoolation testen

for n = [7,12,17]

  %aequidistante Stuetzstellen
  i = [0:n];
  x_aeq = -1 + 2*i/n;
  x_cheb = cos((2*i+1)*pi/(2*n+2));
  x_gitter = [-1:0.02:1];

  y_aeq = runge(x_aeq);
  y_cheb = runge(x_cheb);
  y_gitter = runge(x_gitter);

  figure(n)


  %Polynnom fuer cheb Knoten
  c_cheb = myNewtonInterpol(x_cheb,y_cheb);
  %basispolynome berechnen
  c_cheb =  c_cheb'*ones(1,101);
  for j = [2:n+1]
    c_cheb(j:n+1,:) =  c_cheb(j:n+1,:)*diag(x_gitter - x_cheb(j-1));
  end
  p_cheb = sum(c_cheb,1);

  %Polynnom fuer aequidistante Knoten
  c_aeq = myNewtonInterpol(x_aeq,y_aeq);
  %basispolynome berechnen
   c_aeq =  c_aeq'*ones(1,101);
  for j = [2:n+1]
    c_aeq(j:n+1,:) =  c_aeq(j:n+1,:)*diag(x_gitter - x_aeq(j-1));
  end
  p_aeq = sum(c_aeq,1);


plot(x_gitter,y_gitter, 'g',x_aeq,y_aeq, 'r*',x_cheb,y_cheb, 'b*',x_gitter,p_aeq,'r',x_gitter,p_cheb,'b');
end
