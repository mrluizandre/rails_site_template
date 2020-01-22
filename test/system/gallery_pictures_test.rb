require "application_system_test_case"

class GalleryPicturesTest < ApplicationSystemTestCase
  setup do
    @gallery_picture = gallery_pictures(:one)
  end

  test "visiting the index" do
    visit gallery_pictures_url
    assert_selector "h1", text: "Gallery Pictures"
  end

  test "creating a Gallery picture" do
    visit gallery_pictures_url
    click_on "New Gallery Picture"

    fill_in "Description", with: @gallery_picture.description
    fill_in "Gallery", with: @gallery_picture.gallery_id
    fill_in "Name", with: @gallery_picture.name
    fill_in "Picture", with: @gallery_picture.picture
    click_on "Create Gallery picture"

    assert_text "Gallery picture was successfully created"
    click_on "Back"
  end

  test "updating a Gallery picture" do
    visit gallery_pictures_url
    click_on "Edit", match: :first

    fill_in "Description", with: @gallery_picture.description
    fill_in "Gallery", with: @gallery_picture.gallery_id
    fill_in "Name", with: @gallery_picture.name
    fill_in "Picture", with: @gallery_picture.picture
    click_on "Update Gallery picture"

    assert_text "Gallery picture was successfully updated"
    click_on "Back"
  end

  test "destroying a Gallery picture" do
    visit gallery_pictures_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Gallery picture was successfully destroyed"
  end
end
