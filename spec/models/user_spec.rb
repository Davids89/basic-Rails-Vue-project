require 'rails_helper'

RSpec.describe User, type: :model do
  it "is not valid without name" do
    user = User.new(name: nil)
    expect(user).to_not be_valid
  end

  it "is valid with a name" do
    user = User.new(name: Faker::DragonBall.character)
    expect(user).to be_valid
  end
end