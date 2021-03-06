require 'spec_helper'

describe "EditUsers" do

	before(:each) do
  	@user = Factory(:user)
	end
	
	it "edits user" do
		pending "Capybara cannot find elements"
		visit edit_user_path(@user)
		fill_in "Name", :with => "Harald Ringvold"
		fill_in "Username", :with => "harald"
		fill_in "Email", :with => "harald@mjf.nu"
		fill_in "Password", :with => "testlol"
		fill_in "Password confirmation", :with => "testlol"
		click_button "Update User"
		current_path.should eq users_path()
	end
end