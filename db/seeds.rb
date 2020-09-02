#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Country.destroy_all
City.destroy_all

usa = Country.create name: "United States"
mexico = Country.create name: "Mexico"

City.create name: "Chicago", country: usa
City.create name: "Dallas", country: usa
City.create name: "Denver", country: usa
City.create name: "Mexico City", country: mexico
City.create name: "Cancun", country: mexico
City.create name: "Tijuana", country: mexico