% Genetic algorithm testing script
% 1. This script generates an initial population of solutions
% 2. This script runs the genetic algorithm on the initial population
population = 1000;
num_features = 30;
mutation_rate = 0.01;
crossover_rate = 0.7;

for i = 1:population
    chromosomes(:,i) = round(rand(num_features,1));
end


for j = 1:100
    [chromosomes,fitness] = genetic(chromosomes,num_features,population,crossover_rate,mutation_rate);
    result(j) = sum(fitness);
end
plot(1:100,result(1:100))
axis([0 100 0 30000])