class CreateMovies < ActiveRecord::Migration[7.1]
  def change
    create_table :movies do |t|
      t.string :titles
      t.text :story_line
      t.date :release_date
      t.string :country_origin
      t.integer :running_time
      t.references :director, null: false, foreign_key: true
      t.references :genre, null: false, foreign_key: true

      t.timestamps
    end
  end
end
