require 'test_helper'

class RaxmlControllerTest < ActionController::TestCase
  test "get index" do
    get :index
    assert_response :success
  end
  
  test "get submit_single_gene" do
    get :submit_single_gene
    assert_response :success
  end

  test "get submit_multiple_gene" do
    get :submit_multiple_gene
    assert_response :success
  end
end
require 'test_helper'
