function  cos_sin_sin( N, L )
# The function to determine the coefficients when we have a
# cos(jx)sin(mx)sin(px) or cos(ky)sin(ny)sin(qy)term.
A = zeros(Float64,N+1,N+1,N+1)
for j=0:N
   for m = 0:N
      for p = 0:N
        sump=0;
        if j == -m-p
            sump=sump-L/4;
        end
        if j == p-m
            sump=sump+L/4;
        end
        if j == m-p
            sump=sump+L/4;
        end
        if j ==  m+p
            sump=sump-L/4;
        end
        A[m+1,p+1,j+1] = sump;
      end
   end
end
return A
end
