require 'spec_helper'

describe "presidents/show" do
  before(:each) do
    @president = assign(:president, stub_model(President,
      :presidency => "Presidency",
      :president => "President",
      :took_office => "Took Office",
      :left_office => "Left Office",
      :party => "Party",
      :picture => "Picture",
      :state => "State",
      :term => "Term",
      :biography => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Presidency/)
    rendered.should match(/President/)
    rendered.should match(/Took Office/)
    rendered.should match(/Left Office/)
    rendered.should match(/Party/)
    rendered.should match(/Picture/)
    rendered.should match(/State/)
    rendered.should match(/Term/)
    rendered.should match(/MyText/)
  end
end
