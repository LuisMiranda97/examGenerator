class Exam < ApplicationRecord
	belongs_to :subject
	has_many :topics, dependent: :destroy
	accepts_nested_attributes_for :topics,
									allow_destroy: true
end
