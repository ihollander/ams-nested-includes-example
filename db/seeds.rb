3.times do
  author = Author.create(name: Faker::Name.unique.name)
  5.times do
    author.posts.create(title: Faker::Lorem.sentence, content: Faker::Lorem.paragraph)
  end
end


Post.all.each do |post|
  3.times do
    author = Author.find(Author.pluck(:id).sample)
    post.comments.create(content: Faker::Lorem.paragraph, author: author)
  end
end 
