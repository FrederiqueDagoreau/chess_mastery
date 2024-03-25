require 'rails_helper'

RSpec.describe "games/show", type: :view do
  before(:each) do
    assign(:game, Game.create!(
      url: "Url",
      score: 2.5
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Url/)
    expect(rendered).to match(/2.5/)
  end
end
