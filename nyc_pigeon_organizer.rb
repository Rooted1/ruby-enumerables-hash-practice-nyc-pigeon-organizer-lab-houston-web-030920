require "pry"

#method creates inner hash that takes color, gender, lives as keys and array as value
def pigeon_name_hash (list)
  inner_hash = Hash.new 
  hash_names = list.keys
  hash_names.each do |key|
    inner_hash[key] = []
  end 
  inner_hash
end

#-------------------------------------------

# if pigeon_list does not contain name, create name key and add matching data 
def nyc_pigeon_organizer(data)
  pigeon_list = Hash.new

  data[:color].each do |color, cv|
    cv.map do |name|
      if !pigeon_list.include? name
        pigeon_list[name] = pigeon_name_hash(data)
      end
      pigeon_list[name][:color] << color.to_s
    end
  end
  
  #add gender
  data[:gender].each do |gender, gv|
    gv.map do |name|
      pigeon_list[name][:gender] << gender.to_s
    end
  end
  
  #add location
  data[:lives].each do |live, lv|
    lv.map do |name|
      pigeon_list[name][:lives] << live.to_s
    end
  end
  pigeon_list
end
