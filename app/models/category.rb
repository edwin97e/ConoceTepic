class Category < ApplicationRecord
	has_many :event
	has_many :site
	has_many :route

	validates :name, presence: true
end
