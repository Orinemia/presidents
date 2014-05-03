require 'spec_helper'

describe "presidents/edit" do
  before(:each) do
    @president = assign(:president, stub_model(President,
      :presidentNumber => 1,
      :name => "MyString",
      :biography => "MyText",
      :termStart => "MyString",
      :termEnd => "MyString",
      :partyAffiliation => "MyString",
      :picture => "MyString",
      :state => "MyString",
      :term => 1
    ))
  end

  it "renders the edit president form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", president_path(@president), "post" do
      assert_select "input#president_presidentNumber[name=?]", "president[presidentNumber]"
      assert_select "input#president_name[name=?]", "president[name]"
      assert_select "textarea#president_biography[name=?]", "president[biography]"
      assert_select "input#president_termStart[name=?]", "president[termStart]"
      assert_select "input#president_termEnd[name=?]", "president[termEnd]"
      assert_select "input#president_partyAffiliation[name=?]", "president[partyAffiliation]"
      assert_select "input#president_picture[name=?]", "president[picture]"
      assert_select "input#president_state[name=?]", "president[state]"
      assert_select "input#president_term[name=?]", "president[term]"
    end
  end
end
