require 'spec_helper'

describe "presidents/new" do
  before(:each) do
    assign(:president, stub_model(President,
      :presidency => "MyString",
      :president => "MyString",
      :took_office => "MyString",
      :left_office => "MyString",
      :party => "MyString",
      :picture => "MyString",
      :state => "MyString",
      :term => "MyString",
      :biography => "MyText"
    ).as_new_record)
  end

  it "renders new president form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", presidents_path, "post" do
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
