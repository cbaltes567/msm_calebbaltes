class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :year
      t.string :description
      t.integer :director_id
      t.integer :duration
      t.string :image

      t.timestamps
    end
  end
end
