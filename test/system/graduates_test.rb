require "application_system_test_case"

class GraduatesTest < ApplicationSystemTestCase
  setup do
    @graduate = graduates(:one)
  end

  test "visiting the index" do
    visit graduates_url
    assert_selector "h1", text: "Graduates"
  end

  test "creating a Graduate" do
    visit graduates_url
    click_on "New Graduate"

    fill_in "Name", with: @graduate.name
    click_on "Create Graduate"

    assert_text "Graduate was successfully created"
    click_on "Back"
  end

  test "updating a Graduate" do
    visit graduates_url
    click_on "Edit", match: :first

    fill_in "Name", with: @graduate.name
    click_on "Update Graduate"

    assert_text "Graduate was successfully updated"
    click_on "Back"
  end

  test "destroying a Graduate" do
    visit graduates_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Graduate was successfully destroyed"
  end
end
