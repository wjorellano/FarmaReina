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
class Sale < ApplicationRecord
  # Relaciones
  belongs_to :product
  belongs_to :user

  # Validaciones
  validates :cantidad, inclusion: { in: 1..10 }

  # Metodos
  before_save :almacenar
  after_save :descontar
  after_destroy :devolucion


  def almacenar
    self.total = self.cantidad * product.p_venta
  end

  def descontar
    if self.cantidad < product.existencia
       product.existencia -= self.cantidad
       product.save
    end
  end

  def devolucion
    product.existencia += self.cantidad
    product.save
  end

  
end
