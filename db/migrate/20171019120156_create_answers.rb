class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.integer :user_id, null: false
      t.integer :post_id, null: false
      t.string :description_text, null: false
      t.integer :vote_tally

      t.timestamps
    end
  end
end

