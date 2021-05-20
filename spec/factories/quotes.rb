FactoryBot.define do
  factory :quote do
    quote { 'quote' }
    author { 'author' }
    authot_link { 'author_link' }
    tags { [] }
  end
end