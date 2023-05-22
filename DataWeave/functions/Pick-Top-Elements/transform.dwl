%dw 2.0
output application/json
---
{
     TopCandidateList: (payload.candidates map ((candidate)-> {
         firstName: candidate.name,
         rank: candidate.score
     }) orderBy $.rank) [-payload.availablePositions to -1]
}

// This maps each candidate in the payload.candidates array to a new object. The new object contains two properties: firstName, which takes the value of the candidate's name, and rank, which takes the value of the candidate's score.

//This sorts the mapped candidates based on their rank in ascending order. The $ represents the current item being processed (candidate), and $.rank refers to the rank property of the candidate.