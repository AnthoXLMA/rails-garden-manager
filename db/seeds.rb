Playground.destroy_all
Category.destroy_all

playground_names = [
  "French garden",
  "My Cute Balcony",
  "English garden",
  "Flowered patio",
  "Garden in Japan",
  "Walk among flowers",
  "Magic garden"
]

playground_names.each do |playground_name|
  playground_request = RestClient.get("https://source.unsplash.com/1200x700/?basketball")
  playground = Playground.new(
      name: playground_name,
      banner_url: playground_request.request.url
    )
  playground.save!
  3.times do
    event_request = RestClient.get("https://source.unsplash.com/400x300/?event")
    event = Event.new(
      name: Faker::FunnyName.name,
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
