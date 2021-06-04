require "application_system_test_case"

class LikeLogsTest < ApplicationSystemTestCase
  setup do
    @like_log = like_logs(:one)
  end

  test "visiting the index" do
    visit like_logs_url
    assert_selector "h1", text: "Like Logs"
  end

  test "creating a Like log" do
    visit like_logs_url
    click_on "New Like Log"

    fill_in "Category", with: @like_log.category_id
    fill_in "Photo", with: @like_log.photo_id
    fill_in "User", with: @like_log.user_id
    click_on "Create Like log"

    assert_text "Like log was successfully created"
    click_on "Back"
  end

  test "updating a Like log" do
    visit like_logs_url
    click_on "Edit", match: :first

    fill_in "Category", with: @like_log.category_id
    fill_in "Photo", with: @like_log.photo_id
    fill_in "User", with: @like_log.user_id
    click_on "Update Like log"

    assert_text "Like log was successfully updated"
    click_on "Back"
  end

  test "destroying a Like log" do
    visit like_logs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Like log was successfully destroyed"
  end
end
