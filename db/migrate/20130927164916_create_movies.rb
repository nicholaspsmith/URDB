class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.string :gif_url
      t.string :trailer_url
      t.string :description

      t.timestamps
    end
  end
end
