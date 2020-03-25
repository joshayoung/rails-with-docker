require 'rails_helper'

RSpec.describe User, type: :model do
  describe "#name" do
    it "returns the correct name" do
      user = User.new

      expect(user.name).to eq("Jim Smith")
    end
  end
end
