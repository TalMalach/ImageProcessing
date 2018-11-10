function  W  = mySubGradient( C, W, n, samples_xi, yi )

assert(size(W,1) == size(samples_xi,2)); % check if the two vectors are in the same dimention

Pos_Or_Neg= 1 - yi*(W'*samples_xi');

if Pos_Or_Neg<=0
    
    W=W/n;
    
else
    
    W=W/n - C*yi*samples_xi';
    
end

end
