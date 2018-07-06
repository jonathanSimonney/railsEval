require 'rails_helper'

RSpec.describe "gazooies/index", type: :view do
  before(:each) do
    assign(:gazooies, [
      Gazooie.create!(
        :content => "",
        :user => nil
      ),
      Gazooie.create!(
        :content => "",
        :user => nil
      )
    ])
  end

  it "renders a list of gazooies" do
    render
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
