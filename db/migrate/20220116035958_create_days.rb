class CreateDays < ActiveRecord::Migration[6.1]
  def change
    create_table :days do |t|
      t.string :name
      t.integer :nday

      t.timestamps
    end
  end
end
