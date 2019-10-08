class Bean < ApplicationRecord
	belongs_to :user
	belongs_to :shop
	has_one :impression, dependent: :destroy
	accepts_nested_attributes_for :impression
	has_many :recipes, dependent: :destroy
	has_many :bean_likes, dependent: :destroy
end
