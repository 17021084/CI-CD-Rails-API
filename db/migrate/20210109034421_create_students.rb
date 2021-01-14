class CreateStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :students do |t|
      t.string :full_name
      t.timestamps
    end
  end
end
