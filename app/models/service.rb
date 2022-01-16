class Service < ApplicationRecord
	has_many :service_days, dependent: :destroy
	has_many :days, through: :service_days
end
