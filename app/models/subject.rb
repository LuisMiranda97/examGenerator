class Subject < ApplicationRecord
	has_many :topics, dependent: :destroy
	has_many :exams

	validates :name_subject, presence: true
end
