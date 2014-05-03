require 'spec_helper'

describe "presidents/index" do
  before(:each) do
    assign(:presidents, [
      stub_model(President,
        :presidentNumber => 1,
        :name => "Name",
        :biography => "MyText",
        :termStart => "Term Start",
        :termEnd => "Term End",
        :partyAffiliation => "Party Affiliation",
        :picture => "Picture",
        :state => "State",
        :term => 2
      ),
      stub_model(President,
        :presidentNumber => 1,
        :name => "Name",
        :biography => "MyText",
        :termStart => "Term Start",
        :termEnd => "Term End",
        :partyAffiliation => "Party Affiliation",
        :picture => "Picture",
        :state => "State",
        :term => 2
      )
    ])
  end

  it "renders a list of presidents" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Term Start".to_s, :count => 2
    assert_select "tr>td", :text => "Term End".to_s, :count => 2
    assert_select "tr>td", :text => "Party Affiliation".to_s, :count => 2
    assert_select "tr>td", :text => "Picture".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
