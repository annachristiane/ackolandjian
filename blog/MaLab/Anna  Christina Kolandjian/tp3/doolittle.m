function[A,y,x]=doolittle(A,b)

n=length(A);     %A is augmented matrix
for k=1:n-1
    for i=k+1:n
        A(i,k)=A(i,k)/A(k,k);
    end
    
    for i=k+1:n
        for j=k+1:n
            A(i,j)=A(i,j)-A(k,j)*A(i,k);
        end
    end
end

y(1)=b(1);
for i=2:n
     y(i)=b(i);
    for j=1:i-1
    y(i)=y(i)-A(i,j)*y(j);
    end
end


n=length(A);
x(n)=y(n)/A(n,n);
for i=n-1:-1:1
    
x(i)=y(i);
for j=i+1:n
x(i)=x(i)-A(i,j)*x(j);

end
x(i)=x(i)/A(i,i);
end
