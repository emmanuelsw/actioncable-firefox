class ProductJob < ApplicationJob
  queue_as :default

  def perform(product)
    ActionCable.server.broadcast "product_channel", product
  end
end
