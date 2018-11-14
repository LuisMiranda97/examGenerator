class Exam < ApplicationRecord
	belongs_to :subject
	has_many :topics_exam
	has_many :topics, through: :topics_exam
	accepts_nested_attributes_for :topics_exam,
									allow_destroy: true


	def create_reactives
		reactives = []
		topics_exam.each do |topic_exam|
			reactives.concat(Reactive.where(topic: topic_exam.topic).limit(topic_exam.num_of_reactives).order('RANDOM()').to_a)
		end
		return reactives
	end
end
