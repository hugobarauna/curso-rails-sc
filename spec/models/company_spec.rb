require 'spec_helper'

describe Company do
  describe ".authenticate" do
    context "with valid credentials" do
      it "returns the company" do
        Factory(:company, :name => "PlataformaTec",
                :username => "plataformatec", :password => "123456")

        company = Company.authenticate("plataformatec","123456")
        company.should be_kind_of(Company)
      end
    end

    context "with invalid credentials" do
      it "returns false" do
        Factory(:company, :name => "PlataformaTec",
                :username => "plataformatec", :password => "123456")

        company = Company.authenticate("plataformatec", "blabla")
        company.should be_false
      end
    end

  end
end
