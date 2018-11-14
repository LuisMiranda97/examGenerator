class Reactive < ApplicationRecord
	belongs_to :topic
	has_many :variables, dependent: :destroy
	has_many :options, dependent: :destroy

	enum reactive_types: [:static, :dynamic]

	accepts_nested_attributes_for :options, update_only: true
	accepts_nested_attributes_for :variables, update_only: true
end
