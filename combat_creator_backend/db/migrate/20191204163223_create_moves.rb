class CreateMoves < ActiveRecord::Migration[6.0]
  def change
    create_table :moves do |t|
      t.string :action
      t.string :technique
      t.string :line

      t.timestamps
    end
  end
end
