class CreateMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :year
      t.text :description
      t.string :genre
      t.string :country
      t.date :published_at

      t.timestamps
    end
  end
end
