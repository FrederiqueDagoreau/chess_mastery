require 'rails_helper'

RSpec.describe "result_motives/new", type: :view do
  before(:each) do
    assign(:result_motive, ResultMotive.new(
      name: "MyString",
      description: "MyString"
    ))
  end

  it "renders new result_motive form" do
    render

    assert_select "form[action=?][method=?]", result_motives_path, "post" do

      assert_select "input[name=?]", "result_motive[name]"

      assert_select "input[name=?]", "result_motive[description]"
    end
  end
end
