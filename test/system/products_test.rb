require "application_system_test_case"

class ProductsTest < ApplicationSystemTestCase
  test "visiting the index" do
    visit "/"

    # save_and_open_screenshot

    assert_selector "h1", text: "Awesome Products"
    assert_selector ".card-product", count: Product.count
  end

  test "lets a signed in user create a new product" do
    login_as users(:george)
    visit "/products/new"


    fill_in "product_name", with: "Le Wagon"
    fill_in "product_tagline", with: "Coding Bootcamp"

    click_on 'Create Product'

    # save_and_open_screenshot

    assert_equal root_path, page.current_path
    assert_text "Coding Bootcamp"
  end
end
