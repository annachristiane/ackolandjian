
function[x]=Backsub(A)
b=A(:,max(size(A)));
A=A(:,1:max(size(A))-1);
n=length(A);
    x(n)=b(n)/A(n,n);
   
 for i=n-1:-1:1
     x(i)=b(i);
     for k=i+1:1:n
         x(i)=x(i)-A(i,k)*x(k);
     end
     x(i)=x(i)/A(i,i);
 end
end



