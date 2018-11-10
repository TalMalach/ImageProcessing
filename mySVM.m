function W   = mySVM( samples, lables, C )

alpha = 1;
EPOCH_TIMES = 3;

num_of_samples = size(samples, 1); 
num_of_featurs = size(samples, 2); 

EPOCH_TIME = num_of_samples * EPOCH_TIMES; 

W = zeros(num_of_featurs, 1); 


for t = 1:EPOCH_TIME 
    i = randi(num_of_samples); %4,6,18,...30 times % random skin picture each iteration
    
    %i = randi([1 num_of_samples]); %4,6,18,...30 times % random skin picture each iteration

    
    W = W - (alpha/t)*mySubGradient(C, W, num_of_samples, samples(i,:), lables(i));
    
    
    
    %1 iteration: [w1,w2,w3] = [w1,w2,w3] - (1/1) * sub_gradient_vec1
     %2 iteration:[w1,w2,w3] = [w1,w2,w3] - (1/2) * sub_gradient_vec2
     %...
     %735171 iteration:[w1,w2,w3] = [w1,w2,w3] - (1/735171) vecn
     %sub_gradient_valn
end



end


function W= Stochastic_Gradient_Decent(samp_trn,mrk_trn,curr_c)

EPOCH_TIMES=3;

Alpha=1;

[R,C]= size(samp_trn);

W= zeros(C,1);

T= R*EPOCH_TIMES;

for t=1:T

    i=randi(R);
    
    W=W - (Alpha/t) * (Sub_Gradient(W,R,samp_trn(i,:), mrk_trn(i),curr_c));

      
end
end
