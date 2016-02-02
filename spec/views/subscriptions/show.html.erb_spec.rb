require 'rails_helper'

RSpec.describe "subscriptions/show", type: :view do
  before(:each) do
    @subscription = assign(:subscription, Subscription.create!(
      :user => nil,
      :subscription_name => "Subscription Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Subscription Name/)
  end
end
