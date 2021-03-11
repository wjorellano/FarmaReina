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
class Product < ApplicationRecord
  extend FriendlyId
  friendly_id :nombre, use: :slugged
  belongs_to :user
  has_many :sales

  def to_s
    self.nombre
    #{}"#{self.nombre}"  + " "  +  "#{self.p_venta}"
  end

end
