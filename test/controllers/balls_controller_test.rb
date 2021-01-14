require 'test_helper'

class BallsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ball = balls(:one)
  end

  test "should get index" do
    get balls_url, as: :json
    assert_response :success
  end

  test "should create ball" do
    assert_difference('Ball.count') do
      post balls_url, params: { ball: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show ball" do
    get ball_url(@ball), as: :json
    assert_response :success
  end

  test "should update ball" do
    patch ball_url(@ball), params: { ball: {  } }, as: :json
    assert_response 200
  end

  test "should destroy ball" do
    assert_difference('Ball.count', -1) do
      delete ball_url(@ball), as: :json
    end

    assert_response 204
  end
end
