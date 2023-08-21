class Property < ApplicationRecord
	has_many_attached :images
	belongs_to :user, dependent: :destroy
	has_many :feedbacks, dependent: :destroy
end
