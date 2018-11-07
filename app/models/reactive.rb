class Reactive < ApplicationRecord
	belongs_to :topic
	has_many :variables
	has_many :options
end
