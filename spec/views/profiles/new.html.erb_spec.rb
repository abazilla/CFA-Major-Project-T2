require 'rails_helper'

RSpec.describe "profiles/new", type: :view do
  before(:each) do
    assign(:profile, Profile.new(
      :user => nil,
      :first_name => "MyString",
      :last_name => "MyString",
      :location => "MyString",
      :bio => "MyText",
      :total_donations => 1
    ))
  end

  xit "renders new profile form" do
    render

    assert_select "form[action=?][method=?]", profiles_path, "post" do

      assert_select "input#profile_user_id[name=?]", "profile[user_id]"

      assert_select "input#profile_first_name[name=?]", "profile[first_name]"

      assert_select "input#profile_last_name[name=?]", "profile[last_name]"

      assert_select "input#profile_location[name=?]", "profile[location]"

      assert_select "textarea#profile_bio[name=?]", "profile[bio]"

      assert_select "input#profile_total_donations[name=?]", "profile[total_donations]"
    end
  end
end
