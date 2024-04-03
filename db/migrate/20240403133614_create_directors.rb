class CreateDirectors < ActiveRecord::Migration[7.1]
  def change
    create_table :directors do |t|
      t.string :name
      t.date :birthdate
      t.string :nationality
      t.references :genre, null: false, foreign_key: true

      t.timestamps
    end
  end
end
