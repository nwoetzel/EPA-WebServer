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

  test "get submit_multi_gene" do
    get :submit_multi_gene
    assert_response :success
  end
end