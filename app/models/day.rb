class Day < ApplicationRecord
	has_many :service_days, dependent: :destroy
	has_many :services, through: :service_days
end
