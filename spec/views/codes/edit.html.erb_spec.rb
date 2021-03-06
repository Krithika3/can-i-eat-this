require 'rails_helper'

RSpec.describe "codes/edit", type: :view do
  before(:each) do
    @code = assign(:code, Code.create!(
      :code => "MyString",
      :description => "MyString"
    ))
  end

  it "renders the edit code form" do
    render

    assert_select "form[action=?][method=?]", code_path(@code), "post" do

      assert_select "input#code_code[name=?]", "code[code]"

      assert_select "input#code_description[name=?]", "code[description]"
    end
  end
end
