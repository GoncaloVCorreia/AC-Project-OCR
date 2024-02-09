%%T -> Perfect concatenado 100 vezes  A -> Input de 1000 caracteres
function [Filtrd] = filterAssMem(data)
load('T.mat')
load('A.mat')
Wp=T*pinv(A);
Filtrd=Wp*data;

save ('assmem.mat',  'Filtrd')
