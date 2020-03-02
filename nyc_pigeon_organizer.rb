require "pry"

#create an inner hash that takes color, gender, lives as keys and an array as value
def pigeon_name_hash (list)
  inner_hash = Hash.new 
  hash_names = list.keys
  hash_names.each do |key|
    inner_hash[key] = []
  end 
  inner_hash
end

#-------------------------------------------

def nyc_pigeon_organizer(data)
  pigeon_list = Hash.new

  data[:color].each do |color, v|
    v.map do |name|
      if !pigeon_list.include? name
        pigeon_list[name] = pigeon_name_hash(data)
      end
      pigeon_list[name][:color] << color.to_s
    end
  end
  
  data[:gender].each do |g|
    v.map do |name|
      pigeon_list[name][:gender] << g.to_s
    end
  end
  
  
  binding.pry
  pigeon_list
end
