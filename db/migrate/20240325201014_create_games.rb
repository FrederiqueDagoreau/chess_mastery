class CreateGames < ActiveRecord::Migration[7.1]
  def change
    create_table :games do |t|
      t.string :url
      t.float :score

      t.timestamps
    end
  end
end
