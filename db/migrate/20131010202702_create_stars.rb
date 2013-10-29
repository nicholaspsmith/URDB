class CreateStars < ActiveRecord::Migration
  def change
    create_table :stars do |t|
      t.string :name
      t.string :bio
      t.string :headshot_url

      t.timestamps
    end
  end
end
