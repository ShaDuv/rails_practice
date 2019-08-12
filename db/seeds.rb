User.destroy_all
Topic.destroy_all
Answer.destroy_al
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
