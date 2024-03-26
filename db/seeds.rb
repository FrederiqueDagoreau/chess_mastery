result_motives = {
  "LPDO": "Loose Pieces Drop Off",
  "Zeitnot": "You have less than 5 increments when your opponent has more than 20",
  "Perfect Game": "Opponent plays a perfect game",
  "Blunder Check": "You put a piece en prise",
  "Next Forcing Move": "You missed a direct forcing move from your opponent"
}

result_motives.each do |name, description|
  ResultMotive.find_or_create_by!(name:, description:)
end
