require 'test_helper'

class CakeDealersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cake_dealer = cake_dealers(:one)
  end

  test "should get index" do
    get cake_dealers_url
    assert_response :success
  end

  test "should get new" do
    get new_cake_dealer_url
    assert_response :success
  end

  test "should create cake_dealer" do
    assert_difference('CakeDealer.count') do
      post cake_dealers_url, params: { cake_dealer: {  } }
    end

    assert_redirected_to cake_dealer_url(CakeDealer.last)
  end

  test "should show cake_dealer" do
    get cake_dealer_url(@cake_dealer)
    assert_response :success
  end

  test "should get edit" do
    get edit_cake_dealer_url(@cake_dealer)
    assert_response :success
  end

  test "should update cake_dealer" do
    patch cake_dealer_url(@cake_dealer), params: { cake_dealer: {  } }
    assert_redirected_to cake_dealer_url(@cake_dealer)
  end

  test "should destroy cake_dealer" do
    assert_difference('CakeDealer.count', -1) do
      delete cake_dealer_url(@cake_dealer)
    end

    assert_redirected_to cake_dealers_url
  end
end
