class Tag
  include Mongoid::Document

  field :tag, type: String

  validates :tag, presence: true
end