require 'pry'

def game_hash
  {
    :home => {
      :team_name => "Brooklyn Nets",
      :colors => ["Black", "White"],
      :players => {
          "Alan Anderson" => {
          :number => 0,
          :shoe => 16,
          :points => 22,
          :rebounds => 12,
          :assists => 12,
          :steals => 3,
          :blocks => 1,
          :slam_dunks => 1
        },
        "Reggie Evans" => {
          :number => 30,
          :shoe => 14,
          :points => 12,
          :rebounds => 12,
          :assists => 12,
          :steals => 12,
          :blocks => 12,
          :slam_dunks => 7
        },
        "Brook Lopez" => {
          :number => 11,
          :shoe => 17,
          :points => 17,
          :rebounds => 19,
          :assists => 10,
          :steals => 3,
          :blocks => 1,
          :slam_dunks => 15
        },
        "Mason Plumlee" => {
          :number => 1,
          :shoe => 19,
          :points => 26,
          :rebounds => 11,
          :assists => 6,
          :steals => 3,
          :blocks => 8,
          :slam_dunks => 5
        },
        "Jason Terry" => {
          :number => 31,
          :shoe => 15,
          :points => 19,
          :rebounds => 2,
          :assists => 2,
          :steals => 4,
          :blocks => 11,
          :slam_dunks => 1
        }}
    },
    :away => {
      :team_name => "Charlotte Hornets",
      :colors => ["Purple", "Turquoise"],
      :players => {
        "Jeff Adrien" => {
          :number => 4,
          :shoe => 18,
          :points => 10,
          :rebounds => 1,
          :assists => 1,
          :steals => 2,
          :blocks => 7,
          :slam_dunks => 2
        },
        "Bismack Biyombo" => {
          :number => 0,
          :shoe => 16,
          :points => 12,
          :rebounds => 4,
          :assists => 7,
          :steals => 22,
          :blocks => 15,
          :slam_dunks => 10
        },
        "DeSagna Diop" => {
          :number => 2,
          :shoe => 14,
          :points => 24,
          :rebounds => 12,
          :assists => 12,
          :steals => 4,
          :blocks => 5,
          :slam_dunks => 5
        },
        "Ben Gordon" => {
          :number => 8,
          :shoe => 15,
          :points => 33,
          :rebounds => 3,
          :assists => 2,
          :steals => 1,
          :blocks => 1,
          :slam_dunks => 0
        },
        "Kemba Walker" => {
          :number => 33,
          :shoe => 15,
          :points => 6,
          :rebounds => 12,
          :assists => 12,
          :steals => 7,
          :blocks => 5,
          :slam_dunks => 12
      }}
    }
  }
end   



def num_points_scored(player_name)
    hash = game_hash
    hash.each do |location, team_data|
     team_data[:players].each do |name, data|
        if player_name == name
          return data[:points]
        end  
      end
    end
end  

def shoe_size(player_name)
    hash = game_hash
    hash.each do |location, team_data|
     team_data[:players].each do |name, data|
        if player_name == name
          return data[:shoe]
        end  
      end
    end
end  

def team_colors(team_name)
    
  game_hash.each do |location, team|
    if team[:team_name] == team_name
      return team[:colors]
    end 
  end
end
  
def team_names
  game_hash.map do |location, team|
     team[:team_name]
  end 
end

def player_numbers(team_name)
  new_arr = []
  game_hash.each do |location, team|
    if team[:team_name] == team_name
      team.each do |attributes, data| 
        if attributes == :players
          data.each do |player|
            new_arr << player[1][:number]
           
          end
        end 
      end
    end
  end 
  new_arr
end 

def player_stats(players_name)
  game_hash.each do |location, team|
    team.each do |attributes, data|
      if attributes == :players
        data.each do |player, stats|
           if player == players_name
            return stats 
          end
        end
      end
    end
  end
end

def big_shoe_rebounds
  biggest_shoe = 0 
  rebounds = 0 
    game_hash.each do |location, team|
      team.each do |attributes, data|
        if attributes == :players
          data.each do |player, stats|
        
         if stats[:shoe] > biggest_shoe
          biggest_shoe = stats[:shoe] 
          rebounds = stats[:rebounds]  
         end 
        end
       end   
      end
    end
    rebounds 
end 

