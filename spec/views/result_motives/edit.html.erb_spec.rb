require 'rails_helper'

RSpec.describe "result_motives/edit", type: :view do
  let(:result_motive) {
    ResultMotive.create!(
      name: "MyString",
      description: "MyString"
    )
  }

  before(:each) do
    assign(:result_motive, result_motive)
  end

  it "renders the edit result_motive form" do
    render

    assert_select "form[action=?][method=?]", result_motive_path(result_motive), "post" do

      assert_select "input[name=?]", "result_motive[name]"

      assert_select "input[name=?]", "result_motive[description]"
    end
  end
end
