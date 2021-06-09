
def get_first_name_of_season_winner(data, season)
  winner = data[season].find do |contestant|
    contestant["status"] == "Winner"
  end
  winner["name"].split.first
end

def get_contestant_name(data, occupation)
  matchingContestant = data.values.flatten.find do |contestant|
    contestant["occupation"] == occupation
  end
  matchingContestant["name"]
end

def count_contestants_by_hometown(data, hometown)
  data.values.flatten.reduce(0) do |sum, contestant| 
    if contestant["hometown"] == hometown
      sum + 1
    else sum
    end
  end
end

def get_occupation(data, hometown)
  winner = data.values.flatten.find do |contestant| 
    contestant["hometown"] == hometown
  end
  winner["occupation"]
end

def get_average_age_for_season(data, season)
  totalAges = data[season].reduce(0) do |count, contestant|
    count + contestant["age"].to_f
  end
  totalContestants = data[season].length
  (totalAges/totalContestants).round
end
