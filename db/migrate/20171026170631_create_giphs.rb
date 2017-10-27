class CreateGiphs < ActiveRecord::Migration
  def change
    create_table :giphs do |t|
      t.string :image_url

      t.timestamps
    end
  end
end
