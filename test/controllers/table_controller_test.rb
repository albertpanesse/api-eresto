require 'test_helper'

class TableControllerTest < ActionDispatch::IntegrationTest
  test "should get statuses" do
    get table_statuses_url
    assert_response :success
  end

  test "should get detail" do
    get table_detail_url
    assert_response :success
  end

end
