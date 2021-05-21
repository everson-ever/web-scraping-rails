require 'rails_helper'

RSpec.describe Quote, type: :model do
  let(:quote) { build(:quote) }

  it { is_expected.to validate_presence_of(:quote) }
  it { is_expected.to validate_presence_of(:author) }
  it { is_expected.to validate_presence_of(:author_link) }
  it { is_expected.to validate_presence_of(:tags) }
end