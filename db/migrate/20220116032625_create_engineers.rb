class CreateEngineers < ActiveRecord::Migration[6.1]
  def change
    create_table :engineers do |t|
      t.string :name
      t.string :color
      t.boolean :status

      t.timestamps
    end
  end
end
