class Exam < ApplicationRecord
	has_many :topics
	belongs_to :subject
end
