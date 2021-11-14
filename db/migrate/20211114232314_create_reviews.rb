class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.integer :stars
      t.integer :movie_id
      t.integer :user_id
      t.string :review_description

      t.timestamps
    end
  end
end