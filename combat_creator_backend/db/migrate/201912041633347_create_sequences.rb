class CreateSequences < ActiveRecord::Migration[6.0]
  def change
    create_table :sequences do |t|
      t.references :character, null: false, foreign_key: true
      t.references :weapon, null: false, foreign_key: true
      t.references :move, null: false, foreign_key: true
      t.references :fight, null:false, foreign_key: true
      
      t.timestamps
    end
  end
end
