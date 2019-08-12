User.destroy_all
Topic.destroy_all
Answer.destroy_all
25.times do |index|
  User.create!(user_name: Faker::TvShows::Simpsons.character)
  rand(1...4).times do |middex|
    question = Faker::Lorem.question(word_count: 4, supplemental: false, random_words_to_add: 3)
    topic = Topic.new(question)
    topic.user = topic.save!
  #   rand(5...17).times do |pokedex|
  #     Answer.create!(text_body: Faker::Movies::HitchhikersGuideToTheGalaxy.quote)
  #   end
  end
end




# Topic.create!(question: Faker::Lorem.question(word_count: 4, supplemental: false, random_words_to_add: 3))
