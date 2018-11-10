function [ W_optimal,C_optimal, errors_vec, error_min, Max_Norm,Min_Norm] = SamplesFix( samples, lables, c_vec )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here

PRECENT_FOR_TRAINING = 0.70; %by the formula: 70*1/100
C_VECTOR_SIZE = length(c_vec);
CROSS_VALIDATION_TIMES = 5;

[samples,Max_Norm,Min_Norm] = MyNormSet(samples); %normalize each feature from zero to one


num_of_features = size(samples,2);

W_optimal = zeros(1,num_of_features); 
C_optimal = zeros(1,1);
[errors_vec] = zeros(1, CROSS_VALIDATION_TIMES * C_VECTOR_SIZE);
k = 1;

error_min = Inf;

for i = 1:C_VECTOR_SIZE 
    for j = 1:CROSS_VALIDATION_TIMES 
        
        [W, error_avarage] = CrossValidation(samples, PRECENT_FOR_TRAINING, lables, c_vec(i));
        error_avg = error_avarage;
        errors_vec(k) = error_avg; %for each C we enter the error average
        k = k+1;
        if(error_min >= error_avg && error_avg ~= 0)
            error_min = error_avg;
            W_optimal = W;
            C_optimal = c_vec(i);
        end
    end
end
end

