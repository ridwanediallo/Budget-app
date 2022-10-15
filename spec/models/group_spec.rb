require 'rails_helper'

RSpec.describe Group, type: :model do
  subject do
    described_class.new(name: 'Group', icon: 'profile-img.jpg', description: 'description')
  end

  describe 'Validations' do
    it 'is valid with valid attributes' do
      expect(subject).to be_valid
    end

    it 'is not valid without a name' do
      subject.name = nil
      expect(subject).to_not be_valid
    end

    it 'is not valid with a name' do
      subject.name = 'Group'
      expect(subject).to be_valid
    end
  end
end
