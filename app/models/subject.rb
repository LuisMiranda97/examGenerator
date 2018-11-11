class Subject < ApplicationRecord
	has_many :topics
	has_many :exams

	validates :name_subject, presence: true
end
