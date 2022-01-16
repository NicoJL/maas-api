class AddInitHourToServiceDays < ActiveRecord::Migration[6.1]
  def change
  	add_column :service_days, :hour_init, :integer, default: 0
  	add_column :service_days, :hour_end, :integer, default: 0
  end
end
