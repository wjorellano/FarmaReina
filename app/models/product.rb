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

  validates :nombre, uniqueness: true, presence: true

  belongs_to :user
  has_many :sales
  has_many :inventories

  # after_save :ganancias


  def to_s
    self.nombre
  end

  # def ganancias
  #   self.p_venta = (self.p_costo * self.iva) / 100
  # end

end
