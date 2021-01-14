class CreateBalls < ActiveRecord::Migration[6.0]
  def change
    create_table :balls do |t|
      t.string :name
      t.string :size
      t.timestamps
    end
  end
end
