require 'rails_helper'

RSpec.describe "donations/edit", type: :view do
  before(:each) do
    @donation = assign(:donation, Donation.create!(
      :user => nil,
      :project => nil,
      :amount => 1
    ))
  end

  xit "renders the edit donation form" do
    render

    assert_select "form[action=?][method=?]", donation_path(@donation), "post" do

      assert_select "input#donation_user_id[name=?]", "donation[user_id]"

      assert_select "input#donation_project_id[name=?]", "donation[project_id]"

      assert_select "input#donation_amount[name=?]", "donation[amount]"
    end
  end
end
