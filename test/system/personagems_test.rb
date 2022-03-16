require "application_system_test_case"

class PersonagemsTest < ApplicationSystemTestCase
  setup do
    @personagem = personagems(:one)
  end

  test "visiting the index" do
    visit personagems_url
    assert_selector "h1", text: "Personagems"
  end

  test "creating a Personagem" do
    visit personagems_url
    click_on "New Personagem"

    fill_in "Descricao", with: @personagem.descricao
    fill_in "Imagem", with: @personagem.imagem
    fill_in "Nome", with: @personagem.nome
    click_on "Create Personagem"

    assert_text "Personagem was successfully created"
    click_on "Back"
  end

  test "updating a Personagem" do
    visit personagems_url
    click_on "Edit", match: :first

    fill_in "Descricao", with: @personagem.descricao
    fill_in "Imagem", with: @personagem.imagem
    fill_in "Nome", with: @personagem.nome
    click_on "Update Personagem"

    assert_text "Personagem was successfully updated"
    click_on "Back"
  end

  test "destroying a Personagem" do
    visit personagems_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Personagem was successfully destroyed"
  end
end
