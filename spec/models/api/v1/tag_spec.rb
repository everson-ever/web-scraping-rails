require 'rails_helper'

RSpec.describe Tag, type: :model do
  let(:tag) { build(:tag) }

  it { is_expected.to validate_presence_of(:tag) }
end