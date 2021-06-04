require "test_helper"

class LikeLogsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @like_log = like_logs(:one)
  end

  test "should get index" do
    get like_logs_url
    assert_response :success
  end

  test "should get new" do
    get new_like_log_url
    assert_response :success
  end

  test "should create like_log" do
    assert_difference('LikeLog.count') do
      post like_logs_url, params: { like_log: { category_id: @like_log.category_id, photo_id: @like_log.photo_id, user_id: @like_log.user_id } }
    end

    assert_redirected_to like_log_url(LikeLog.last)
  end

  test "should show like_log" do
    get like_log_url(@like_log)
    assert_response :success
  end

  test "should get edit" do
    get edit_like_log_url(@like_log)
    assert_response :success
  end

  test "should update like_log" do
    patch like_log_url(@like_log), params: { like_log: { category_id: @like_log.category_id, photo_id: @like_log.photo_id, user_id: @like_log.user_id } }
    assert_redirected_to like_log_url(@like_log)
  end

  test "should destroy like_log" do
    assert_difference('LikeLog.count', -1) do
      delete like_log_url(@like_log)
    end

    assert_redirected_to like_logs_url
  end
end
