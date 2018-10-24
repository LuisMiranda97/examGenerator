class Subject < ApplicationRecord
	has_many :topics
	has_many :exams
end
