function [ X ] = absroots( Y )
t=roots(Y);
r=size(t);
X=zeros(r(1),1);
for i=1:r(1)
   X(i)=abs(t(i));
end
end

