require 'spec_helper'

describe "presidents/index" do
  before(:each) do
    assign(:presidents, [
      stub_model(President,
        :presidency => "Presidency",
        :president => "President",
        :took_office => "Took Office",
        :left_office => "Left Office",
        :party => "Party",
        :picture => "Picture",
        :state => "State",
        :term => "Term",
        :biography => "MyText"
      ),
      stub_model(President,
        :presidency => "Presidency",
        :president => "President",
        :took_office => "Took Office",
        :left_office => "Left Office",
        :party => "Party",
        :picture => "Picture",
        :state => "State",
        :term => "Term",
        :biography => "MyText"
      )
    ])
  end

  it "renders a list of presidents" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Presidency".to_s, :count => 2
    assert_select "tr>td", :text => "President".to_s, :count => 2
    assert_select "tr>td", :text => "Took Office".to_s, :count => 2
    assert_select "tr>td", :text => "Left Office".to_s, :count => 2
    assert_select "tr>td", :text => "Party".to_s, :count => 2
    assert_select "tr>td", :text => "Picture".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => "Term".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
