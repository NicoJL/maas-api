class CreateServices < ActiveRecord::Migration[6.1]
  def change
    create_table :services do |t|
      t.string :name
      t.boolean :status, default: true

      t.timestamps
    end
  end
end
