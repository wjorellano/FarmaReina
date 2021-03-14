# == Schema Information
#
# Table name: inventories
#
#  id             :bigint           not null, primary key
#  cantidad       :integer
#  inv_total      :decimal(, )
#  producto_total :decimal(, )
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  group_id       :bigint
#  product_id     :bigint
#
# Indexes
#
#  index_inventories_on_group_id    (group_id)
#  index_inventories_on_product_id  (product_id)
#
# Foreign Keys
#
#  fk_rails_...  (group_id => groups.id)
#  fk_rails_...  (product_id => products.id)
#
FactoryBot.define do
  factory :inventory do
    'inv_total { "1000.0" }'
    'cantidad { 3 }'
    association :user, factory: :user
    association :group, factory: :group
    association :product, factory: :product
  end
end
