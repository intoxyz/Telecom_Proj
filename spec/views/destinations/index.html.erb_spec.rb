require 'spec_helper'

describe "destinations/index.html.erb" do
  before(:each) do
    assign(:destinations, [
      stub_model(Destination,
        :street => "Street",
        :spot => "Spot"
      ),
      stub_model(Destination,
        :street => "Street",
        :spot => "Spot"
      )
    ])
  end

  it "renders a list of destinations" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Street".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Spot".to_s, :count => 2
  end
end
