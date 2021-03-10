# == Schema Information
#
# Table name: sales
#
#  id         :bigint           not null, primary key
#  cantidad   :integer
#  total      :decimal(, )
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  product_id :bigint
#  user_id    :bigint
#
# Indexes
#
#  index_sales_on_product_id  (product_id)
#  index_sales_on_user_id     (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (product_id => products.id)
#  fk_rails_...  (user_id => users.id)
#
require 'test_helper'

class SaleTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
