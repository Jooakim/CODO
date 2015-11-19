function societyRanking = CalculateSocietyRanking(societyFitness)
    societyRanking = zeros(length(societyFitness(1,:)), 1);
    
    societyFitnessSum = sum(societyFitness);
   
    % Calculates the ranking in an evaluation of sort
    % the minus sign makes the the sort in descending order.
    fitnessRankings = floor(tiedrank(-societyFitnessSum));
    

end

