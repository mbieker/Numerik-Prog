% Diese Function loest das LGS Lz = b
%Durch Vorfaehrts einsetzen
function z = forward_solve(LU,b)
  n=length(b);
  z = ones(n,1);
  for i = 1:n
    z(i) = b(i) -LU(i,1:i-1)* z(1:i-1);

end
