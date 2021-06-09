# require "pry"

def get_first_name_of_season_winner(data, season)
  winner_array = data[season].select {|contestant|
    contestant["status"] == "Winner"
}

winner = winner_array[0]
winner_name = winner["name"].split(" ").first

winner_name

end


def get_contestant_name(data, occupation)
  data.values.flatten.each {|contestant|
    if contestant["occupation"] == occupation
      return contestant["name"]
    end
}
end

# def get_contestant_name(data, occupation)
#   target = data.values.flatten.find {|contestant|
#     contestant["occupation"] == get_occupation
#   }
#   target["name"]
# }
# end ============== THIS IS THE SAME AS THE ABOVE

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each {|season, contestants|
    contestants.each {|contestant|
      if contestant["hometown"] == hometown
        counter += 1
      end
  }
}
counter
end

def get_occupation(data, hometown)
  # code here
end

def get_average_age_for_season(data, season)
  (data[season].map { |contestant| contestant["age"].to_f } / data[season].size).round
end
