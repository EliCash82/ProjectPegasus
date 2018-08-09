require "application_system_test_case"

class CartoonsTest < ApplicationSystemTestCase
  setup do
    @cartoon = cartoons(:one)
  end

  test "visiting the index" do
    visit cartoons_url
    assert_selector "h1", text: "Cartoons"
  end

  test "creating a Cartoon" do
    visit cartoons_url
    click_on "New Cartoon"

    fill_in "Country", with: @cartoon.country
    fill_in "Endyear", with: @cartoon.endyear
    fill_in "Image", with: @cartoon.image
    fill_in "Network", with: @cartoon.network
    fill_in "Releaseyear", with: @cartoon.releaseyear
    fill_in "Studio", with: @cartoon.studio
    fill_in "Summary", with: @cartoon.summary
    fill_in "Title", with: @cartoon.title
    click_on "Create Cartoon"

    assert_text "Cartoon was successfully created"
    click_on "Back"
  end

  test "updating a Cartoon" do
    visit cartoons_url
    click_on "Edit", match: :first

    fill_in "Country", with: @cartoon.country
    fill_in "Endyear", with: @cartoon.endyear
    fill_in "Image", with: @cartoon.image
    fill_in "Network", with: @cartoon.network
    fill_in "Releaseyear", with: @cartoon.releaseyear
    fill_in "Studio", with: @cartoon.studio
    fill_in "Summary", with: @cartoon.summary
    fill_in "Title", with: @cartoon.title
    click_on "Update Cartoon"

    assert_text "Cartoon was successfully updated"
    click_on "Back"
  end

  test "destroying a Cartoon" do
    visit cartoons_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cartoon was successfully destroyed"
  end
end
