10.times do
  Post.create(title: Faker::Company.catch_phrase, content: Faker::Lorem.paragraphs.join("\n\n"))
end
