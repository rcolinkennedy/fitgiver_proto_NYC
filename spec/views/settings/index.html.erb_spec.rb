require 'spec_helper'

describe "settings/index" do
  before(:each) do
    assign(:settings, [
      stub_model(Setting,
        :daily_email_updates => false,
        :sharing_default => false,
        :default_share_to_twitter => false
      ),
      stub_model(Setting,
        :daily_email_updates => false,
        :sharing_default => false,
        :default_share_to_twitter => false
      )
    ])
  end

  it "renders a list of settings" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
