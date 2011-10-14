require 'spec_helper'

describe "destinations/new.html.erb" do
  before(:each) do
    assign(:destination, stub_model(Destination,
      :street => "MyString",
      :spot => "MyString"
    ).as_new_record)
  end

  it "renders new destination form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => destinations_path, :method => "post" do
      assert_select "input#destination_street", :name => "destination[street]"
      assert_select "input#destination_spot", :name => "destination[spot]"
    end
  end
end
