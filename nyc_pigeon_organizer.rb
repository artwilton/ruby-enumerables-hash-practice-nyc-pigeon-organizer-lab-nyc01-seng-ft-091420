def nyc_pigeon_organizer(data)
    name_array = []
    data.each { |main_category, second_category| second_category.each { |third_category, name| name_array.push(name) } }
    new_hash = name_array.flatten.uniq.to_h { |x| [x, {:color => [], :gender => [], :lives => []}] }
    data[:color].each { |color, name_list| name_list.each {|name| new_hash[name][:color].push(color.to_s) } }
    data[:gender].each { |gender, name_list| name_list.each {|name| new_hash[name][:gender].push(gender.to_s) } }
    data[:lives].each { |lives, name_list| name_list.each {|name| new_hash[name][:lives].push(lives.to_s) } }
    new_hash
end
