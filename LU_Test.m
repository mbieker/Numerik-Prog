%Dieses Skript Testet die eben implementierte LU-Routine
for n = [5,10,50]

  A= rand(n)
  b= rand(n,1)
  LU =LU_decompose(A);
  z= forward_solve(LU,b);
  x = backward_solve(LU,z);

  %Fehler berechnen
  printf("Fehler: \n")
  delta = A*x-b
end
