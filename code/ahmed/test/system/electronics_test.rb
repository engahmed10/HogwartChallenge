require "application_system_test_case"

class ElectronicsTest < ApplicationSystemTestCase
  setup do
    @electronic = electronics(:one)
  end

  test "visiting the index" do
    visit electronics_url
    assert_selector "h1", text: "Electronics"
  end

  test "creating a Electronic" do
    visit electronics_url
    click_on "New Electronic"

    click_on "Create Electronic"

    assert_text "Electronic was successfully created"
    click_on "Back"
  end

  test "updating a Electronic" do
    visit electronics_url
    click_on "Edit", match: :first

    click_on "Update Electronic"

    assert_text "Electronic was successfully updated"
    click_on "Back"
  end

  test "destroying a Electronic" do
    visit electronics_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Electronic was successfully destroyed"
  end
end
