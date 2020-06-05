function[B,L,C]=pivoting(A,b)

B=[A b'];
n=length(B);
for k=1:n-2
    
   [p,o]=max(abs(B(k:n-1,k)));
   for j=k:n
       a=B(k,j);
       B(k,j)=B(o,j);
       B(o,j)=a;
   end
end

[C,L]=gauss(A,b);

n=length(A);
for i=1:n
    for j=1:i
    L(i,i)=1;
    end
end

C=C(:,1:n);


    







