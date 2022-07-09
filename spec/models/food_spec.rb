require 'rails_helper'

RSpec.describe Food, type: :model do
  subject do
    User.create(name: 'test', email: 'nico@example.com', password: '123456')
  end

  before { subject.save }

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end
end
