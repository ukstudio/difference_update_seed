require 'spec_helper'

using DifferenceUpdateSeed

describe DifferenceUpdateSeed do
  before do
    User.seed(:account) do |u|
      u.account = 'ukstudio'
      u.age     = 27
    end
  end

  describe "insert new record" do
    it { expect(User.count).to eq 1 }
  end

  describe "update exists record" do
    before do
      User.seed(:account) do |u|
        u.account = 'ukstudio'
        u.age     = 28
      end
    end

    it { expect(User.count).to eq 1 }
    it { expect(User.first.age).to eq 28 }
  end
end
