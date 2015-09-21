require 'test_helper'

class QuotesControllerTest < ActionController::TestCase
  test "quote show page" do
    quote = Quote.create(:author => 'Keith Earnest', :pickupline => "I love your smile. May I buy you a drink?")
	get :show, :id => quote.id
	assert_response :success
  end

  test "quote show page, not found" do
  	get :show, :id => 'OMG'
  	assert_response :not_found
  end

end
