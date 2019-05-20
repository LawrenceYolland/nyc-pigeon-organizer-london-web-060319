require "pry"
# pigeon_data = {
#   :color => {
#     :purple => ["Theo", "Peter Jr.", "Lucky"],
#     :grey => ["Theo", "Peter Jr.", "Ms. K"],
#     :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
#     :brown => ["Queenie", "Alex"]
#   },
#   :gender => {
#     :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
#     :female => ["Queenie", "Ms. K"]
#   },
#   :lives => {
#     "Subway" => ["Theo", "Queenie"],
#     "Central Park" => ["Alex", "Ms. K", "Lucky"],
#     "Library" => ["Peter Jr."],
#     "City Hall" => ["Andrew"]
#   }
# }
def nyc_pigeon_organizer(pigeon_data)
  # write your code here!
  new_hash = Hash.new(0)
  pigeon_data.each do |categories,data|
    data.each do |information, name_list|
      name_list.each do |names|
        new_hash.has_key?(names) ?
          (new_hash[names].has_key?(categories)  ?
          new_hash[names][categories] << information.to_s :
          new_hash[names][categories] = [information.to_s]) :
          new_hash[names] = {categories => [information.to_s]}
          # binding.pry
      end
    end
  end
  new_hash
end
# nyc_pigeon_organizer(pigeon_data)
