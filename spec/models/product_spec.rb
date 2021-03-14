# == Schema Information
#
# Table name: products
#
#  id             :bigint           not null, primary key
#  existencia     :integer
#  gondola        :string
#  iva            :integer
#  nombre         :string
#  p_costo        :decimal(8, 2)
#  p_minimo       :decimal(8, 2)
#  p_venta        :decimal(8, 2)
#  slug           :string
#  total_costo    :decimal(8, 2)
#  v_precio_venta :decimal(8, 2)
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  user_id        :bigint
#
# Indexes
#
#  index_products_on_slug     (slug) UNIQUE
#  index_products_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
require 'rails_helper'

RSpec.describe Product, type: :model do
  it {should belong_to :user}
  it {should have_many :inventories}
  it {should have_many :sales}

  # it "validar que se cree un producto correctamente." do
  #   user = FactoryBot.create(:user)
  #   product = FactoryBot.create(:product)
  #
  # end
end
