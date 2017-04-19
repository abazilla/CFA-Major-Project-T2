require 'rails_helper'

RSpec.describe "donations/index", type: :view do
  before(:each) do
    assign(:donations, [
      Donation.create!(
        :user => nil,
        :project => nil,
        :amount => 2
      ),
      Donation.create!(
        :user => nil,
        :project => nil,
        :amount => 2
      )
    ])
  end

  it "renders a list of donations" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
