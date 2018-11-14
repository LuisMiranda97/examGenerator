class Topic < ApplicationRecord
	belongs_to :subject
	has_many :reactives, dependent: :destroy
	has_many :topics_exam
	has_many :exams, through: :topics_exam
end
