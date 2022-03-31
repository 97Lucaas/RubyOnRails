require "application_system_test_case"

class AnnivsTest < ApplicationSystemTestCase
  setup do
    @anniv = annivs(:one)
  end

  test "visiting the index" do
    visit annivs_url
    assert_selector "h1", text: "Annivs"
  end

  test "creating a Anniv" do
    visit annivs_url
    click_on "New Anniv"

    check "Active" if @anniv.active
    fill_in "Birthdate", with: @anniv.birthdate
    fill_in "Name", with: @anniv.name
    click_on "Create Anniv"

    assert_text "Anniv was successfully created"
    click_on "Back"
  end

  test "updating a Anniv" do
    visit annivs_url
    click_on "Edit", match: :first

    check "Active" if @anniv.active
    fill_in "Birthdate", with: @anniv.birthdate
    fill_in "Name", with: @anniv.name
    click_on "Update Anniv"

    assert_text "Anniv was successfully updated"
    click_on "Back"
  end

  test "destroying a Anniv" do
    visit annivs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Anniv was successfully destroyed"
  end
end
