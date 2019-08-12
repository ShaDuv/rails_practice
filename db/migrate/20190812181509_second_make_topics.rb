class SecondMakeTopics < ActiveRecord::Migration[5.2]
  def change
    create_table :topics do |t|
      t.string :question
      t.belongs_to :user, foreign_key: true
      t.timestamps
    end
  end
end
