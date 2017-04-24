require 'rails_helper'

RSpec.describe "donations/show", type: :view do
  before(:each) do
    @donation = assign(:donation, Donation.create!(
      :user => nil,
      :project => nil,
      :amount => 2
    ))
  end

  xit "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/2/)
  end
end
