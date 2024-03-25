require 'rails_helper'

RSpec.describe "result_motives/index", type: :view do
  before(:each) do
    assign(:result_motives, [
      ResultMotive.create!(
        name: "Name",
        description: "Description"
      ),
      ResultMotive.create!(
        name: "Name",
        description: "Description"
      )
    ])
  end

  it "renders a list of result_motives" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Description".to_s), count: 2
  end
end
