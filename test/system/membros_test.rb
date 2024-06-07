require "application_system_test_case"

class MembrosTest < ApplicationSystemTestCase
  setup do
    @membro = membros(:one)
  end

  test "visiting the index" do
    visit membros_url
    assert_selector "h1", text: "Membros"
  end

  test "creating a Membro" do
    visit membros_url
    click_on "New Membro"

    fill_in "Email", with: @membro.email
    fill_in "Nome", with: @membro.nome
    click_on "Create Membro"

    assert_text "Membro was successfully created"
    click_on "Back"
  end

  test "updating a Membro" do
    visit membros_url
    click_on "Edit", match: :first

    fill_in "Email", with: @membro.email
    fill_in "Nome", with: @membro.nome
    click_on "Update Membro"

    assert_text "Membro was successfully updated"
    click_on "Back"
  end

  test "destroying a Membro" do
    visit membros_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Membro was successfully destroyed"
  end
end
