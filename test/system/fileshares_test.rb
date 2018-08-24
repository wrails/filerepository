require "application_system_test_case"

class FilesharesTest < ApplicationSystemTestCase
  setup do
    @fileshare = fileshares(:one)
  end

  test "visiting the index" do
    visit fileshares_url
    assert_selector "h1", text: "Fileshares"
  end

  test "creating a Fileshare" do
    visit fileshares_url
    click_on "New Fileshare"

    fill_in "Category", with: @fileshare.category
    fill_in "Description", with: @fileshare.description
    fill_in "File", with: @fileshare.file
    fill_in "Image", with: @fileshare.image
    fill_in "Keywords", with: @fileshare.keywords
    fill_in "Title", with: @fileshare.title
    click_on "Create Fileshare"

    assert_text "Fileshare was successfully created"
    click_on "Back"
  end

  test "updating a Fileshare" do
    visit fileshares_url
    click_on "Edit", match: :first

    fill_in "Category", with: @fileshare.category
    fill_in "Description", with: @fileshare.description
    fill_in "File", with: @fileshare.file
    fill_in "Image", with: @fileshare.image
    fill_in "Keywords", with: @fileshare.keywords
    fill_in "Title", with: @fileshare.title
    click_on "Update Fileshare"

    assert_text "Fileshare was successfully updated"
    click_on "Back"
  end

  test "destroying a Fileshare" do
    visit fileshares_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Fileshare was successfully destroyed"
  end
end
