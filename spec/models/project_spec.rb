require 'rails_helper'

RSpec.describe Project, type: :model do
  it "project name requires at least 2 characters" do
    user = User.create!(:id => "1", :email =>"nick@nick.com", :password =>"abc123")
    project = Project.create(:title => "a", :user_id => "1")
    expect(project).to_not be_valid
  end

  it "project name requires at least 2 characters" do
    user = User.create!(:id => "1", :email =>"nick@nick.com", :password =>"abc123")
    project = Project.create(:title => "Test Project", :user_id => "1")
    expect(project).to be_valid
  end
end