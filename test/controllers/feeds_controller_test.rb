require 'test_helper'

class FeedsControllerTest < ActionController::TestCase
  setup do
    @feed = feeds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:feeds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create feed" do
    assert_difference('Feed.count') do
      post :create, feed: { description: @feed.description, feed_id: @feed.feed_id, feed_updated_at: @feed.feed_updated_at, item_id: @feed.item_id, language: @feed.language, last_build_date: @feed.last_build_date, title: @feed.title, url: @feed.url, user_id: @feed.user_id }
    end

    assert_redirected_to feed_path(assigns(:feed))
  end

  test "should show feed" do
    get :show, id: @feed
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @feed
    assert_response :success
  end

  test "should update feed" do
    patch :update, id: @feed, feed: { description: @feed.description, feed_id: @feed.feed_id, feed_updated_at: @feed.feed_updated_at, item_id: @feed.item_id, language: @feed.language, last_build_date: @feed.last_build_date, title: @feed.title, url: @feed.url, user_id: @feed.user_id }
    assert_redirected_to feed_path(assigns(:feed))
  end

  test "should destroy feed" do
    assert_difference('Feed.count', -1) do
      delete :destroy, id: @feed
    end

    assert_redirected_to feeds_path
  end
end