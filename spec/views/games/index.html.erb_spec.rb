require 'rails_helper'

RSpec.describe "games/index", type: :view do
  before(:each) do
    assign(:games, [
      Game.create!(
        url: "Url",
        score: 2.5
      ),
      Game.create!(
        url: "Url",
        score: 2.5
      )
    ])
  end

  it "renders a list of games" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Url".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(2.5.to_s), count: 2
  end
end
