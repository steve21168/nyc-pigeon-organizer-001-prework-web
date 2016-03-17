require 'byebug'
def nyc_pigeon_organizer(data)
  new_hash = {}
  #debugger
  data.each do |attribute, data_hash|
    data_hash.each do |data, arr_of_names|
      arr_of_names.each do |name|
        data_s = data.to_s

        if new_hash[name].nil?
          new_hash[name] = { attribute => [data_s] }
        elsif new_hash[name][attribute].nil?
          new_hash[name][attribute] = [data_s]
        else
          new_hash[name][attribute] << data_s
        end
      end
    end
  end
  new_hash
end
