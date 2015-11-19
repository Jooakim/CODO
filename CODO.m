% The pseudo-code of the CODO algorithm is as follows:
% 
% Initialize opinions for every dimension d by random assignment of values from (Xmin, Xmax) to society.opinions;
% 
% iter = 0;
% 
% WHILE (iter < max_iter && error > = min_error) DO
% 
% society.fitness = EvaluateFitnessFcn(society.opinions);
% 
% society.ranking = calcRank(society.fitness); // It ranks the individuals based on society fitness
%
% iter = iter + 1;
% 
% FOR each individual i and each dimension d DO
% 
% Calculate wij of neighbours j of individual i with respect to dimension d.
% 
% Update opinion of individual i as defined above.
% 
% END (FOR)
% 
% END (WHILE)

sizeOfSociety = 10;
nbrOfDimensions = 1;
xMin = 0;
xMax = 10;
maxTime = 100;
minError = 1e-2;
mooreRange = 2;


societyOpinions = (xMax - xMin) * rand(sizeOfSociety, sizeOfSociety, nbrOfDimensions) + xMin

time = 0;
error = 1;


while time < maxTime && error >= minError
    
    societyFitness = EvaluateFitness(societyOpinions);
    
    societyRanking = CalculateSocietyRanking(societyFitness); 
    time = time + 1;
    
    socialInfluence = CalculateSocialInfluence(societyRanking, societyOpinions);
    
    societyOpinions = UpdateOpinions(socialInfluence, societyOpinions);
    
    
end


