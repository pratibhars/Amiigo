require "application_system_test_case"

class AmiibosTest < ApplicationSystemTestCase
  setup do
    @amiibo = amiibos(:one)
  end

  test "visiting the index" do
    visit amiibos_url
    assert_selector "h1", text: "Amiibos"
  end

  test "creating a Amiibo" do
    visit amiibos_url
    click_on "New Amiibo"

    click_on "Create Amiibo"

    assert_text "Amiibo was successfully created"
    click_on "Back"
  end

  test "updating a Amiibo" do
    visit amiibos_url
    click_on "Edit", match: :first

    click_on "Update Amiibo"

    assert_text "Amiibo was successfully updated"
    click_on "Back"
  end

  test "destroying a Amiibo" do
    visit amiibos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Amiibo was successfully destroyed"
  end
end
