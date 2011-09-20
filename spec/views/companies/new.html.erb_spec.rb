require 'spec_helper'

describe "companies/new.html.erb" do
  before(:each) do
    assign(:company, stub_model(Company,
      :name => "MyString",
      :description => "MyText",
      :hashed_password => "MyString",
      :salt => "MyString"
    ).as_new_record)
  end

  it "renders new company form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => companies_path, :method => "post" do
      assert_select "input#company_name", :name => "company[name]"
      assert_select "textarea#company_description", :name => "company[description]"
      assert_select "input#company_hashed_password", :name => "company[hashed_password]"
      assert_select "input#company_salt", :name => "company[salt]"
    end
  end
end
