class Topic < ApplicationRecord
	belongs_to :exam, optional: true
	belongs_to :subject
	has_many :reactives
end
