class Exam < ApplicationRecord
	has_many :exam_topics
	has_many :topics, through: :exam_topics
	belongs_to :subject
	has_many :reactives
end
