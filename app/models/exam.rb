class Exam < ApplicationRecord
	has_many :topics
	has_many :topics, through: :exam_topics
end
