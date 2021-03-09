require "application_system_test_case"

class ProductsTest < ApplicationSystemTestCase
  setup do
    @product = products(:one)
  end

  test "visiting the index" do
    visit products_url
    assert_selector "h1", text: "Products"
  end

  test "creating a Product" do
    visit products_url
    click_on "New Product"

    fill_in "Existencia", with: @product.existencia
    fill_in "Gondola", with: @product.gondola
    fill_in "Nombre", with: @product.nombre
    fill_in "P costo", with: @product.p_costo
    fill_in "P minimo", with: @product.p_minimo
    fill_in "P venta", with: @product.p_venta
    fill_in "Total costo", with: @product.total_costo
    fill_in "User", with: @product.user_id
    fill_in "V precio venta", with: @product.v_precio_venta
    click_on "Create Product"

    assert_text "Product was successfully created"
    click_on "Back"
  end

  test "updating a Product" do
    visit products_url
    click_on "Edit", match: :first

    fill_in "Existencia", with: @product.existencia
    fill_in "Gondola", with: @product.gondola
    fill_in "Nombre", with: @product.nombre
    fill_in "P costo", with: @product.p_costo
    fill_in "P minimo", with: @product.p_minimo
    fill_in "P venta", with: @product.p_venta
    fill_in "Total costo", with: @product.total_costo
    fill_in "User", with: @product.user_id
    fill_in "V precio venta", with: @product.v_precio_venta
    click_on "Update Product"

    assert_text "Product was successfully updated"
    click_on "Back"
  end

  test "destroying a Product" do
    visit products_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Product was successfully destroyed"
  end
end
