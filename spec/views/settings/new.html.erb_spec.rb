require 'spec_helper'

describe "settings/new" do
  before(:each) do
    assign(:setting, stub_model(Setting,
      :daily_email_updates => false,
      :sharing_default => false,
      :default_share_to_twitter => false
    ).as_new_record)
  end

  it "renders new setting form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", settings_path, "post" do
      assert_select "input#setting_daily_email_updates[name=?]", "setting[daily_email_updates]"
      assert_select "input#setting_sharing_default[name=?]", "setting[sharing_default]"
      assert_select "input#setting_default_share_to_twitter[name=?]", "setting[default_share_to_twitter]"
    end
  end
end
