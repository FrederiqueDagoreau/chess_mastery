require 'rails_helper'

RSpec.describe "result_motives/show", type: :view do
  before(:each) do
    assign(:result_motive, ResultMotive.create!(
      name: "Name",
      description: "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Description/)
  end
end
