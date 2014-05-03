require 'spec_helper'

describe "presidents/new" do
  before(:each) do
    assign(:president, stub_model(President,
      :presidentNumber => 1,
      :name => "MyString",
      :biography => "MyText",
      :termStart => "MyString",
      :termEnd => "MyString",
      :partyAffiliation => "MyString",
      :picture => "MyString",
      :state => "MyString",
      :term => 1
    ).as_new_record)
  end

  it "renders new president form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", presidents_path, "post" do
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
