class Order < ActiveRecord::Base
  has_many :order_items, autosave: true, dependent: :destroy
  accepts_nested_attributes_for :order_items, reject_if: :all_blank, allow_destroy: true

  def get_total_price
    total = 0
    self.order_items.each { |order_item| total += (order_item.order_price * order_item.quantity)}
    total
  end

end
