class CreateRoles < ActiveRecord::Migration
  def change
    create_table :roles do |t|
      t.string :character
      t.references :star, index: true
      t.references :movie, index: true

      t.timestamps
    end
  end
end
