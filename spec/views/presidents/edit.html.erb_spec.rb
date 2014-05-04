require 'spec_helper'

describe "presidents/edit" do
  before(:each) do
    @president = assign(:president, stub_model(President,
      :presidency => "MyString",
      :president => "MyString",
      :took_office => "MyString",
      :left_office => "MyString",
      :party => "MyString",
      :picture => "MyString",
      :state => "MyString",
      :term => "MyString",
      :biography => "MyText"
    ))
  end

  it "renders the edit president form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", president_path(@president), "post" do
      assert_select "input#president_presidency[name=?]", "president[presidency]"
      assert_select "input#president_president[name=?]", "president[president]"
      assert_select "input#president_took_office[name=?]", "president[took_office]"
      assert_select "input#president_left_office[name=?]", "president[left_office]"
      assert_select "input#president_party[name=?]", "president[party]"
      assert_select "input#president_picture[name=?]", "president[picture]"
      assert_select "input#president_state[name=?]", "president[state]"
      assert_select "input#president_term[name=?]", "president[term]"
      assert_select "textarea#president_biography[name=?]", "president[biography]"
    end
  end
end
