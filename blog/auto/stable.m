a=input('Donner les coefficients du numerateur sous forme de vecteur ligne');
b=input('Donner les coefficients du denominateur sous forme de vecteur ligne');
h=stabilite(a,b);
if h==0
   disp(' H(z) est Stable');
else
    disp('H(z) est instable');
end

