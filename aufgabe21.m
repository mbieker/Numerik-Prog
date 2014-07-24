format long

% Fuer jeden Teil einzeln ausrechnen
printf("Aufgabe a)\n")
x = -5.5;
for n = 3:3:30
  k = 0:n;
  element = x.^k./factorial(k);
  sum(element)
end
printf("Aufgabe b)\n")
x = 5.5;
for n = 3:3:30
  k = 0:n;
  element = x.^k./factorial(k);
  1/sum(element)
end

printf("Aufgabe c)\n")
x = -0.5;
for n = 3:3:30
  k = 0:n;
  element = x.^k./factorial(k);
  sum(element)^11
end
