function SamplesTestNormalized = NormTestSet(SamplesTest, Max_Norm, Min_Norm)

[rows,cols]= size(SamplesTest);

SamplesTestNormalized = zeros(rows,cols);

for i=1: cols
    
    SamplesTestNormalized(:,i)= (SamplesTest(:,i)-Min_Norm(i)) / (Max_Norm(i)-Min_Norm(i));
    
end

end

