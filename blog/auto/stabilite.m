function [ h ] = stabilite( a,b )
r=roots(a);
t=roots(b);
x=absroots(b);
n=size(r);
d=size(t);
q=size(a);
p=zeros(d(1),1);
for i=1:d(1)
   if x(i)<=1
       p(i)=0;
   elseif q(2)==1
       p(i)=1;
   else
       for j=1:n(1)
           if t(i)~= r(j)
               p(i)=1;
           else 
               p(i)=0;
               break
           end
       end
   end
end
if p == zeros(d(1),1)
    h=0;
else
    h=1;
end

    
               


end

