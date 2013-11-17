require 'spec_helper'

describe "profiles/new" do
  before(:each) do
    assign(:profile, stub_model(Profile,
      :first_name => "MyString",
      :last_name => "MyString",
      :age => 1
    ).as_new_record)
  end

  it "renders new profile form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", profiles_path, "post" do
      assert_select "input#profile_first_name[name=?]", "profile[first_name]"
      assert_select "input#profile_last_name[name=?]", "profile[last_name]"
      assert_select "input#profile_age[name=?]", "profile[age]"
    end
  end
end
