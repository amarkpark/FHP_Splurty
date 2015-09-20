require 'test_helper'

class QuoteTest < ActiveSupport::TestCase

	test "unique_tag" do 
		quote = Quote.create(:author => 'Keith Earnest', :pickupline => "I love your smile. May I buy you a drink?")
		expected = "KE#" + quote.id.to_s
		actual = quote.unique_tag
		assert_equal expected, actual
	end

end
