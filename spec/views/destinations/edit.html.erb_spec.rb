require 'spec_helper'

describe "destinations/edit.html.erb" do
  before(:each) do
    @destination = assign(:destination, stub_model(Destination,
      :street => "MyString",
      :spot => "MyString"
    ))
  end

  it "renders the edit destination form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => destinations_path(@destination), :method => "post" do
      assert_select "input#destination_street", :name => "destination[street]"
      assert_select "input#destination_spot", :name => "destination[spot]"
    end
  end
end
