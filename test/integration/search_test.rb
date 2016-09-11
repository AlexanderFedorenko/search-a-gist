require 'test_helper'

class SearchTest < ActionDispatch::IntegrationTest
  test 'should return new search id when keyword provided' do
    get search_url('soprano')

    # TODO: Change Fixnum to Integer when Ruby 2.4 will be released
    assert_instance_of Fixnum, JSON.parse(response.body)['id']
  end

  test 'should return error when no keyword provided' do
    get searches_url

    assert_response :bad_request
  end
end
