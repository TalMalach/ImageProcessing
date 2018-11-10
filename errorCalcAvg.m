function [num_of_errors_avg, num_of_errors] = errorCalcAvg (W,samples_tst,lables_tst)
num_of_rows = size(samples_tst,1); 
num_of_errors = 0;

for i = 1:num_of_rows 
    error_tmp = (W*samples_tst(i,:))*lables_tst(i);
    if error_tmp < 0
        num_of_errors = num_of_errors + 1;
    end
end
num_of_errors_avg = num_of_errors/num_of_rows;
end

