require 'rails_helper'

RSpec.describe "gazooies/edit", type: :view do
  before(:each) do
    @gazooie = assign(:gazooie, Gazooie.create!(
      :content => "",
      :user => nil
    ))
  end

  it "renders the edit gazooie form" do
    render

    assert_select "form[action=?][method=?]", gazooie_path(@gazooie), "post" do

      assert_select "input[name=?]", "gazooie[content]"

      assert_select "input[name=?]", "gazooie[user_id]"
    end
  end
end
