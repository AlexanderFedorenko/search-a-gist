require 'test_helper'

class SearchTest < ActionDispatch::IntegrationTest
  test 'should return new search id when keyword provided' do
    get search_url('qwe')

    assert_instance_of Integer, JSON.parse(response.body)
  end

  test 'should return error when no keyword provided' do
    get search_url

    assert_response :bad_request
  end
end
