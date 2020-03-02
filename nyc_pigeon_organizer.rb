require "pry"

def pigeon_name_hash (list)
  inner_hash = Hash.new 
  
  hash_names = list.keys
  
  hash_names.each do |key|
    inner_hash[key] = []
  end 
  inner_hash

end

def nyc_pigeon_organizer(data)
  pigeon_list = Hash.new

  data[:color].each do |color, v|
    v.map do |name|
      if !pigeon_list.include? name
        pigeon_list[name] = pigeon_name_hash(data)
        binding.pry
      end
    end
  end
  
  pigeon_list
end
