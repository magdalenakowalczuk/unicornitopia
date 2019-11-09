require "application_system_test_case"

class UnicornsTest < ApplicationSystemTestCase
  setup do
    @unicorn = unicorns(:one)
  end

  test "visiting the index" do
    visit unicorns_url
    assert_selector "h1", text: "Unicorns"
  end

  test "creating a Unicorn" do
    visit unicorns_url
    click_on "New Unicorn"

    check "Magical" if @unicorn.magical
    fill_in "Name", with: @unicorn.name
    fill_in "Source", with: @unicorn.source
    fill_in "Year", with: @unicorn.year
    click_on "Create Unicorn"

    assert_text "Unicorn was successfully created"
    click_on "Back"
  end

  test "updating a Unicorn" do
    visit unicorns_url
    click_on "Edit", match: :first

    check "Magical" if @unicorn.magical
    fill_in "Name", with: @unicorn.name
    fill_in "Source", with: @unicorn.source
    fill_in "Year", with: @unicorn.year
    click_on "Update Unicorn"

    assert_text "Unicorn was successfully updated"
    click_on "Back"
  end

  test "destroying a Unicorn" do
    visit unicorns_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Unicorn was successfully destroyed"
  end
end
