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

  test 'should return search results by search id' do
    get search_url('soprano')

    search_id = JSON.parse(response.body)['id']

    get search_result(search_id)

    assert_equal(3, JSON.parse(response.body))
  end
end
