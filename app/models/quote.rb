class Quote < ActiveRecord::Base
	validates :pickupline, presence: true, length: {minimum: 3, maximum: 120}
	validates :author, presence: true, length: {minimum: 2, maximum: 100}

	def unique_tag
		abbr = self.author.split(" ").collect do |namestring|
			namestring[0]
		end

		abbr.join + '#' + self.id.to_s
	end
end
