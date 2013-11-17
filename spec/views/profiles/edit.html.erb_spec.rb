require 'spec_helper'

describe "profiles/edit" do
  before(:each) do
    @profile = assign(:profile, stub_model(Profile,
      :first_name => "MyString",
      :last_name => "MyString",
      :age => 1
    ))
  end

  it "renders the edit profile form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", profile_path(@profile), "post" do
      assert_select "input#profile_first_name[name=?]", "profile[first_name]"
      assert_select "input#profile_last_name[name=?]", "profile[last_name]"
      assert_select "input#profile_age[name=?]", "profile[age]"
    end
  end
end
