%backward_solve.m - Diese Funktion loesst das LGS R*x = b
%durch rueckwaerts einsetzen
function x = backward_solve(LU,z)

  n = length(z);
  x = zeros(n,1);
  for i= n:-1:1
    x(i) = (z(i)- LU(i,i+1:n)*x(i+1:n))/LU(i,i);
  end

end
