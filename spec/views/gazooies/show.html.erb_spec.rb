require 'rails_helper'

RSpec.describe "gazooies/show", type: :view do
  before(:each) do
    @gazooie = assign(:gazooie, Gazooie.create!(
      :content => "",
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
