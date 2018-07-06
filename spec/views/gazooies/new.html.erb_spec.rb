require 'rails_helper'

RSpec.describe "gazooies/new", type: :view do
  before(:each) do
    assign(:gazooie, Gazooie.new(
      :content => "",
      :user => nil
    ))
  end

  it "renders new gazooie form" do
    render

    assert_select "form[action=?][method=?]", gazooies_path, "post" do

      assert_select "input[name=?]", "gazooie[content]"

      assert_select "input[name=?]", "gazooie[user_id]"
    end
  end
end
