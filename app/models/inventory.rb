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
class Inventory < ApplicationRecord
  belongs_to :product
  belongs_to :group

  validates :cantidad, numericality: true
  before_save :calcular_valor_producto
  #before_save :total_inventario

  def calcular_valor_producto
    self.producto_total = self.cantidad * product.p_venta
  end


end
