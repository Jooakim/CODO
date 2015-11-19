function societyRanking = CalculateSocietyRanking(societyFitness)
    

    nbrOfDimensions = length(societyFitness(1,1,:));
    societyRanking = zeros(1, length(societyFitness(1,:,1)), nbrOfDimensions);
    
    
    for d = 1:nbrOfDimensions
        societyFitnessForDimension = societyFitness(:,:,d);
        societyFitnessSum = sum(societyFitnessForDimension);

        % Calculates the ranking in an evaluation of sort
        % the minus sign makes the the sort in descending order.
        societyRanking(1,:,d) = floor(tiedrank(-societyFitnessSum));
    
    end
    

end

