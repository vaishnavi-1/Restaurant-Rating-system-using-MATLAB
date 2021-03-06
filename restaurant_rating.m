clear all;
network = load('Weight.mat');
Weight = network.Weight;
prompt = 'Food Quality? (good or bad):';
food_quality = input(prompt, 's');

if (strcmp(food_quality, 'good'))
    food_quality = 1;
else
    food_quality = 0;
end
    
prompt = 'Atmosphere? (good or bad):';
atm = input(prompt, 's');

if (strcmp(atm, 'good'))
    atm = 1;
else
    atm = 0;
end

prompt = 'Service? (good or bad):';
service = input(prompt, 's');

if (strcmp(service, 'good'))
    service = 1;
else
    service = 0;
end

decision_Matrix = [ food_quality;
                    atm;
                    service;
                 ];
output = Weight*decision_Matrix;
final_result = Sigmoid(output)
rating_score = final_result*100;
show_score = sprintf('The rating, score of restaurant is %.f',rating_score);
disp(show_score)
    
    