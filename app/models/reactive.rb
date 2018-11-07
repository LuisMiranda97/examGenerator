class Reactive < ApplicationRecord
	belongs_to :topic
	has_many :variables
end
