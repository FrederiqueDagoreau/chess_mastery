class CreateGameResultMotives < ActiveRecord::Migration[7.1]
  def change
    create_table :game_result_motives do |t|
      t.references :game, null: false, foreign_key: true
      t.references :result_motive, null: false, foreign_key: true

      t.timestamps
    end
  end
end
