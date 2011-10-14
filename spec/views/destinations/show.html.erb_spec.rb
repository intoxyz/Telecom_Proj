require 'spec_helper'

describe "destinations/show.html.erb" do
  before(:each) do
    @destination = assign(:destination, stub_model(Destination,
      :street => "Street",
      :spot => "Spot"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Street/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Spot/)
  end
end
