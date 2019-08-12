User.destroy_all
Topic.destroy_all
Answer.destroy_all
# 25.times do |index|
#   users = User.create!(user_name: Faker::TvShows::Simpsons.character)
#   rand(1...4).times do |index|
#     question = Faker::Lorem.question(word_count: 4, supplemental: false, random_words_to_add: 3)
#     topic = Topic.new(:question => question)
#     topic.user = topic.save!
#   #   rand(5...17).times do |pokedex|
#   #     Answer.create!(text_body: Faker::Movies::HitchhikersGuideToTheGalaxy.quote)
#   #   end
#   end
# end


25.times do
  user = User.new(:user_name => Faker::TvShows::Simpsons.character)
  5.times do
    question = Faker::Lorem.question(word_count: 4, supplemental: false, random_words_to_add: 3)
    topic = user.topics.new(:question => question)
    topic.save
    5.times do
      answer_content = Faker::Movies::HitchhikersGuideToTheGalaxy.quote
      answer = topic.answers.new(:text_body => answer_content, :user_id => user.id)
      answer.save
    end
  end
end



# Topic.create!(question: Faker::Lorem.question(word_count: 4, supplemental: false, random_words_to_add: 3))
