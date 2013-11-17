require 'spec_helper'

describe "settings/edit" do
  before(:each) do
    @setting = assign(:setting, stub_model(Setting,
      :daily_email_updates => false,
      :sharing_default => false,
      :default_share_to_twitter => false
    ))
  end

  it "renders the edit setting form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", setting_path(@setting), "post" do
      assert_select "input#setting_daily_email_updates[name=?]", "setting[daily_email_updates]"
      assert_select "input#setting_sharing_default[name=?]", "setting[sharing_default]"
      assert_select "input#setting_default_share_to_twitter[name=?]", "setting[default_share_to_twitter]"
    end
  end
end
