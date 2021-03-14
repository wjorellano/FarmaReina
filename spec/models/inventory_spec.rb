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
require 'rails_helper'

RSpec.describe Inventory, type: :model do
  it { should belong_to :product}
  it {should belong_to :group}
end
