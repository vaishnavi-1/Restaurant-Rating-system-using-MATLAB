function Weight= function_rating(Weight, input, correct_output);
alpha = 0.9;
initial_Weight = zeros(3,1);
N = 4;

for k=1:N
    transposed_Input = input(k,:)';
    weighted_Sum = Weight*transposed_Input;
    output = Sigmoid(weighted_Sum);
    d = correct_output(k);
    error = d - output;
    delta = output*(1-output)*error;
    modified_Weight = alpha*delta*transposed_Input;
    initial_Weight = initial_Weight + modified_Weight;
end

average_Weight = initial_Weight/N;
Weight(1) = Weight(1) + average_Weight(1);
Weight(2) = Weight(2) + average_Weight(2);
Weight(3) = Weight(3) + average_Weight(3);

end

