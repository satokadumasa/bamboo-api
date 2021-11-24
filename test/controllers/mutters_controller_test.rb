require "test_helper"

class MuttersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mutter = mutters(:one)
  end

  test "should get index" do
    get mutters_url, as: :json
    assert_response :success
  end

  test "should create mutter" do
    assert_difference('Mutter.count') do
      post mutters_url, params: { mutter: { body: @mutter.body, user_id: @mutter.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show mutter" do
    get mutter_url(@mutter), as: :json
    assert_response :success
  end

  test "should update mutter" do
    patch mutter_url(@mutter), params: { mutter: { body: @mutter.body, user_id: @mutter.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy mutter" do
    assert_difference('Mutter.count', -1) do
      delete mutter_url(@mutter), as: :json
    end

    assert_response 204
  end
end
