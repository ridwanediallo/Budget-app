require 'rails_helper'

RSpec.describe User, :type => :model do
  subject {
         described_class.new(name: 'Ridwan', password: "password", email: "ridrid@gmail.com")
  }

  describe "Validations" do
    it "is valid with valid attributes" do
      expect(subject).to be_valid
    end

    it "is not valid without a password" do
      subject.password = nil
      expect(subject).to_not be_valid
    end

    it "is not valid without an email" do
      subject.email = nil
      expect(subject).to_not be_valid
    end

    it "is not valid without an name" do
      subject.name = nil
      expect(subject).to_not be_valid
    end
  end
end
