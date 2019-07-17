class Sale < ApplicationRecord
  belongs_to :client

  def products
    Product.where(id: product_ids)
  end

  def parsed_created_at
    created_at.strftime('%d/%m/%Y')
  end

  def subtotal
    products.sum(:unit_price)
  end

  def iva
    subtotal * 0.19
  end

  def total
    subtotal + iva
  end

end
