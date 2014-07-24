%Diese Funktion erstellt die LR Zerlegung einer Matrix ohne
%Pivotisierung
function LU = LU_decompose(A)
  LU = A;
  n = size(LU)(1);
  for i = 1:n-1
    %Q-Werte Speichern
    LU(i+1:n, i) = LU(i+1:n, i)/LU(i,i);
    LU(i+1:n,i+1:n) -= LU(i+1:n, i)*LU(i,i+1:n);

end
