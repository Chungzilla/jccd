require "application_system_test_case"

class CakeDealersTest < ApplicationSystemTestCase
  setup do
    @cake_dealer = cake_dealers(:one)
  end

  test "visiting the index" do
    visit cake_dealers_url
    assert_selector "h1", text: "Cake Dealers"
  end

  test "creating a Cake dealer" do
    visit cake_dealers_url
    click_on "New Cake Dealer"

    click_on "Create Cake dealer"

    assert_text "Cake dealer was successfully created"
    click_on "Back"
  end

  test "updating a Cake dealer" do
    visit cake_dealers_url
    click_on "Edit", match: :first

    click_on "Update Cake dealer"

    assert_text "Cake dealer was successfully updated"
    click_on "Back"
  end

  test "destroying a Cake dealer" do
    visit cake_dealers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cake dealer was successfully destroyed"
  end
end
