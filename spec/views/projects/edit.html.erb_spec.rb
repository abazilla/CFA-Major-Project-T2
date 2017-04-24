require 'rails_helper'

RSpec.describe "projects/edit", type: :view do
  before(:each) do
    @project = assign(:project, Project.create!(
      :title => "MyString",
      :pitch => "MyText",
      :request_amount => 1,
      :funded_amount => 1,
      :funded => false,
      :user => nil,
      :next_project_funded => ""
    ))
  end

  xit "renders the edit project form" do
    render

    assert_select "form[action=?][method=?]", project_path(@project), "post" do

      assert_select "input#project_title[name=?]", "project[title]"

      assert_select "textarea#project_pitch[name=?]", "project[pitch]"

      assert_select "input#project_request_amount[name=?]", "project[request_amount]"

      assert_select "input#project_funded_amount[name=?]", "project[funded_amount]"

      assert_select "input#project_funded[name=?]", "project[funded]"

      assert_select "input#project_user_id[name=?]", "project[user_id]"

      assert_select "input#project_next_project_funded[name=?]", "project[next_project_funded]"
    end
  end
end
