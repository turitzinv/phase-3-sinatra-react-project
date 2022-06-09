puts "🌱 Seeding Libraries and Books..."

Library.create(genre: "Comic Books")
Library.create(genre: "Adventure")
Library.create(genre: "How To")

Book.create(
  title: "Captain American Comics #1",
  author: "Joe Simon, Jack Kirby",
  year: 1941,
  read: TRUE,
  library_id: 1
)

Book.create(
  title: "Iron Man",
  author: "Archie Goodwin",
  year: 1968,
  read: FALSE,
  library_id: 1
)

Book.create(
  title: "Treasure Island",
  author: "Robert Louis Stevenson",
  year: 1883,
  read: TRUE,
  library_id: 2
)

Book.create(
  title: "Moby Dick",
  author: "Herman Melville",
  year: 1851,
  read: FALSE,
  library_id: 2
)

Book.create(
  title: "The Book of Ruby",
  author: "Huw Collingbourne",
  year: 2011,
  read: TRUE,
  library_id: 3
)

Book.create(
  title: "Origami 365",
  author: "Taro Yaguchi",
  year: 2014,
  read: FALSE,
  library_id: 3
)

puts "✅ Done seeding!"
