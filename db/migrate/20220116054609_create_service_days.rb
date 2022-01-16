class CreateServiceDays < ActiveRecord::Migration[6.1]
  def change
    create_table :service_days do |t|
      t.time :hour_start
      t.time :end_hour
      t.references :service, null: false, foreign_key: true
      t.references :day, null: false, foreign_key: true

      t.timestamps
    end
  end
end
