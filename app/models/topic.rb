class Topic < ApplicationRecord
	belongs_to :subject
	has_many :reactives
end
