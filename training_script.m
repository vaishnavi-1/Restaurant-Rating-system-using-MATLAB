input= [ 0 0 1;
         0 1 1;
         1 0 1;
         1 1 1;
      ];
correct_output= [ 0
                  0
                  1
                  1];
Weight= 2*rand(1,3) - 1;
for epoch=1:40000
    Weight= function_rating(Weight, input, correct_output);
end
save('Weight.mat')

