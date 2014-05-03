require 'spec_helper'

describe "presidents/show" do
  before(:each) do
    @president = assign(:president, stub_model(President,
      :presidentNumber => 1,
      :name => "Name",
      :biography => "MyText",
      :termStart => "Term Start",
      :termEnd => "Term End",
      :partyAffiliation => "Party Affiliation",
      :picture => "Picture",
      :state => "State",
      :term => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Name/)
    rendered.should match(/MyText/)
    rendered.should match(/Term Start/)
    rendered.should match(/Term End/)
    rendered.should match(/Party Affiliation/)
    rendered.should match(/Picture/)
    rendered.should match(/State/)
    rendered.should match(/2/)
  end
end
