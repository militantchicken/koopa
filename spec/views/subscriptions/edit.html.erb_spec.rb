require 'rails_helper'

RSpec.describe "subscriptions/edit", type: :view do
  before(:each) do
    @subscription = assign(:subscription, Subscription.create!(
      :user => nil,
      :subscription_name => "MyString"
    ))
  end

  it "renders the edit subscription form" do
    render

    assert_select "form[action=?][method=?]", subscription_path(@subscription), "post" do

      assert_select "input#subscription_user_id[name=?]", "subscription[user_id]"

      assert_select "input#subscription_subscription_name[name=?]", "subscription[subscription_name]"
    end
  end
end
