class Quote < ActiveRecord::Base
	validates :pickupline, presence: true, length: {minimum: 3, maximum: 120}
	validates :author, presence: true, length: {minimum: 2, maximum: 100}
end
