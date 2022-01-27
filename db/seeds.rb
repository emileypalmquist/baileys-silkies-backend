Coop.destroy_all
AvailableChicken.destroy_all
Admin.destroy_all

puts "destroyed data"

# puts "creating coops..."

# suppliers = ["Lindsey", "Sage Acres"]
# colors = ['whites', 'buffs', 'black and paints']

# colors.each do |color|
#   Coop.create(name: color, supplier: false, description: "super cute silky chickens" )
# end

# suppliers.each do |supplier|
#   Coop.create(name: supplier, supplier: true, description: "this is a supplier")
# end

# puts "created coops"
# puts "creating available chickens..."

# sex = ['male', 'female', 'n/a']
# bool = [true, false]
# feather_type = ['standard', 'satan', 'frizzle', 'sizzle']
# colors = %w(white black blue splash paint buff partridge chocolate)

# 100.times do
#   c = AvailableChicken.create(coop: Coop.all.sample, sex: sex.sample, hatch_date: Faker::Date.between(from: '2021-09-23', to: Date.today), naked_neck: bool.sample, feather_type: feather_type.sample, color: colors.sample, available: bool.sample)
# end

# puts "created available chickens"

puts "creating admin..."

Admin.create(username: 'emileyisthebest', password: '123', admin: true)

puts "created admin"