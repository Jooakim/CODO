function [ socialInfluence ] = CalculateSocialInfluence(societyRanking, societyOpinions)
    nbrOfIndividuals = length(societyOpinions(:,1));
    nbrOfDimensions = length(societyOpinions(1,:));
    
    socicalInfluence = zeros(nbrOfIndividuals, nbrOfDimensions);
    

        for i = 1:nbrOfIndividuals

            for j = 1:nbrOfDimensions
                socialInfluence(i, j) = societyRanking(j)/abs(societyOpinions(i,1)-societyOpinions(i,j));
            end

        end



end

