class Restaurants
  attr_writer :responses
  
  def initialize
    @responses 
    @total = 0
  end
  
  def calculate_results
    @responses.each do |k,v|
      @total += v.to_i
    end
  end
  


def final_answer
  calculate_results
  restaurant_medium1 = [{"Jimmy John's" => "Jimmy+Johns,Chicago+IL"}, {"Panda Express" => "Panda+Express,Chicago+IL"}, {"Dominoes" => "Space+Needle,Seattle+WA"}]
  restaurant_low = [{"McDonald's" => "McDonalds,Chicago+IL"}, {"Dairy Queen" => "Dairy+Queen,Chicago+IL"}, {"Subway Food" => "Subway,Chicago+IL"}]
  restaurant_medium2 = [{"Chipotle" => "Chipotle,Chicago+IL"}, {"Potbelly's" => "Potbellys,Chicago+IL"}, {"Panera" => "Panera,Chicago+IL"}]
  restaurant_high = [{"Olive Garden" => "Olive+Garden,Chicago+IL"}, {"P.F Chang's" => "P.F+Changs,Chicago+IL"}, {"Chili's" => "Chilis,Chicago+IL"}]
  if @total >= 12 && @total <= 16
    return restaurant_low.sample
  elsif @total >= 17 && @total <= 24
    return restaurant_medium1.sample
  elsif @total >= 25 && @total <= 36
    return restaurant_medium2.sample
  elsif @total >= 37 && @total <= 48
    return restaurant_high.sample
  end
 end
end



