class Topic < ApplicationRecord
	belongs_to :subject
	has_many :exam_topics
	has_many :exams, through: :exam_topics
end
