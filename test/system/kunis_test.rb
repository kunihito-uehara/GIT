require "application_system_test_case"

class KunisTest < ApplicationSystemTestCase
  setup do
    @kuni = kunis(:one)
  end

  test "visiting the index" do
    visit kunis_url
    assert_selector "h1", text: "Kunis"
  end

  test "creating a Kuni" do
    visit kunis_url
    click_on "New Kuni"

    fill_in "Content", with: @kuni.content
    click_on "Create Kuni"

    assert_text "Kuni was successfully created"
    click_on "Back"
  end

  test "updating a Kuni" do
    visit kunis_url
    click_on "Edit", match: :first

    fill_in "Content", with: @kuni.content
    click_on "Update Kuni"

    assert_text "Kuni was successfully updated"
    click_on "Back"
  end

  test "destroying a Kuni" do
    visit kunis_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Kuni was successfully destroyed"
  end
end
