require 'rails_helper'

RSpec.describe "projects/index", type: :view do
  before(:each) do
    assign(:projects, [
      Project.create!(
        :title => "Title",
        :pitch => "MyText",
        :request_amount => 2,
        :funded_amount => 3,
        :funded => false,
        :user => nil,
        :next_project_funded => ""
      ),
      Project.create!(
        :title => "Title",
        :pitch => "MyText",
        :request_amount => 2,
        :funded_amount => 3,
        :funded => false,
        :user => nil,
        :next_project_funded => ""
      )
    ])
  end

  xit "renders a list of projects" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
