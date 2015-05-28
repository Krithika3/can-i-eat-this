require 'rails_helper'

RSpec.describe "ingredients/new", type: :view do
  before(:each) do
    assign(:ingredient, Ingredient.new(
      :ingredient_name => "MyString",
      :description => "MyString"
    ))
  end

  it "renders new ingredient form" do
    render

    assert_select "form[action=?][method=?]", ingredients_path, "post" do

      assert_select "input#ingredient_ingredient_name[name=?]", "ingredient[ingredient_name]"

      assert_select "input#ingredient_description[name=?]", "ingredient[description]"
    end
  end
end
