function OrthogMult_2D(N,Lx)
# Create all combinations of the multiplication of orthogonal functions.

Ax = sin_cos_sin( N, Lx );
Bx = cos_cos_cos( N, Lx );
Cx = cos_sin_sin( N, Lx );
Dx = sin_sin_cos( N, Lx );
Ex = sin_sin(N,Lx);
Fx = cos_cos(N,Lx);

return Ax,Bx,Cx,Dx,Ex,Fx
end
