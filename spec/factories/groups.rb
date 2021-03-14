# == Schema Information
#
# Table name: groups
#
#  id         :bigint           not null, primary key
#  nombre     :string
#  slug       :string
#  sub_total  :decimal(, )      default(0.0)
#  total      :decimal(, )      default(0.0)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :bigint
#
# Indexes
#
#  index_groups_on_slug     (slug) UNIQUE
#  index_groups_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
FactoryBot.define do
  factory :group do
    'nombre { "MyString" }'
    association :user, factory: :user
  end
end
