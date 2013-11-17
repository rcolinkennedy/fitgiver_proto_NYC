require 'spec_helper'

describe "settings/show" do
  before(:each) do
    @setting = assign(:setting, stub_model(Setting,
      :daily_email_updates => false,
      :sharing_default => false,
      :default_share_to_twitter => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/false/)
    rendered.should match(/false/)
    rendered.should match(/false/)
  end
end
