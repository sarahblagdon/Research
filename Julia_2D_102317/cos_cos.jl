function cos_cos( N, L )
# The function to determine the coefficients when we have a
# cos(jx)cos(px) or cos(ky)cos(qy)term.
A=zeros(Float64, N+1, N+1,N+1)
for j=0:N
   for m = 0:N
      for p = 0:N
        sump=0;
        if j==p && j==0
            sump=sump+L/2;
         end
       if j==p 
         sump = sump+L/2;
      end
        A[m+1,p+1,j+1] = sump;
      end
   end
end

return A
end
