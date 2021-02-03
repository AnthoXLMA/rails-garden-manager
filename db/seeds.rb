Category.destroy_all
Playground.destroy_all

playground_names = [
  "Brooklyn Temple",
  "My Cute Balcony",
  "English playground",
  "Court in Jackson",
  "Paris Tour Eiffel",
  "Growing Career Top Court",
  "Magic Garden"
]

playground_names.each do |playground_name|
  playground_request = RestClient.get("https://source.unsplash.com/1200x700/?basketball")
  playground = Playground.new(
      name: playground_name,
      location: 'chicago',
      banner_url: playground_request.request.url
    )
  playground.save!
  3.times do
    event_request = RestClient.get("https://source.unsplash.com/400x300/?event")
    event = Event.new(
      name: Faker::FunnyName.name,
      # date: "31-10-2022",
      price: "12",
      reward: "1000",
      image_url: event_request.request.url
    )
    event.playground = playground
    event.save!
    sleep(2)
  end
end

category_names = [
  "Dunk Contest",
  "Tournament",
  "Games",
  "Training",
  "3pts Challenge"
]

category_names.each do |category_name|
  category = Category.new(
    name:category_name
    )
  category.save!
end
