class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :photo_url, null: false
      t.string :question, null: false
      t.integer :vote_tally
      t.integer :user_id, null: false_
      t.integer :best_answer_id

      t.timestamps
    end
  end
end
