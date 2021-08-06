require 'test_helper'

class KunisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @kuni = kunis(:one)
  end

  test "should get index" do
    get kunis_url
    assert_response :success
  end

  test "should get new" do
    get new_kuni_url
    assert_response :success
  end

  test "should create kuni" do
    assert_difference('Kuni.count') do
      post kunis_url, params: { kuni: { content: @kuni.content } }
    end

    assert_redirected_to kuni_url(Kuni.last)
  end

  test "should show kuni" do
    get kuni_url(@kuni)
    assert_response :success
  end

  test "should get edit" do
    get edit_kuni_url(@kuni)
    assert_response :success
  end

  test "should update kuni" do
    patch kuni_url(@kuni), params: { kuni: { content: @kuni.content } }
    assert_redirected_to kuni_url(@kuni)
  end

  test "should destroy kuni" do
    assert_difference('Kuni.count', -1) do
      delete kuni_url(@kuni)
    end

    assert_redirected_to kunis_url
  end
end
