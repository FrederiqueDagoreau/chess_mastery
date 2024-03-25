class CreateResultMotives < ActiveRecord::Migration[7.1]
  def change
    create_table :result_motives do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
